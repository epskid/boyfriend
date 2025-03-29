use std::io::{Read, Write};
use std::error::Error;
use indoc::indoc;
use memchr::{memchr, memrchr};

use crate::chunk_list::ChunkList;

#[derive(Clone, Copy)]
pub enum IR {
    // brainf*ck instructions

    /// > or <
    Shift {
        amount: isize,
    },
    /// + or -
    Arithmetic {
        amount: i8,
    },
    /// [
    LoopStart,
    /// ]
    LoopEnd,
    /// ,
    Input,
    /// .
    Output,

    // idioms

    /// [-]
    Zero,
    /// +++++[>++++<-]
    Multiply {
        amount: i8,
        output_offset: isize,
    },
    /// +[>+<-]
    Move {
        output_offset: isize,
    },
    /// +[->+]-
    AnchorRight,
    /// +[-<+]-
    AnchorLeft,
}

use IR::*;

/// compile brainf*ck into the intermediate representation (IR)
pub fn compile(code: String) -> ChunkList<IR> {
    let mut ir = Vec::new();

    for inst in code.chars() {
        match inst {
            '>' => ir.push(IR::Shift { amount: 1 }),
            '<' => ir.push(IR::Shift { amount: -1 }),
            '+' => ir.push(IR::Arithmetic { amount: 1 }),
            '-' => ir.push(IR::Arithmetic { amount: -1 }),
            '[' => ir.push(IR::LoopStart),
            ']' => ir.push(IR::LoopEnd),
            ',' => ir.push(IR::Input),
            '.' => ir.push(IR::Output),
            _comment => {}
        }
    }

    ChunkList::new(ir, 2048)
}

/// collapse repeated shift & arithmetic instructions
pub fn optimize_pass_1(ir: &mut ChunkList<IR>) {
    eprintln!("* optimization pass 1");

    let mut pruned = 0;
    let mut idx = 0;
    let mut to_prune = Vec::with_capacity(256);
    while idx < ir.len() {
        if (idx + 1) < ir.len() {
            let next = ir[idx + 1];
            match (&mut ir[idx], next) {
                (Shift { amount: amt1 }, Shift { amount: amt2 }) => {
                    *amt1 += amt2;

                    to_prune.push(idx + 1);
                }
                (Arithmetic { amount: amt1 }, Arithmetic { amount: amt2 }) if *amt1 + amt2 < i8::MAX => {
                    *amt1 += amt2;

                    if *amt1 == 0 {
                        to_prune.push(idx);
                    }
                    to_prune.push(idx + 1);
                }
                _ => idx += 1,
            }
        } else {
            break;
        }

        pruned += to_prune.len();
        for prune_idx in to_prune.drain(0..).rev() {
            ir.remove(prune_idx);
        }
    }

    eprintln!("* success, pruned {pruned} instructions");
}

