use std::fs::{read_to_string, File};
use std::path::PathBuf;
use std::error::Error;
use std::io::{BufWriter, Write};
use std::process::{Command, exit};

use clap::{Parser, Subcommand};

mod ir;
mod chunk_list;

#[derive(Parser)]
#[clap(version, about, long_about = None)]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    /// compile a brainf*ck file into an executable ELF64 file (requires fasm and ld)
    Compile { path: PathBuf },

    /// compile a brainf*ck file into intermediate representation, then interpret it
    Run { path: PathBuf },
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

fn entry() -> Result<(), Box<dyn Error>> {
    let cli = Cli::parse();
    eprintln!("? {} -- {} (v{})", env!("CARGO_PKG_NAME"), env!("CARGO_PKG_DESCRIPTION"), env!("CARGO_PKG_VERSION"));
    let path = match cli.command {
        Commands::Compile { ref path } => path,
        Commands::Run { ref path } => path,
    };
    let code = read_to_string(&path)?;

    eprintln!("* beginning compilation of {}", path.display());

    let mut ir = ir::compile(code);
    ir::optimize_pass_1(&mut ir);
    ir::optimize_pass_2(&mut ir);

    match cli.command {
        Commands::Compile { .. } => {
            let mut asm_path = path.clone();
            asm_path.set_extension("asm");

            let mut out = BufWriter::new(File::create(&asm_path)?);

            ir::to_asm(ir, &mut out)?;

            eprintln!("* compilation success, writing assembly to {}", asm_path.display());

            out.flush()?;

            eprintln!("* building object with fasm");

            let mut object_path = asm_path.clone();
            object_path.set_extension("o");

            run_command(
                Command::new("fasm")
                    .args(["-m", "64000"])
                    .arg(&asm_path)
                    .arg(&object_path))?;

            eprintln!("* linking binary with ld");

            let mut binary_path = path.clone();
            binary_path.set_extension("");

            run_command(
                Command::new("ld")
                    .arg("-o")
                    .arg(&binary_path)
                    .arg(&object_path))?;
        }
        Commands::Run { .. } => {
            ir::interpret(ir)?;
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
