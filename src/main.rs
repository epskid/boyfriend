use std::fs::{read_to_string, File};
use std::path::PathBuf;
use std::io::{BufWriter, Write};
use std::process::{Command, exit};

use clap::{Parser, Subcommand};
use anyhow::bail;

mod chunk_list;
mod ir;
mod asm;
mod interpret;

#[derive(Parser)]
#[clap(version, about, subcommand_required = true, long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// Compile a brainf*ck file into an executable ELF64 file (requires fasm and ld)
    Compile {
        /// Don't output any artifacts -- interpret the generated intermediate representation
        #[arg(short, long)]
        interpret: bool,

        /// Link to libc when creating the ELF binary (discarded if --interpret is set)
        /// This lets the compiled executable use `memchr` function for marginal performance gains
        #[arg(long, verbatim_doc_comment)]
        link_libc: bool,

        /// Path to the brainf*ck file to compile/interpret
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
            eprintln!("? {program} stdout:\n{}", String::from_utf8_lossy(status.stdout.as_slice()));
        }
        if !status.stderr.is_empty() {
            eprintln!("? {program} stderr:\n{}", String::from_utf8_lossy(status.stderr.as_slice()));
        }

        eprintln!("! {program} was unsuccessful, exiting");
        exit(1);
    }

    Ok(())
}

fn compile(interpret: bool, link_libc: bool, path: PathBuf) -> anyhow::Result<()> {
    eprintln!("? {} -- {} (v{})", env!("CARGO_PKG_NAME"), env!("CARGO_PKG_DESCRIPTION"), env!("CARGO_PKG_VERSION"));

    let code = read_to_string(&path)?;

    eprintln!("* beginning compilation of {}", path.display());

    let mut ir = ir::compile(code);
    ir::optimize_pass_1(&mut ir);
    ir::optimize_pass_2(&mut ir);
    ir::match_brackets(&mut ir)?;

    if interpret {
        interpret::interpret(ir)?;
    } else {
        let mut asm_path = path.clone();
        asm_path.set_extension("asm");

        let mut out = BufWriter::new(File::create(&asm_path)?);

        asm::to_asm(link_libc, ir, &mut out)?;

        eprintln!("* compilation success, writing assembly to {}", asm_path.display());

        out.flush()?;

        eprintln!("* building object with fasm");

        let mut object_path = path.clone();
        object_path.set_extension("o");

        run_command(
            Command::new("fasm")
                .args(["-m", "64000"])
                .arg(&asm_path)
                .arg(&object_path))?;

        eprintln!("* linking binary with ld");

        let mut linker_command = Command::new("ld");

        let mut binary_path = path.clone();
        binary_path.set_extension("");

        if link_libc {
            linker_command.args(["-dynamic-linker", "/lib64/ld-linux-x86-64.so.2", "-lc"]);
        }

        run_command(linker_command
                .arg("-o")
                .arg(&binary_path)
                .arg(&object_path))?;
    }

    Ok(())
}

fn entry() -> anyhow::Result<()> {
    let cli = Cli::parse();
    match cli.command {
        Commands::Compile { interpret, link_libc, path } => compile(interpret, link_libc, path)?,
        Commands::Clean { path } => {
            let mut asm_path = path.clone();
            asm_path.set_extension("asm");
            let mut object_path = path.clone();
            object_path.set_extension("o");
            let mut binary_path = path.clone();
            binary_path.set_extension("");
            eprintln!("this will remove the following files: `{}`, `{}`, and `{}`.", asm_path.display(), object_path.display(), binary_path.display());
            eprint!("continue? [y/N] ");
            std::io::stderr().flush()?;

            let mut continue_buf = String::new();
            std::io::stdin().read_line(&mut continue_buf)?;
            if let Some('y') = continue_buf.to_lowercase().chars().next() {
                std::fs::remove_file(asm_path)?;
                std::fs::remove_file(object_path)?;
                std::fs::remove_file(binary_path)?;
            } else {
                bail!("operation aborted by user");
            }
        }
    }

    Ok(())
}

fn main() {
    if let Err(err) = entry() {
        let msg = format!("! fatal error: {err}").to_lowercase();
        println!("{msg}");
        exit(1);
    }
}