/// collapse idioms
pub fn optimize_pass_2(ir: &mut ChunkList<IR>) {
    eprintln!("* optimization pass 2");

    let mut idx = 0;
    let mut pruned = 0;

    while idx < ir.len() {
        if (idx + 5) < ir.len() {
            match (ir[idx], ir[idx + 1], ir[idx + 2], ir[idx + 3], ir[idx + 4], ir[idx + 5]) {
                (LoopStart, Shift { amount: ofs1 }, Arithmetic { amount: 1 }, Shift { amount: ofs2 }, Arithmetic { amount: -1 }, LoopEnd) if ofs1 == -ofs2 => {
                    ir[idx] = IR::Move {
                        output_offset: ofs1
                    };
                    ir.remove(idx + 5);
                    ir.remove(idx + 4);
                    ir.remove(idx + 3);
                    ir.remove(idx + 2);
                    ir.remove(idx + 1);
                    pruned += 5;
                }
                // TODO: convert Arithmetic { amount: -1 } to Arithmetic { amount: amt2 } or
                // something
                (LoopStart, Shift { amount: ofs1 }, Arithmetic { amount: amt @ 0.. }, Shift { amount: ofs2 }, Arithmetic { amount: -1 }, LoopEnd) if ofs1 == -ofs2 => {
                    ir[idx] = IR::Multiply {
                        amount: amt,
                        output_offset: ofs1
                    };
                    ir.remove(idx + 5);
                    ir.remove(idx + 4);
                    ir.remove(idx + 3);
                    ir.remove(idx + 2);
                    ir.remove(idx + 1);
                    pruned += 5;
                }
                _ => {}
            }
        }
        if (idx + 4) < ir.len() {
            match (ir[idx], ir[idx + 1], ir[idx + 2], ir[idx + 3], ir[idx + 4]) {
                // TODO: implement non-255 anchors
                (LoopStart, Arithmetic { amount: -1 }, Shift { amount: dir @ (1 | -1) }, Arithmetic { amount: 1 }, LoopEnd) => {
                    if dir == 1 {
                        ir[idx] = IR::AnchorRight;
                    } else if dir == -1 {
                        ir[idx] = IR::AnchorLeft;
                    }
                    ir.remove(idx + 4);
                    ir.remove(idx + 3);
                    ir.remove(idx + 2);
                    ir.remove(idx + 1);
                    pruned += 4;
                }
                _ => {}
            }
        }
        if (idx + 2) < ir.len() {
            match (ir[idx], ir[idx + 1], ir[idx + 2]) {
                (LoopStart, Arithmetic { .. }, LoopEnd) => {
                    ir[idx] = IR::Zero;
                    ir.remove(idx + 2);
                    ir.remove(idx + 1);
                    pruned += 2;
                }
                _ => {}
            }
        }

        idx += 1;
    }

    eprintln!("* success, pruned {pruned} instructions");
}

