# boyfriend
an optimizing brainf*ck compiler, and my first venture into compiler-assisted development (which involves installing `tmux`, growing a neckbeard, and gaining a healthy hundred pounds).
<br />
this project also required me to dabble in assembly, which i hope to never do again.

## usage
first, compile it like an ordinary rust project (`cargo build --release` or `cargo install --path .` to add it to your `$PATH`).
<br />
after that, it's pretty self explanitory, you can do
```shell
$ path/to/boyfriend compile --interpret [name of file to run]
```
to interpret a file, or
```shell
$ path/to/boyfriend compile [name of file to compile]
```
to compile to a native ELF64 binary (this requires `ld` and `fasm` to be installed).
> [!TIP]
> some cool programs live in the `tests/` directory

## credit
- [this gist](https://gist.github.com/roachhd/dce54bec8ba55fb17d3a) helped me undrestand the basics of brainf*ck, which led me to implementing various optimizable "idioms", eg. `[-]` means zero the current cell)
- [truttle1's video](https://www.youtube.com/watch?v=Mt3SqU3ge4o&t=231s) on compilers was a big inspiration
