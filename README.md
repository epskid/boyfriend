# boyfriend
an optimizing brainf*ck compiler, and my first venture into compiler-assisted development (which involves installing `tmux`, growing a neckbeard, and gaining a healthy hundred pounds).

>[!NOTE]
>only tested on linux x86_64. may work on inferior operating systems with some tweaks. porting to different architectures may require more effort.

## installation
the easiest way is `cargo install --path .`

## implementations
there are a few different ways to use this compiler. the two main categories are `moonshine` and `cranelift`. in both, code passes through a set of basic optimizations before final compilation.

### implementations - moonshine
the moonshine implementation can execute code in two ways:
 1. compiling code into assembly, then building and linking (the user can optionally link to `libc` for hypothetical marginal performance gains)
 2. as an interpreter
the moonshine implementation is written completely by hand, with no external libraries assisting with codegen and interpretation.

#### implementations - moonshine - usage
the moonshine cli is accessed through `boyfriend moonshine`. you can emit an executable by just passing a path, eg.:
>[!NOTE]
>to generate an executable `fasm` and `ld` are required

```bash
$ boyfriend moonshine tests/mandelbrot/mandelbrot.bf
```
this will (hopefully) create an executable at the path `tests/mandelbrot/mandelbrot`.
>[!TIP]
>you can clean up generated artifacts with `boyfriend clean` -- just provide a path to any of the files involved in compilation, eg.:
>```bash
>$ boyfriend clean tests/mandelbrot/mandelbrot.bf
>```
>cleans all artifacts (.o, .asm, and elf)

the interpreter directly executes code, generating no artifacts, use it like this:
```bash
$ boyfriend moonshine -i tests/mandelbrot/mandelbrot.bf
```

### implementations - cranelift
[cranelift](https://cranelift.dev/) is a compiler backend (think LLVM) written in rust. you can enable it by passing `--features cranelift` during compilation.
>[!NOTE]
>this one is mainly an experiment. someone more skilled than me could definitely optimize this by playing to cranelift's strengths by splitting loops into functions or something.

#### implementations - cranelift - usage
you can use the cli with `boyfriend cranelift`. to emit an executable, it's the same as `moonshine`:
```bash
$ boyfriend cranelift tests/mandelbrot/mandelbrot.bf
```
**THIS BEHAVIOUR DOES NOT WORK CURRENTLY, IT IS DEFINITELY A WORK IN PROGRESS -- LINKER ERRORS AND MYSTERIOUS SEGFAULTS ARE TO BE EXPECTED**
<br />
the much-more-stable jit interface functions similarly to the interpreter:
```bash
$ boyfriend moonshine --jit tests/mandelbrot/mandelbrot.bf
```

## credit
- [this gist](https://gist.github.com/roachhd/dce54bec8ba55fb17d3a) helped me undrestand the basics of brainf*ck, which led me to implementing various optimizable "idioms", eg. `[-]` means zero the current cell)
- [this video](https://www.youtube.com/watch?v=Mt3SqU3ge4o) on compilers was a big inspiration
- [this repo](https://github.com/mitxela/bf-tic-tac-toe) for inspiring the `+[->+]-` idiom
