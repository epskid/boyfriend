use std::io::{Read, Write};
use std::error::Error;
use memchr::{memchr, memrchr};

use crate::chunk_list::ChunkList;
use crate::ir::IR::{self, *};

pub fn interpret(ir: ChunkList<IR>) -> Result<(), Box<dyn Error>> {
    let insts = ir.into_iter().collect::<Vec<IR>>();
    let mut memory = vec![0u8; 0x10000];
    let mut ptr: usize = 0;
    let mut ip = 0;

    while ip < insts.len() {
        let inst = insts[ip];

        match inst {
            Shift { amount } => {
                ptr = ptr.overflowing_add_signed(amount).0 & 0xffff;
            }
            Arithmetic { amount } => {
                memory[ptr] = memory[ptr].overflowing_add_signed(amount).0;
            }
            LoopStart { end_index } => if memory[ptr] == 0 {
                ip = end_index;
            }
            LoopEnd { start_index } => if memory[ptr] != 0 {
                ip = start_index;
            }
            Input => {
                memory[ptr] = std::io::stdin().bytes().next().and_then(|r| r.ok()).ok_or("failed to read stdin")?;
            }
            Output => {
                std::io::stdout().write_all(&[memory[ptr]])?;
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