pub fn to_asm(link_libc: bool, ir: ChunkList<IR>, writer: &mut impl Write) -> Result<(), Box<dyn Error>> {
    let mut label_stack = Vec::new();
    let mut current_label = 0;

    writeln!(writer, indoc! {"
        ; compiled by boyfriend -- riir nation!
        format ELF64
        public _start

        section '.bss' writable
        tape rb 65536

        section '.text' executable
        _start:
        xor r8, r8
    "})?;

    for inst in ir {
        match inst {
            Shift { amount: a @ ..0 } => {
                writeln!(writer, "sub r8, {}", a.abs())?;
                writeln!(writer, "and r8, 0xFFFF")?;
            }
            Shift { amount: a @ 0.. } => {
                writeln!(writer, "add r8, {}", a.abs())?;
                writeln!(writer, "and r8, 0xFFFF")?;
            }
            Arithmetic { amount: a @ ..0 } => {
                writeln!(writer, "sub byte [tape + r8], {}", a.abs())?;
            }
            Arithmetic { amount: a @ 0.. } => {
                writeln!(writer, "add byte [tape + r8], {}", a.abs())?;
            }
            LoopStart => {
                writeln!(writer, "o{current_label:x}:")?;
                writeln!(writer, "cmp byte [tape + r8], 0")?;
                writeln!(writer, "jz c{current_label:x}")?;
                label_stack.push(current_label);
                current_label += 1;
            }
            LoopEnd => {
                let opening_label = label_stack.pop().ok_or_else(|| "mismatched closing bracket (no `[` for `]`)")?;
                writeln!(writer, "jmp o{opening_label:x}")?;
                writeln!(writer, "c{opening_label:x}:")?;
            }
            Input => {
                writeln!(writer, "call i")?;
            }
            Output => {
                writeln!(writer, "call o")?;
            }

            // idioms
            Zero => {
                writeln!(writer, "call z")?;
            }
            Multiply { amount, output_offset } => {
                writeln!(writer, "mov r13b, {amount}")?;
                writeln!(writer, "mov r12, {}", output_offset.abs())?;
                writeln!(writer, "call m{}", if output_offset > 0 { "" } else { "s" })?;
            }
            Move { output_offset } => {
                writeln!(writer, "mov r12, {}", output_offset.abs())?;
                writeln!(writer, "call M{}", if output_offset > 0 { "" } else { "s" })?;
            }
            AnchorRight => {
                writeln!(writer, "call r")?;
            }
            AnchorLeft => {
                writeln!(writer, "call l")?;
            }
        }
    }

    writeln!(writer, indoc!{"
        ; exit syscall
        mov rax, 60
        xor rdi, rdi
        syscall

        ; little assembly 'macros' to slim down code

        ; `,` in brainf*ck -- gets one character of user input
        i:
        xor rax, rax
        xor rdi, rdi
        lea rsi, byte [tape + r8]
        mov rdx, 1
        syscall
        ret

        ; `.` in brainf*ck -- outputs the current byte in ascii
        o:
        mov rax, 1
        mov rdi, 1
        lea rsi, byte [tape + r8]
        mov rdx, 1
        syscall
        ret

        ; idioms

        ; zero current byte
        z:
        mov byte [tape + r8], 0
        ret

        ; these last four can go burn in hell

        ; multiply (positive output offset)
        m:
        add r12, r8
        and r12, 0xFFFF
        mov al, r13b
        mul byte [tape + r8]
        add byte [tape + r12], al
        mov byte [tape + r8], 0
        ret

        ; multiply (negative output offset)
        ms:
        mov r14, r8
        sub r14, r12
        and r14, 0xFFFF
        mov al, r13b
        mul byte [tape + r8]
        add byte [tape + r14], al
        mov byte [tape + r8], 0
        ret

        ; move (positive output offset)
        M:
        add r12, r8
        and r12, 0xFFFF
        mov r13b, byte [tape + r8]
        add byte [tape + r12], r13b
        mov byte [tape + r8], 0
        ret

        ; move (negative output offset)
        Ms:
        mov r14, r8
        sub r14, r12
        and r14, 0xFFFF
        mov r13b, byte [tape + r8]
        add byte [tape + r14], r13b
        mov byte [tape + r8], 0
        ret
    "})?;

    if link_libc {
        writeln!(writer, indoc!{"
            extrn memchr
            extrn memrchr

            ; find right anchor (memchr-enabled)
            r:
            call anchor_start
            lea rdi, byte [tape + r8]
            mov rsi, 255
            mov rdx, 0xFFFF
            sub rdx, r8
            call memchr
            cmp rax, 0
            jz r_wrap
            jmp anchor_done
            ret
            r_wrap:
            lea rdi, byte [tape]
            mov rsi, 255
            mov rdx, r8
            call memchr
            cmp rax, 0
            jz halting_problem_solved_100_percent_working_1936
            jmp anchor_done

            ; find left anchor (memrchr-enabled)
            l:
            call anchor_start
            lea rdi, byte [tape]
            mov rsi, 255
            mov rdx, r8
            call memrchr
            cmp rax, 0
            jz l_wrap
            jmp anchor_done
            l_wrap:
            lea rdi, byte [tape + r8]
            mov rsi, 255
            mov rdx, 0xFFFF
            sub rdx, r8
            call memrchr
            cmp rax, 0
            jz halting_problem_solved_100_percent_working_1936
            jmp anchor_done

            ; common code
            anchor_start:
            cmp byte [tape + r8], 0
            jz anchor_short_circuit
            sub byte [tape + r8], 1
            ret

            anchor_short_circuit:
            add rsp, 8
            ret

            anchor_done:
            mov r8, rax
            lea rax, byte [tape]
            sub r8, rax
            mov byte [tape + r8], 0
            ret

            ; solve the halting problem
            halting_problem_solved_100_percent_working_1936:
            mov rax, 1
            mov rdi, 1
            lea rsi, byte [halting_message]
            mov rdx, halting_message_len
            syscall
            mov rax, 60
            mov rdi, 1
            syscall

            section '.data'
            halting_message db '[boyfriend] ! infinite loop detected, exiting', 0xA
            halting_message_len = $-halting_message
        "})?;
    } else {
        writeln!(writer, indoc!{"
            ; find right anchor (no libc)
            r:
            call anchor_start
            r_glide:
            add r8, 1
            and r8, 0xFFFF
            cmp byte [tape + r8], 255
            jne r_glide
            jmp anchor_end

            ; find left anchor (no libc)
            l:
            call anchor_start
            l_glide:
            sub r8, 1
            and r8, 0xFFFF
            cmp byte [tape + r8], 255
            jne l_glide
            jmp anchor_end

            ; common code
            anchor_start:
            cmp byte [tape + r8], 0
            jz anchor_short_circuit
            sub byte [tape + r8], 1
            ret

            anchor_short_circuit:
            add rsp, 8
            ret

            anchor_end:
            mov byte [tape + r8], 0
            ret
        "})?;
    }

    Ok(())
}

pub fn interpret(ir: ChunkList<IR>) -> Result<(), Box<dyn Error>> {
    let insts = ir.into_iter().collect::<Vec<IR>>();
    let mut memory = vec![0u8; 0x10000];
    let mut ptr: usize = 0;
    let mut ip = 0;
    let mut loop_stack = Vec::new();

    'interpret: while ip < insts.len() {
        let inst = insts[ip];

        match inst {
            Shift { amount } => {
                ptr = ptr.overflowing_add_signed(amount).0 & 0xffff;
            }
            Arithmetic { amount } => {
                memory[ptr] = memory[ptr].overflowing_add_signed(amount).0;
            }
            LoopStart => {
                loop_stack.push(ip);

                if memory[ptr] != 0 {
                    ip += 1;
                    continue;
                }

                let mut counter = 1;

                for ipp in (ip + 1).. {
                    match insts[ipp] {
                        LoopStart => counter += 1,
                        LoopEnd => {
                            counter -= 1;

                            if counter == 0 {
                                ip = ipp;
                                continue 'interpret;
                            }
                        }
                        _ => {}
                    }
                }
            }
            LoopEnd => {
                let start_bracket = loop_stack.pop().ok_or_else(|| "mismatched closing bracket (no `[` for `]`)")?;
                if memory[ptr] != 0 {
                    ip = start_bracket;
                    continue;
                }
            }
            Input => {
                memory[ptr] = std::io::stdin().bytes().next().and_then(|r| r.ok()).ok_or_else(|| "failed to read stdin")?;
            }
            Output => {
                std::io::stdout().write(&[memory[ptr]])?;
                std::io::stdout().flush()?;
            }

            // idioms
            Zero => {
                memory[ptr] = 0;
            }
            Multiply { amount, output_offset } => {
                let new_ptr = ptr.overflowing_add_signed(output_offset).0 & 0xffff;
                memory[new_ptr] += memory[ptr].overflowing_mul(amount as u8).0;
                memory[ptr] = 0;
            }
            Move { output_offset } => {
                let new_ptr = ptr.overflowing_add_signed(output_offset).0 & 0xffff;
                memory[new_ptr] += memory[ptr];
                memory[ptr] = 0;
            }
            AnchorRight => {
                if memory[ptr] == 0 {
                    ip += 1;
                    continue;
                }
                memory[ptr] = memory[ptr].overflowing_sub(1).0;
                if let Some(anchor) = memchr(255, &memory[ptr..]).map(|offset| offset + ptr).or_else(|| memchr(255, &memory)) {
                    ptr = anchor;
                    memory[ptr] = 0;
                } else {
                    eprintln!("[boyfriend] ! infinite loop detected, halting");
                    break;
                }
            }
            AnchorLeft => {
                if memory[ptr] == 0 {
                    ip += 1;
                    continue;
                }
                memory[ptr] = memory[ptr].overflowing_sub(1).0;
                if let Some(anchor) = memrchr(255, &memory[..ptr]).or_else(|| memrchr(255, &memory[ptr..]).map(|offset| offset + ptr)) {
                    ptr = anchor;
                    memory[ptr] = 0;
                } else {
                    eprintln!("[boyfriend] ! infinite loop detected, halting");
                    break;
                }
            }
        }

        ip += 1;
    }

    Ok(())
}
