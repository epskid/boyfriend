use std::fs::{File, read_to_string};
use std::io::{BufWriter, Write};
use std::path::PathBuf;
use std::process::{Command, exit};

use anyhow::bail;
use clap::{Parser, Subcommand};

mod asm;
mod chunk_list;
mod interpret;
mod ir;

#[cfg(feature = "cranelift")]
mod cranelift;

#[derive(Parser)]
#[clap(version, about, subcommand_required = true, long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// Homebrew implementation of the compiler -- interpreter and assembly generator
    #[command(
        after_long_help = "Compilation (emitting an executable) requires `fasm` and `ld` to be installed"
    )]
    Moonshine {
        /// Don't output any artifacts -- interpret the generated intermediate representation
        #[arg(short, long, conflicts_with = "link_libc")]
        interpret: bool,

        /// Link to libc when creating the ELF binary
        /// This lets the compiled executable use `memchr` function for marginal performance gains
        #[arg(long, verbatim_doc_comment, conflicts_with = "interpret")]
        link_libc: bool,

        /// Path to the brainf*ck file to compile/interpret (compile by default)
        path: PathBuf,
    },

    #[cfg(feature = "cranelift")]
    /// Cranelift backend for `boyfriend` -- includes a JIT and AOT compiler
    #[command(after_long_help = "AOT compilation requires `ld` to be installed")]
    Cranelift {
        #[arg(long)]
        /// Enable JIT compilation
        jit: bool,

        /// Path to the brainf*ck file to AOT/JIT (AOT by default)
        path: PathBuf,
    },

    /// Clean up artifacts generated when using `boyfriend compile`
    Clean {
        /// Path to any of the artifacts generated, or the brainf*ck file
        path: PathBuf,
    },
}

fn run_command(cmd: &mut std::process::Command) -> std::io::Result<()> {
    let status = cmd.output()?;
    let program = cmd.get_program().to_string_lossy();

    if !status.status.success() {
        eprintln!("! {program} exited with {}", status.status);
        eprintln!("! this should not have happened -- file a bug report if you want");

        if !status.stdout.is_empty() {
            eprintln!(
                "? {program} stdout:\n{}",
                String::from_utf8_lossy(status.stdout.as_slice())
            );
        }
        if !status.stderr.is_empty() {
            eprintln!(
                "? {program} stderr:\n{}",
                String::from_utf8_lossy(status.stderr.as_slice())
            );
        }

        eprintln!("! {program} was unsuccessful, exiting");
        exit(1);
    }

    Ok(())
}

fn moonshine_impl(interpret: bool, link_libc: bool, path: PathBuf) -> anyhow::Result<()> {
    let code = read_to_string(&path)?;

    ir::verify(&code)?;
    let mut ir = ir::compile(code);
    ir::collapse_repeated(&mut ir);
    ir::collapse_idioms(&mut ir);

    if interpret {
        ir::match_brackets(&mut ir)?;
    }

    if interpret {
        interpret::interpret(ir)?;
    } else {
        let mut asm_path = path.clone();
        asm_path.set_extension("asm");

        let mut out = BufWriter::new(File::create(&asm_path)?);

        asm::to_asm(link_libc, ir, &mut out)?;

        eprintln!(
            "* compilation success, writing assembly to {}",
            asm_path.display()
        );

        out.flush()?;

        eprintln!("* building object with fasm");

        let mut object_path = path.clone();
        object_path.set_extension("o");

        run_command(
            Command::new("fasm")
                .args(["-m", "64000"])
                .arg(&asm_path)
                .arg(&object_path),
        )?;

        eprintln!("* linking binary with ld");

        let mut linker_command = Command::new("ld");

        let mut binary_path = path.clone();
        binary_path.set_extension("");

        if link_libc {
            linker_command.args(["-dynamic-linker", "/lib64/ld-linux-x86-64.so.2", "-lc"]);
        }

        run_command(linker_command.arg("-o").arg(&binary_path).arg(&object_path))?;
    }

    Ok(())
}

#[cfg(feature = "cranelift")]
fn cranelift_impl(jit: bool, path: PathBuf) -> anyhow::Result<()> {
    let code = read_to_string(&path)?;

    ir::verify(&code)?;
    let mut ir = ir::compile(code);
    ir::collapse_repeated(&mut ir);
    if !jit {
        ir::collapse_idioms(&mut ir);
    }

    if jit {
        cranelift::jit(ir)?;
    } else {
        let object = cranelift::aot(ir)?;

        let mut object_path = path.clone();
        object_path.set_extension("o");

        let object_file = File::create(&object_path)?;
        object.emit(&mut cranelift::object::write::StreamingBuffer::new(
            object_file,
        ))?;

        let mut binary_path = path.clone();
        binary_path.set_extension("");

        run_command(
            Command::new("ld")
                .args(["-dynamic-linker", "/lib64/ld-linux-x86-64.so.2", "-lc"])
                .arg("-o")
                .arg(&binary_path)
                .arg(&object_path),
        )?;
    }

    Ok(())
}

fn entry() -> anyhow::Result<()> {
    let cli = Cli::parse();
    match cli.command {
        Commands::Moonshine {
            interpret,
            link_libc,
            path,
        } => moonshine_impl(interpret, link_libc, path)?,
        #[cfg(feature = "cranelift")]
        Commands::Cranelift { jit, path } => cranelift_impl(jit, path)?,
        Commands::Clean { path } => {
            let mut asm_path = path.clone();
            asm_path.set_extension("asm");
            let mut object_path = path.clone();
            object_path.set_extension("o");
            let mut binary_path = path.clone();
            binary_path.set_extension("");
            eprintln!(
                "* this operation will attempt to remove the following files: `{}`, `{}`, and `{}`.",
                asm_path.display(),
                object_path.display(),
                binary_path.display()
            );
            eprint!("? continue [y/N] ");
            std::io::stderr().flush()?;

            let mut continue_buf = String::new();
            std::io::stdin().read_line(&mut continue_buf)?;
            if let Some('y') = continue_buf.to_lowercase().chars().next() {
                std::fs::remove_file(object_path)?;
                std::fs::remove_file(binary_path)?;

                if let Err(err) = std::fs::remove_file(&asm_path) {
                    eprintln!(
                        "! warning: failed to remove assembly file at `{}`: {err}",
                        asm_path.display()
                    );
                }
            } else {
                bail!("operation aborted by user");
            }
        }
    }

    Ok(())
}

fn main() {
    if let Err(err) = entry() {
        let msg = format!("! fatal error: {err:?}").to_lowercase();
        println!("{msg}");
        exit(1);
    }
}
