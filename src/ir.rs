use anyhow::bail;

use crate::chunk_list::ChunkList;

#[derive(Clone, Copy, PartialEq)]
pub enum IR {
    // brainf*ck instructions
    /// > or <
    Shift { amount: isize },
    /// + or -
    Arithmetic { amount: i8 },
    /// [
    LoopStart { end_index: usize },
    /// ]
    LoopEnd { start_index: usize },
    /// ,
    Input,
    /// .
    Output,

    // idioms
    /// [-]
    Zero,
    /// +++++[>++++<-]
    Multiply { amount: i8, output_offset: isize },
    /// +[>+<-]
    Move { output_offset: isize },
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
            '[' => ir.push(IR::LoopStart {
                end_index: usize::MAX,
            }),
            ']' => ir.push(IR::LoopEnd {
                start_index: usize::MAX,
            }),
            ',' => ir.push(IR::Input),
            '.' => ir.push(IR::Output),
            _comment => {}
        }
    }

    ChunkList::new(ir, 2048)
}

pub fn collapse_repeated(ir: &mut ChunkList<IR>) {
    eprintln!("* collapsing repeated instructions");

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
                (Arithmetic { amount: amt1 }, Arithmetic { amount: amt2 })
                    if *amt1 + amt2 < i8::MAX =>
                {
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

pub fn collapse_idioms(ir: &mut ChunkList<IR>) {
    eprintln!("* collapsing idioms");

    let mut idx = 0;
    let mut pruned = 0;

    while idx < ir.len() {
        if (idx + 5) < ir.len() {
            match (
                ir[idx],
                ir[idx + 1],
                ir[idx + 2],
                ir[idx + 3],
                ir[idx + 4],
                ir[idx + 5],
            ) {
                (
                    LoopStart { .. },
                    Shift { amount: ofs1 },
                    Arithmetic { amount: 1 },
                    Shift { amount: ofs2 },
                    Arithmetic { amount: -1 },
                    LoopEnd { .. },
                ) if ofs1 == -ofs2 => {
                    ir[idx] = IR::Move {
                        output_offset: ofs1,
                    };
                    ir.remove(idx + 5);
                    ir.remove(idx + 4);
                    ir.remove(idx + 3);
                    ir.remove(idx + 2);
                    ir.remove(idx + 1);
                    pruned += 5;
                }
                // TODO: convert Arithmetic { amount: -1 } to Arithmetic { amount: amt2 } or something
                (
                    LoopStart { .. },
                    Shift { amount: ofs1 },
                    Arithmetic { amount: amt @ 0.. },
                    Shift { amount: ofs2 },
                    Arithmetic { amount: -1 },
                    LoopEnd { .. },
                ) if ofs1 == -ofs2 => {
                    ir[idx] = IR::Multiply {
                        amount: amt,
                        output_offset: ofs1,
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
                (
                    LoopStart { .. },
                    Arithmetic { amount: -1 },
                    Shift {
                        amount: dir @ (1 | -1),
                    },
                    Arithmetic { amount: 1 },
                    LoopEnd { .. },
                ) => {
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
            if let (LoopStart { .. }, Arithmetic { .. }, LoopEnd { .. }) =
                (ir[idx], ir[idx + 1], ir[idx + 2])
            {
                ir[idx] = IR::Zero;
                ir.remove(idx + 2);
                ir.remove(idx + 1);
                pruned += 2;
            }
        }

        idx += 1;
    }

    eprintln!("* success, pruned {pruned} instructions");
}

/// match loops (only used by the interpreter)
pub fn match_brackets(ir: &mut ChunkList<IR>) -> anyhow::Result<()> {
    eprintln!("* matching brackets");

    'matching: for idx in 0..ir.len() {
        match ir[idx] {
            LoopStart { .. } => {
                let mut counter = 1;

                for end_index_maybe in idx + 1.. {
                    if end_index_maybe >= ir.len() {
                        break;
                    }

                    match ir[end_index_maybe] {
                        LoopStart { .. } => counter += 1,
                        LoopEnd { .. } => {
                            counter -= 1;

                            if counter == 0 {
                                let LoopStart { ref mut end_index } = ir[idx] else {
                                    unreachable!()
                                };
                                *end_index = end_index_maybe;
                                let LoopEnd {
                                    ref mut start_index,
                                } = ir[end_index_maybe]
                                else {
                                    unreachable!()
                                };
                                *start_index = idx;
                                continue 'matching;
                            }
                        }
                        _ => {}
                    }
                }

                unreachable!()
            }
            LoopEnd {
                start_index: usize::MAX,
            } => {
                unreachable!()
            }
            _ => {}
        }
    }

    Ok(())
}

/// verify brackets
pub fn verify(source: impl AsRef<str>) -> anyhow::Result<()> {
    let mut balanced = 0isize;

    for c in source.as_ref().chars() {
        if c == '[' { balanced += 1; }
        else if c == ']' { balanced -= 1; }
    }

    if balanced > 0 {
        bail!("{} unmatched opening bracket(s) (`[`)", balanced);
    } else if balanced < 0 {
        bail!("{} unmatched closing bracket(s) (`]`)", balanced.abs());
    }

    Ok(())
}
