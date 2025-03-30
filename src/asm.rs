use std::io::Write;
use std::error::Error;
use indoc::indoc;

use crate::chunk_list::ChunkList;
use crate::ir::IR::{self, *};

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
            LoopStart { .. } => {
                writeln!(writer, "o{current_label:x}:")?;
                writeln!(writer, "cmp byte [tape + r8], 0")?;
                writeln!(writer, "jz c{current_label:x}")?;
                label_stack.push(current_label);
                current_label += 1;
            }
            LoopEnd { .. } => {
                let Some(opening_label) = label_stack.pop() else { unreachable!() };
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
