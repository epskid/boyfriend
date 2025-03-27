; compiled by boyfriend -- riir nation!
format ELF64
public _start

section '.bss' writable
tape rb 65536

section '.text' executable
_start:
xor r8, r8

o0:
cmp byte [tape + r8], 0
jz c0
call o
jmp o0
c0:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
o1:
cmp byte [tape + r8], 0
jz c1
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o2:
cmp byte [tape + r8], 0
jz c2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2
c2:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o3:
cmp byte [tape + r8], 0
jz c3
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 21
and r8, 0xFFFF
call z
add r8, 21
and r8, 0xFFFF
mov r13b, 1
mov r12, 21
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 3
and r8, 0xFFFF
o4:
cmp byte [tape + r8], 0
jz c4
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o4
c4:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o5:
cmp byte [tape + r8], 0
jz c5
sub r8, 2
and r8, 0xFFFF
jmp o5
c5:
add r8, 1
and r8, 0xFFFF
o6:
cmp byte [tape + r8], 0
jz c6
add r8, 1
and r8, 0xFFFF
o7:
cmp byte [tape + r8], 0
jz c7
add r8, 2
and r8, 0xFFFF
jmp o7
c7:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o8:
cmp byte [tape + r8], 0
jz c8
sub r8, 2
and r8, 0xFFFF
jmp o8
c8:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6
c6:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 31
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
add r8, 3
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 3
and r8, 0xFFFF
o9:
cmp byte [tape + r8], 0
jz c9
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o9
c9:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
oa:
cmp byte [tape + r8], 0
jz ca
sub r8, 2
and r8, 0xFFFF
jmp oa
ca:
add r8, 1
and r8, 0xFFFF
ob:
cmp byte [tape + r8], 0
jz cb
add r8, 1
and r8, 0xFFFF
oc:
cmp byte [tape + r8], 0
jz cc
add r8, 2
and r8, 0xFFFF
jmp oc
cc:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
od:
cmp byte [tape + r8], 0
jz cd
sub r8, 2
and r8, 0xFFFF
jmp od
cd:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob
cb:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 31
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 3
add r8, 3
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 3
and r8, 0xFFFF
oe:
cmp byte [tape + r8], 0
jz ce
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp oe
ce:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
of:
cmp byte [tape + r8], 0
jz cf
sub r8, 2
and r8, 0xFFFF
jmp of
cf:
add r8, 1
and r8, 0xFFFF
o10:
cmp byte [tape + r8], 0
jz c10
add r8, 1
and r8, 0xFFFF
o11:
cmp byte [tape + r8], 0
jz c11
add r8, 2
and r8, 0xFFFF
jmp o11
c11:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o12:
cmp byte [tape + r8], 0
jz c12
sub r8, 2
and r8, 0xFFFF
jmp o12
c12:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o10
c10:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 31
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 4
add r8, 3
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 4
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 3
and r8, 0xFFFF
o13:
cmp byte [tape + r8], 0
jz c13
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o13
c13:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o14:
cmp byte [tape + r8], 0
jz c14
sub r8, 2
and r8, 0xFFFF
jmp o14
c14:
add r8, 1
and r8, 0xFFFF
o15:
cmp byte [tape + r8], 0
jz c15
add r8, 1
and r8, 0xFFFF
o16:
cmp byte [tape + r8], 0
jz c16
add r8, 2
and r8, 0xFFFF
jmp o16
c16:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o17:
cmp byte [tape + r8], 0
jz c17
sub r8, 2
and r8, 0xFFFF
jmp o17
c17:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o15
c15:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 31
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 1
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o3
c3:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o18:
cmp byte [tape + r8], 0
jz c18
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o18
c18:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o19:
cmp byte [tape + r8], 0
jz c19
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o19
c19:
sub r8, 2
and r8, 0xFFFF
o1a:
cmp byte [tape + r8], 0
jz c1a
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1b:
cmp byte [tape + r8], 0
jz c1b
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b
c1b:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1c:
cmp byte [tape + r8], 0
jz c1c
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1c
c1c:
sub r8, 1
and r8, 0xFFFF
o1d:
cmp byte [tape + r8], 0
jz c1d
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1d
c1d:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a
c1a:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1e:
cmp byte [tape + r8], 0
jz c1e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e
c1e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1f:
cmp byte [tape + r8], 0
jz c1f
add r8, 29
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
o20:
cmp byte [tape + r8], 0
jz c20
add r8, 20
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20
c20:
sub r8, 8
and r8, 0xFFFF
mov r13b, 1
mov r12, 8
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o21:
cmp byte [tape + r8], 0
jz c21
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o21
c21:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o22:
cmp byte [tape + r8], 0
jz c22
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o22
c22:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o23:
cmp byte [tape + r8], 0
jz c23
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o23
c23:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o24:
cmp byte [tape + r8], 0
jz c24
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
add r8, 31
and r8, 0xFFFF
call z
jmp o24
c24:
sub r8, 29
and r8, 0xFFFF
call z
jmp o1f
c1f:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o25:
cmp byte [tape + r8], 0
jz c25
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25
c25:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o26:
cmp byte [tape + r8], 0
jz c26
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o27:
cmp byte [tape + r8], 0
jz c27
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27
c27:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o28:
cmp byte [tape + r8], 0
jz c28
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o28
c28:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o29:
cmp byte [tape + r8], 0
jz c29
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o29
c29:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o2a:
cmp byte [tape + r8], 0
jz c2a
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2a
c2a:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o2b:
cmp byte [tape + r8], 0
jz c2b
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 3
add r8, 31
and r8, 0xFFFF
call z
jmp o2b
c2b:
sub r8, 29
and r8, 0xFFFF
call z
jmp o26
c26:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o2c:
cmp byte [tape + r8], 0
jz c2c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2c
c2c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o2d:
cmp byte [tape + r8], 0
jz c2d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
o2e:
cmp byte [tape + r8], 0
jz c2e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2e
c2e:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
jmp o2d
c2d:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o2f:
cmp byte [tape + r8], 0
jz c2f
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2f
c2f:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o30:
cmp byte [tape + r8], 0
jz c30
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o30
c30:
sub r8, 2
and r8, 0xFFFF
o31:
cmp byte [tape + r8], 0
jz c31
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o32:
cmp byte [tape + r8], 0
jz c32
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o32
c32:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o33:
cmp byte [tape + r8], 0
jz c33
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o33
c33:
sub r8, 1
and r8, 0xFFFF
o34:
cmp byte [tape + r8], 0
jz c34
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o34
c34:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o31
c31:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o35:
cmp byte [tape + r8], 0
jz c35
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o35
c35:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o36:
cmp byte [tape + r8], 0
jz c36
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o37:
cmp byte [tape + r8], 0
jz c37
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o37
c37:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o38:
cmp byte [tape + r8], 0
jz c38
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o38
c38:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o39:
cmp byte [tape + r8], 0
jz c39
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o39
c39:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o3a:
cmp byte [tape + r8], 0
jz c3a
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3a
c3a:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o3b:
cmp byte [tape + r8], 0
jz c3b
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 4
add r8, 31
and r8, 0xFFFF
call z
jmp o3b
c3b:
sub r8, 29
and r8, 0xFFFF
call z
jmp o36
c36:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o3c:
cmp byte [tape + r8], 0
jz c3c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3c
c3c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o3d:
cmp byte [tape + r8], 0
jz c3d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 16
o3e:
cmp byte [tape + r8], 0
jz c3e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3e
c3e:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 3
and r8, 0xFFFF
call o
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 3
call o
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 17
o3f:
cmp byte [tape + r8], 0
jz c3f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3f
c3f:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 8
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 1
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o3d
c3d:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o40:
cmp byte [tape + r8], 0
jz c40
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o40
c40:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o41:
cmp byte [tape + r8], 0
jz c41
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o41
c41:
sub r8, 2
and r8, 0xFFFF
o42:
cmp byte [tape + r8], 0
jz c42
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o43:
cmp byte [tape + r8], 0
jz c43
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o43
c43:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o44:
cmp byte [tape + r8], 0
jz c44
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o44
c44:
sub r8, 1
and r8, 0xFFFF
o45:
cmp byte [tape + r8], 0
jz c45
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o45
c45:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o42
c42:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o46:
cmp byte [tape + r8], 0
jz c46
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o46
c46:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o47:
cmp byte [tape + r8], 0
jz c47
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o48:
cmp byte [tape + r8], 0
jz c48
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o48
c48:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o49:
cmp byte [tape + r8], 0
jz c49
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o49
c49:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o4a:
cmp byte [tape + r8], 0
jz c4a
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o4a
c4a:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o4b:
cmp byte [tape + r8], 0
jz c4b
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o4b
c4b:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o4c:
cmp byte [tape + r8], 0
jz c4c
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 5
add r8, 31
and r8, 0xFFFF
call z
jmp o4c
c4c:
sub r8, 29
and r8, 0xFFFF
call z
jmp o47
c47:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o4d:
cmp byte [tape + r8], 0
jz c4d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o4d
c4d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o4e:
cmp byte [tape + r8], 0
jz c4e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 16
o4f:
cmp byte [tape + r8], 0
jz c4f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o4f
c4f:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 2
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 17
o50:
cmp byte [tape + r8], 0
jz c50
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o50
c50:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add byte [tape + r8], 1
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o4e
c4e:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o51:
cmp byte [tape + r8], 0
jz c51
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o51
c51:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o52:
cmp byte [tape + r8], 0
jz c52
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o52
c52:
sub r8, 2
and r8, 0xFFFF
o53:
cmp byte [tape + r8], 0
jz c53
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o54:
cmp byte [tape + r8], 0
jz c54
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o54
c54:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o55:
cmp byte [tape + r8], 0
jz c55
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o55
c55:
sub r8, 1
and r8, 0xFFFF
o56:
cmp byte [tape + r8], 0
jz c56
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o56
c56:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o53
c53:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o57:
cmp byte [tape + r8], 0
jz c57
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o57
c57:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o58:
cmp byte [tape + r8], 0
jz c58
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o59:
cmp byte [tape + r8], 0
jz c59
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o59
c59:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o5a:
cmp byte [tape + r8], 0
jz c5a
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o5a
c5a:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o5b:
cmp byte [tape + r8], 0
jz c5b
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o5b
c5b:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o5c:
cmp byte [tape + r8], 0
jz c5c
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o5c
c5c:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o5d:
cmp byte [tape + r8], 0
jz c5d
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 6
add r8, 31
and r8, 0xFFFF
call z
jmp o5d
c5d:
sub r8, 29
and r8, 0xFFFF
call z
jmp o58
c58:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o5e:
cmp byte [tape + r8], 0
jz c5e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o5e
c5e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o5f:
cmp byte [tape + r8], 0
jz c5f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 16
o60:
cmp byte [tape + r8], 0
jz c60
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o60
c60:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add byte [tape + r8], 2
call o
add byte [tape + r8], 6
call o
sub byte [tape + r8], 1
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub byte [tape + r8], 6
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 10
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 17
o61:
cmp byte [tape + r8], 0
jz c61
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o61
c61:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
call o
sub byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o5f
c5f:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 6
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o62:
cmp byte [tape + r8], 0
jz c62
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o62
c62:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o63:
cmp byte [tape + r8], 0
jz c63
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o63
c63:
sub r8, 2
and r8, 0xFFFF
o64:
cmp byte [tape + r8], 0
jz c64
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o65:
cmp byte [tape + r8], 0
jz c65
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o65
c65:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o66:
cmp byte [tape + r8], 0
jz c66
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o66
c66:
sub r8, 1
and r8, 0xFFFF
o67:
cmp byte [tape + r8], 0
jz c67
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o67
c67:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o64
c64:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o68:
cmp byte [tape + r8], 0
jz c68
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o68
c68:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o69:
cmp byte [tape + r8], 0
jz c69
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o6a:
cmp byte [tape + r8], 0
jz c6a
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6a
c6a:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o6b:
cmp byte [tape + r8], 0
jz c6b
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6b
c6b:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o6c:
cmp byte [tape + r8], 0
jz c6c
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o6c
c6c:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o6d:
cmp byte [tape + r8], 0
jz c6d
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6d
c6d:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o6e:
cmp byte [tape + r8], 0
jz c6e
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 7
add r8, 31
and r8, 0xFFFF
call z
jmp o6e
c6e:
sub r8, 29
and r8, 0xFFFF
call z
jmp o69
c69:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o6f:
cmp byte [tape + r8], 0
jz c6f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6f
c6f:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o70:
cmp byte [tape + r8], 0
jz c70
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 16
o71:
cmp byte [tape + r8], 0
jz c71
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o71
c71:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 3
call o
add byte [tape + r8], 6
call o
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 1
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub byte [tape + r8], 5
call o
add byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
call o
sub byte [tape + r8], 6
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 10
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 10
call o
call z
add byte [tape + r8], 17
o72:
cmp byte [tape + r8], 0
jz c72
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o72
c72:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 8
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add byte [tape + r8], 8
call o
sub byte [tape + r8], 9
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o70
c70:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 7
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o73:
cmp byte [tape + r8], 0
jz c73
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o73
c73:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o74:
cmp byte [tape + r8], 0
jz c74
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o74
c74:
sub r8, 2
and r8, 0xFFFF
o75:
cmp byte [tape + r8], 0
jz c75
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o76:
cmp byte [tape + r8], 0
jz c76
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o76
c76:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o77:
cmp byte [tape + r8], 0
jz c77
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o77
c77:
sub r8, 1
and r8, 0xFFFF
o78:
cmp byte [tape + r8], 0
jz c78
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o78
c78:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o75
c75:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o79:
cmp byte [tape + r8], 0
jz c79
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o79
c79:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o7a:
cmp byte [tape + r8], 0
jz c7a
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o7b:
cmp byte [tape + r8], 0
jz c7b
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o7b
c7b:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 24
call ms
add r8, 24
and r8, 0xFFFF
o7c:
cmp byte [tape + r8], 0
jz c7c
sub r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o7c
c7c:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 2
and r8, 0xFFFF
o7d:
cmp byte [tape + r8], 0
jz c7d
add r8, 2
and r8, 0xFFFF
o7e:
cmp byte [tape + r8], 0
jz c7e
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o7e
c7e:
sub r8, 4
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o7f:
cmp byte [tape + r8], 0
jz c7f
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o7f
c7f:
sub r8, 3
and r8, 0xFFFF
o80:
cmp byte [tape + r8], 0
jz c80
add r8, 2
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o80
c80:
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o7d
c7d:
add r8, 2
and r8, 0xFFFF
o81:
cmp byte [tape + r8], 0
jz c81
add r8, 24
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 24
and r8, 0xFFFF
call z
jmp o81
c81:
sub r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o82:
cmp byte [tape + r8], 0
jz c82
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o82
c82:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o83:
cmp byte [tape + r8], 0
jz c83
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 8
add r8, 31
and r8, 0xFFFF
call z
jmp o83
c83:
sub r8, 29
and r8, 0xFFFF
call z
jmp o7a
c7a:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o84:
cmp byte [tape + r8], 0
jz c84
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o84
c84:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o85:
cmp byte [tape + r8], 0
jz c85
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o85
c85:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 8
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o86:
cmp byte [tape + r8], 0
jz c86
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o86
c86:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o87:
cmp byte [tape + r8], 0
jz c87
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o87
c87:
sub r8, 2
and r8, 0xFFFF
o88:
cmp byte [tape + r8], 0
jz c88
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o89:
cmp byte [tape + r8], 0
jz c89
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o89
c89:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o8a:
cmp byte [tape + r8], 0
jz c8a
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o8a
c8a:
sub r8, 1
and r8, 0xFFFF
o8b:
cmp byte [tape + r8], 0
jz c8b
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o8b
c8b:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o88
c88:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o8c:
cmp byte [tape + r8], 0
jz c8c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o8c
c8c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o8d:
cmp byte [tape + r8], 0
jz c8d
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 17
and r8, 0xFFFF
call z
add r8, 17
and r8, 0xFFFF
mov r13b, 1
mov r12, 17
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o8d
c8d:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 9
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o8e:
cmp byte [tape + r8], 0
jz c8e
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o8e
c8e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o8f:
cmp byte [tape + r8], 0
jz c8f
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o8f
c8f:
sub r8, 2
and r8, 0xFFFF
o90:
cmp byte [tape + r8], 0
jz c90
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o91:
cmp byte [tape + r8], 0
jz c91
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o91
c91:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o92:
cmp byte [tape + r8], 0
jz c92
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o92
c92:
sub r8, 1
and r8, 0xFFFF
o93:
cmp byte [tape + r8], 0
jz c93
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o93
c93:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o90
c90:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o94:
cmp byte [tape + r8], 0
jz c94
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o94
c94:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o95:
cmp byte [tape + r8], 0
jz c95
add r8, 29
and r8, 0xFFFF
call z
sub r8, 17
and r8, 0xFFFF
o96:
cmp byte [tape + r8], 0
jz c96
add r8, 17
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o96
c96:
sub r8, 11
and r8, 0xFFFF
mov r13b, 1
mov r12, 11
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 24
call ms
add r8, 24
and r8, 0xFFFF
o97:
cmp byte [tape + r8], 0
jz c97
sub r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o97
c97:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 2
and r8, 0xFFFF
o98:
cmp byte [tape + r8], 0
jz c98
add r8, 2
and r8, 0xFFFF
o99:
cmp byte [tape + r8], 0
jz c99
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o99
c99:
sub r8, 4
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o9a:
cmp byte [tape + r8], 0
jz c9a
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o9a
c9a:
sub r8, 3
and r8, 0xFFFF
o9b:
cmp byte [tape + r8], 0
jz c9b
add r8, 2
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o9b
c9b:
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o98
c98:
add r8, 2
and r8, 0xFFFF
o9c:
cmp byte [tape + r8], 0
jz c9c
add r8, 24
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 24
and r8, 0xFFFF
call z
jmp o9c
c9c:
sub r8, 3
and r8, 0xFFFF
call z
add r8, 27
and r8, 0xFFFF
o9d:
cmp byte [tape + r8], 0
jz c9d
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 10
add r8, 31
and r8, 0xFFFF
call z
jmp o9d
c9d:
sub r8, 29
and r8, 0xFFFF
call z
jmp o95
c95:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o9e:
cmp byte [tape + r8], 0
jz c9e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o9e
c9e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o9f:
cmp byte [tape + r8], 0
jz c9f
add r8, 29
and r8, 0xFFFF
call z
sub r8, 17
and r8, 0xFFFF
oa0:
cmp byte [tape + r8], 0
jz ca0
add r8, 17
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oa0
ca0:
sub r8, 11
and r8, 0xFFFF
mov r13b, 1
mov r12, 11
call m
add r8, 31
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
oa1:
cmp byte [tape + r8], 0
jz ca1
add r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp oa1
ca1:
add r8, 1
and r8, 0xFFFF
oa2:
cmp byte [tape + r8], 0
jz ca2
sub r8, 3
and r8, 0xFFFF
oa3:
cmp byte [tape + r8], 0
jz ca3
sub r8, 2
and r8, 0xFFFF
jmp oa3
ca3:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
oa4:
cmp byte [tape + r8], 0
jz ca4
add r8, 2
and r8, 0xFFFF
jmp oa4
ca4:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oa2
ca2:
sub r8, 3
and r8, 0xFFFF
oa5:
cmp byte [tape + r8], 0
jz ca5
sub r8, 2
and r8, 0xFFFF
jmp oa5
ca5:
add r8, 1
and r8, 0xFFFF
oa6:
cmp byte [tape + r8], 0
jz ca6
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 30
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oa6
ca6:
sub r8, 30
and r8, 0xFFFF
mov r13b, 1
mov r12, 30
call m
add r8, 31
and r8, 0xFFFF
oa7:
cmp byte [tape + r8], 0
jz ca7
add r8, 2
and r8, 0xFFFF
jmp oa7
ca7:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
oa8:
cmp byte [tape + r8], 0
jz ca8
sub r8, 2
and r8, 0xFFFF
jmp oa8
ca8:
add r8, 1
and r8, 0xFFFF
oa9:
cmp byte [tape + r8], 0
jz ca9
add r8, 1
and r8, 0xFFFF
oaa:
cmp byte [tape + r8], 0
jz caa
add r8, 2
and r8, 0xFFFF
jmp oaa
caa:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
oab:
cmp byte [tape + r8], 0
jz cab
sub r8, 2
and r8, 0xFFFF
jmp oab
cab:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oa9
ca9:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 21
and r8, 0xFFFF
call z
sub r8, 42
and r8, 0xFFFF
oac:
cmp byte [tape + r8], 0
jz cac
add r8, 42
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oac
cac:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
oad:
cmp byte [tape + r8], 0
jz cad
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oad
cad:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
oae:
cmp byte [tape + r8], 0
jz cae
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp oae
cae:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
oaf:
cmp byte [tape + r8], 0
jz caf
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oaf
caf:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
ob0:
cmp byte [tape + r8], 0
jz cb0
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 11
add r8, 31
and r8, 0xFFFF
call z
jmp ob0
cb0:
sub r8, 29
and r8, 0xFFFF
call z
jmp o9f
c9f:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
ob1:
cmp byte [tape + r8], 0
jz cb1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob1
cb1:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
ob2:
cmp byte [tape + r8], 0
jz cb2
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
ob3:
cmp byte [tape + r8], 0
jz cb3
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob3
cb3:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
add r8, 24
and r8, 0xFFFF
ob4:
cmp byte [tape + r8], 0
jz cb4
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob4
cb4:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
ob5:
cmp byte [tape + r8], 0
jz cb5
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp ob5
cb5:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
ob6:
cmp byte [tape + r8], 0
jz cb6
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob6
cb6:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
ob7:
cmp byte [tape + r8], 0
jz cb7
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 12
add r8, 31
and r8, 0xFFFF
call z
jmp ob7
cb7:
sub r8, 29
and r8, 0xFFFF
call z
jmp ob2
cb2:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
ob8:
cmp byte [tape + r8], 0
jz cb8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ob8
cb8:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
ob9:
cmp byte [tape + r8], 0
jz cb9
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
oba:
cmp byte [tape + r8], 0
jz cba
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oba
cba:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 10
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
jmp ob9
cb9:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 12
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
obb:
cmp byte [tape + r8], 0
jz cbb
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp obb
cbb:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
obc:
cmp byte [tape + r8], 0
jz cbc
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp obc
cbc:
sub r8, 2
and r8, 0xFFFF
obd:
cmp byte [tape + r8], 0
jz cbd
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
obe:
cmp byte [tape + r8], 0
jz cbe
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp obe
cbe:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
obf:
cmp byte [tape + r8], 0
jz cbf
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp obf
cbf:
sub r8, 1
and r8, 0xFFFF
oc0:
cmp byte [tape + r8], 0
jz cc0
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp oc0
cc0:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp obd
cbd:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
oc1:
cmp byte [tape + r8], 0
jz cc1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc1
cc1:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
oc2:
cmp byte [tape + r8], 0
jz cc2
add r8, 29
and r8, 0xFFFF
call z
sub r8, 17
and r8, 0xFFFF
oc3:
cmp byte [tape + r8], 0
jz cc3
add r8, 17
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc3
cc3:
sub r8, 11
and r8, 0xFFFF
mov r13b, 1
mov r12, 11
call m
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 24
and r8, 0xFFFF
oc4:
cmp byte [tape + r8], 0
jz cc4
sub r8, 25
and r8, 0xFFFF
add byte [tape + r8], 1
oc5:
cmp byte [tape + r8], 0
jz cc5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc5
cc5:
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 10
oc6:
cmp byte [tape + r8], 0
jz cc6
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
call z
jmp oc6
cc6:
sub r8, 4
and r8, 0xFFFF
oc7:
cmp byte [tape + r8], 0
jz cc7
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc7
cc7:
add r8, 2
and r8, 0xFFFF
oc8:
cmp byte [tape + r8], 0
jz cc8
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc8
cc8:
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 10
oc9:
cmp byte [tape + r8], 0
jz cc9
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
call z
jmp oc9
cc9:
sub r8, 4
and r8, 0xFFFF
oca:
cmp byte [tape + r8], 0
jz cca
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oca
cca:
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc4
cc4:
sub r8, 27
and r8, 0xFFFF
ocb:
cmp byte [tape + r8], 0
jz ccb
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
occ:
cmp byte [tape + r8], 0
jz ccc
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp occ
ccc:
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp ocb
ccb:
add r8, 1
and r8, 0xFFFF
ocd:
cmp byte [tape + r8], 0
jz ccd
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
mov r13b, 6
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
call o
call z
jmp ocd
ccd:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
mov r13b, 6
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
call o
call z
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp oc2
cc2:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 11
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
oce:
cmp byte [tape + r8], 0
jz cce
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oce
cce:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
ocf:
cmp byte [tape + r8], 0
jz ccf
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ocf
ccf:
sub r8, 2
and r8, 0xFFFF
od0:
cmp byte [tape + r8], 0
jz cd0
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
od1:
cmp byte [tape + r8], 0
jz cd1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od1
cd1:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
od2:
cmp byte [tape + r8], 0
jz cd2
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp od2
cd2:
sub r8, 1
and r8, 0xFFFF
od3:
cmp byte [tape + r8], 0
jz cd3
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp od3
cd3:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od0
cd0:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
od4:
cmp byte [tape + r8], 0
jz cd4
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od4
cd4:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
od5:
cmp byte [tape + r8], 0
jz cd5
add r8, 29
and r8, 0xFFFF
call z
sub r8, 17
and r8, 0xFFFF
od6:
cmp byte [tape + r8], 0
jz cd6
add r8, 17
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od6
cd6:
sub r8, 11
and r8, 0xFFFF
mov r13b, 1
mov r12, 11
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 1
od7:
cmp byte [tape + r8], 0
jz cd7
sub r8, 24
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od7
cd7:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 11
and r8, 0xFFFF
call z
add r8, 17
and r8, 0xFFFF
mov r13b, 1
mov r12, 17
call ms
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 9
add r8, 2
and r8, 0xFFFF
call z
jmp od5
cd5:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 10
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
od8:
cmp byte [tape + r8], 0
jz cd8
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od8
cd8:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
od9:
cmp byte [tape + r8], 0
jz cd9
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od9
cd9:
sub r8, 2
and r8, 0xFFFF
oda:
cmp byte [tape + r8], 0
jz cda
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
odb:
cmp byte [tape + r8], 0
jz cdb
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp odb
cdb:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
odc:
cmp byte [tape + r8], 0
jz cdc
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp odc
cdc:
sub r8, 1
and r8, 0xFFFF
odd:
cmp byte [tape + r8], 0
jz cdd
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp odd
cdd:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oda
cda:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
ode:
cmp byte [tape + r8], 0
jz cde
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ode
cde:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
odf:
cmp byte [tape + r8], 0
jz cdf
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
oe0:
cmp byte [tape + r8], 0
jz ce0
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe0
ce0:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
oe1:
cmp byte [tape + r8], 0
jz ce1
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe1
ce1:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
oe2:
cmp byte [tape + r8], 0
jz ce2
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp oe2
ce2:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
oe3:
cmp byte [tape + r8], 0
jz ce3
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe3
ce3:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
oe4:
cmp byte [tape + r8], 0
jz ce4
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 13
add r8, 31
and r8, 0xFFFF
call z
jmp oe4
ce4:
sub r8, 29
and r8, 0xFFFF
call z
jmp odf
cdf:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
oe5:
cmp byte [tape + r8], 0
jz ce5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe5
ce5:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
oe6:
cmp byte [tape + r8], 0
jz ce6
add r8, 29
and r8, 0xFFFF
call z
add r8, 25
and r8, 0xFFFF
oe7:
cmp byte [tape + r8], 0
jz ce7
sub r8, 25
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe7
ce7:
sub r8, 53
and r8, 0xFFFF
mov r13b, 1
mov r12, 53
call m
add r8, 10
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add r8, 25
and r8, 0xFFFF
call z
sub r8, 25
and r8, 0xFFFF
mov r13b, 1
mov r12, 25
call m
sub r8, 29
and r8, 0xFFFF
call z
jmp oe6
ce6:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 13
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
oe8:
cmp byte [tape + r8], 0
jz ce8
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe8
ce8:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
oe9:
cmp byte [tape + r8], 0
jz ce9
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe9
ce9:
sub r8, 2
and r8, 0xFFFF
oea:
cmp byte [tape + r8], 0
jz cea
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
oeb:
cmp byte [tape + r8], 0
jz ceb
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oeb
ceb:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
oec:
cmp byte [tape + r8], 0
jz cec
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp oec
cec:
sub r8, 1
and r8, 0xFFFF
oed:
cmp byte [tape + r8], 0
jz ced
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp oed
ced:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oea
cea:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
oee:
cmp byte [tape + r8], 0
jz cee
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oee
cee:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
oef:
cmp byte [tape + r8], 0
jz cef
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oef
cef:
sub r8, 2
and r8, 0xFFFF
of0:
cmp byte [tape + r8], 0
jz cf0
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
of1:
cmp byte [tape + r8], 0
jz cf1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of1
cf1:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
of2:
cmp byte [tape + r8], 0
jz cf2
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp of2
cf2:
sub r8, 1
and r8, 0xFFFF
of3:
cmp byte [tape + r8], 0
jz cf3
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp of3
cf3:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of0
cf0:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
of4:
cmp byte [tape + r8], 0
jz cf4
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of4
cf4:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
of5:
cmp byte [tape + r8], 0
jz cf5
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 7
mov r13b, 9
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
call z
add r8, 27
and r8, 0xFFFF
call i
sub r8, 19
and r8, 0xFFFF
call z
add r8, 19
and r8, 0xFFFF
mov r13b, 1
mov r12, 19
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp of5
cf5:
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 14
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
of6:
cmp byte [tape + r8], 0
jz cf6
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of6
cf6:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
of7:
cmp byte [tape + r8], 0
jz cf7
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of7
cf7:
sub r8, 2
and r8, 0xFFFF
of8:
cmp byte [tape + r8], 0
jz cf8
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
of9:
cmp byte [tape + r8], 0
jz cf9
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of9
cf9:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
ofa:
cmp byte [tape + r8], 0
jz cfa
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp ofa
cfa:
sub r8, 1
and r8, 0xFFFF
ofb:
cmp byte [tape + r8], 0
jz cfb
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp ofb
cfb:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of8
cf8:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
ofc:
cmp byte [tape + r8], 0
jz cfc
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ofc
cfc:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
ofd:
cmp byte [tape + r8], 0
jz cfd
add r8, 29
and r8, 0xFFFF
call i
sub r8, 2
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
call z
sub r8, 2
and r8, 0xFFFF
ofe:
cmp byte [tape + r8], 0
jz cfe
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 26
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp ofe
cfe:
sub r8, 26
and r8, 0xFFFF
mov r13b, 1
mov r12, 26
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 10
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
off:
cmp byte [tape + r8], 0
jz cff
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp off
cff:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o100:
cmp byte [tape + r8], 0
jz c100
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o100
c100:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 26
and r8, 0xFFFF
o101:
cmp byte [tape + r8], 0
jz c101
add r8, 26
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 26
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o101
c101:
sub r8, 26
and r8, 0xFFFF
mov r13b, 1
mov r12, 26
call m
call z
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 13
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o102:
cmp byte [tape + r8], 0
jz c102
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o102
c102:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o103:
cmp byte [tape + r8], 0
jz c103
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o103
c103:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o104:
cmp byte [tape + r8], 0
jz c104
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o104
c104:
add r8, 52
and r8, 0xFFFF
o105:
cmp byte [tape + r8], 0
jz c105
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o105
c105:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o106:
cmp byte [tape + r8], 0
jz c106
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o106
c106:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o107:
cmp byte [tape + r8], 0
jz c107
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o107
c107:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o108:
cmp byte [tape + r8], 0
jz c108
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 14
add r8, 31
and r8, 0xFFFF
call z
jmp o108
c108:
sub r8, 29
and r8, 0xFFFF
call z
jmp ofd
cfd:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o109:
cmp byte [tape + r8], 0
jz c109
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o109
c109:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o10a:
cmp byte [tape + r8], 0
jz c10a
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o10b:
cmp byte [tape + r8], 0
jz c10b
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o10b
c10b:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o10c:
cmp byte [tape + r8], 0
jz c10c
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o10c
c10c:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o10d:
cmp byte [tape + r8], 0
jz c10d
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o10d
c10d:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o10e:
cmp byte [tape + r8], 0
jz c10e
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o10e
c10e:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 6
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o10f:
cmp byte [tape + r8], 0
jz c10f
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o10f
c10f:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o110:
cmp byte [tape + r8], 0
jz c110
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o110
c110:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o111:
cmp byte [tape + r8], 0
jz c111
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o111
c111:
add r8, 52
and r8, 0xFFFF
o112:
cmp byte [tape + r8], 0
jz c112
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o112
c112:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o113:
cmp byte [tape + r8], 0
jz c113
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o113
c113:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o114:
cmp byte [tape + r8], 0
jz c114
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o114
c114:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o115:
cmp byte [tape + r8], 0
jz c115
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 15
add r8, 31
and r8, 0xFFFF
call z
jmp o115
c115:
sub r8, 29
and r8, 0xFFFF
call z
jmp o10a
c10a:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o116:
cmp byte [tape + r8], 0
jz c116
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o116
c116:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o117:
cmp byte [tape + r8], 0
jz c117
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
call z
sub r8, 18
and r8, 0xFFFF
o118:
cmp byte [tape + r8], 0
jz c118
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o118
c118:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o119:
cmp byte [tape + r8], 0
jz c119
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o119
c119:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o11a:
cmp byte [tape + r8], 0
jz c11a
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o11a
c11a:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o11b:
cmp byte [tape + r8], 0
jz c11b
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o11b
c11b:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o11c:
cmp byte [tape + r8], 0
jz c11c
sub r8, 31
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o11c
c11c:
sub r8, 29
and r8, 0xFFFF
call z
jmp o117
c117:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o11d:
cmp byte [tape + r8], 0
jz c11d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o11d
c11d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o11e:
cmp byte [tape + r8], 0
jz c11e
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o11e
c11e:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o11f:
cmp byte [tape + r8], 0
jz c11f
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o11f
c11f:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o120:
cmp byte [tape + r8], 0
jz c120
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o120
c120:
sub r8, 2
and r8, 0xFFFF
o121:
cmp byte [tape + r8], 0
jz c121
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o122:
cmp byte [tape + r8], 0
jz c122
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o122
c122:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o123:
cmp byte [tape + r8], 0
jz c123
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o123
c123:
sub r8, 1
and r8, 0xFFFF
o124:
cmp byte [tape + r8], 0
jz c124
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o124
c124:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o121
c121:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 15
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o125:
cmp byte [tape + r8], 0
jz c125
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o125
c125:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o126:
cmp byte [tape + r8], 0
jz c126
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o126
c126:
sub r8, 2
and r8, 0xFFFF
o127:
cmp byte [tape + r8], 0
jz c127
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o128:
cmp byte [tape + r8], 0
jz c128
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o128
c128:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o129:
cmp byte [tape + r8], 0
jz c129
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o129
c129:
sub r8, 1
and r8, 0xFFFF
o12a:
cmp byte [tape + r8], 0
jz c12a
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o12a
c12a:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o127
c127:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o12b:
cmp byte [tape + r8], 0
jz c12b
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o12b
c12b:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o12c:
cmp byte [tape + r8], 0
jz c12c
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o12d:
cmp byte [tape + r8], 0
jz c12d
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o12d
c12d:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o12e:
cmp byte [tape + r8], 0
jz c12e
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o12e
c12e:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o12f:
cmp byte [tape + r8], 0
jz c12f
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o12f
c12f:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o130:
cmp byte [tape + r8], 0
jz c130
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o130
c130:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 6
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o131:
cmp byte [tape + r8], 0
jz c131
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o131
c131:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o132:
cmp byte [tape + r8], 0
jz c132
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o132
c132:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o133:
cmp byte [tape + r8], 0
jz c133
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o133
c133:
add r8, 52
and r8, 0xFFFF
o134:
cmp byte [tape + r8], 0
jz c134
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o134
c134:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o135:
cmp byte [tape + r8], 0
jz c135
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o135
c135:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o136:
cmp byte [tape + r8], 0
jz c136
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o136
c136:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o137:
cmp byte [tape + r8], 0
jz c137
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o137
c137:
sub r8, 29
and r8, 0xFFFF
call z
jmp o12c
c12c:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o138:
cmp byte [tape + r8], 0
jz c138
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o138
c138:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o139:
cmp byte [tape + r8], 0
jz c139
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
call z
sub r8, 18
and r8, 0xFFFF
o13a:
cmp byte [tape + r8], 0
jz c13a
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o13a
c13a:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o13b:
cmp byte [tape + r8], 0
jz c13b
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o13b
c13b:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o13c:
cmp byte [tape + r8], 0
jz c13c
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o13c
c13c:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o13d:
cmp byte [tape + r8], 0
jz c13d
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o13d
c13d:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o13e:
cmp byte [tape + r8], 0
jz c13e
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o13e
c13e:
sub r8, 29
and r8, 0xFFFF
call z
jmp o139
c139:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o13f:
cmp byte [tape + r8], 0
jz c13f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o13f
c13f:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o140:
cmp byte [tape + r8], 0
jz c140
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o140
c140:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o141:
cmp byte [tape + r8], 0
jz c141
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o141
c141:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o142:
cmp byte [tape + r8], 0
jz c142
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o142
c142:
sub r8, 2
and r8, 0xFFFF
o143:
cmp byte [tape + r8], 0
jz c143
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o144:
cmp byte [tape + r8], 0
jz c144
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o144
c144:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o145:
cmp byte [tape + r8], 0
jz c145
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o145
c145:
sub r8, 1
and r8, 0xFFFF
o146:
cmp byte [tape + r8], 0
jz c146
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o146
c146:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o143
c143:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o147:
cmp byte [tape + r8], 0
jz c147
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o147
c147:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o148:
cmp byte [tape + r8], 0
jz c148
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o149:
cmp byte [tape + r8], 0
jz c149
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o149
c149:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o14a:
cmp byte [tape + r8], 0
jz c14a
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o14a
c14a:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o14b:
cmp byte [tape + r8], 0
jz c14b
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o14b
c14b:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o14c:
cmp byte [tape + r8], 0
jz c14c
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o14c
c14c:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o14d:
cmp byte [tape + r8], 0
jz c14d
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o14d
c14d:
sub r8, 29
and r8, 0xFFFF
call z
jmp o148
c148:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o14e:
cmp byte [tape + r8], 0
jz c14e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o14e
c14e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o14f:
cmp byte [tape + r8], 0
jz c14f
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o14f
c14f:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o150:
cmp byte [tape + r8], 0
jz c150
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o150
c150:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o151:
cmp byte [tape + r8], 0
jz c151
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o151
c151:
sub r8, 2
and r8, 0xFFFF
o152:
cmp byte [tape + r8], 0
jz c152
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o153:
cmp byte [tape + r8], 0
jz c153
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o153
c153:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o154:
cmp byte [tape + r8], 0
jz c154
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o154
c154:
sub r8, 1
and r8, 0xFFFF
o155:
cmp byte [tape + r8], 0
jz c155
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o155
c155:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o152
c152:
add r8, 3
and r8, 0xFFFF
call z
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o156:
cmp byte [tape + r8], 0
jz c156
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o156
c156:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o157:
cmp byte [tape + r8], 0
jz c157
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o157
c157:
sub r8, 2
and r8, 0xFFFF
o158:
cmp byte [tape + r8], 0
jz c158
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o159:
cmp byte [tape + r8], 0
jz c159
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o159
c159:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o15a:
cmp byte [tape + r8], 0
jz c15a
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o15a
c15a:
sub r8, 1
and r8, 0xFFFF
o15b:
cmp byte [tape + r8], 0
jz c15b
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o15b
c15b:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o158
c158:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o15c:
cmp byte [tape + r8], 0
jz c15c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o15c
c15c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o15d:
cmp byte [tape + r8], 0
jz c15d
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o15e:
cmp byte [tape + r8], 0
jz c15e
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o15e
c15e:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 9
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o15f:
cmp byte [tape + r8], 0
jz c15f
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o15f
c15f:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o160:
cmp byte [tape + r8], 0
jz c160
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o160
c160:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o161:
cmp byte [tape + r8], 0
jz c161
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o161
c161:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 9
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 6
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o162:
cmp byte [tape + r8], 0
jz c162
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o162
c162:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o163:
cmp byte [tape + r8], 0
jz c163
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o163
c163:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o164:
cmp byte [tape + r8], 0
jz c164
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o164
c164:
add r8, 52
and r8, 0xFFFF
o165:
cmp byte [tape + r8], 0
jz c165
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o165
c165:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o166:
cmp byte [tape + r8], 0
jz c166
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o166
c166:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o167:
cmp byte [tape + r8], 0
jz c167
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o167
c167:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o168:
cmp byte [tape + r8], 0
jz c168
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 4
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o168
c168:
sub r8, 29
and r8, 0xFFFF
call z
jmp o15d
c15d:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o169:
cmp byte [tape + r8], 0
jz c169
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o169
c169:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o16a:
cmp byte [tape + r8], 0
jz c16a
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 14
o16b:
cmp byte [tape + r8], 0
jz c16b
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o16b
c16b:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add byte [tape + r8], 8
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 9
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 8
call o
add byte [tape + r8], 6
call o
sub byte [tape + r8], 5
call o
add byte [tape + r8], 3
call o
add byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o16c:
cmp byte [tape + r8], 0
jz c16c
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o16c
c16c:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
add r8, 53
and r8, 0xFFFF
call z
sub r8, 25
and r8, 0xFFFF
mov r13b, 1
mov r12, 25
call m
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o16a
c16a:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o16d:
cmp byte [tape + r8], 0
jz c16d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o16d
c16d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o16e:
cmp byte [tape + r8], 0
jz c16e
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o16e
c16e:
sub r8, 2
and r8, 0xFFFF
o16f:
cmp byte [tape + r8], 0
jz c16f
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o170:
cmp byte [tape + r8], 0
jz c170
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o170
c170:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o171:
cmp byte [tape + r8], 0
jz c171
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o171
c171:
sub r8, 1
and r8, 0xFFFF
o172:
cmp byte [tape + r8], 0
jz c172
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o172
c172:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o16f
c16f:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o173:
cmp byte [tape + r8], 0
jz c173
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o173
c173:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o174:
cmp byte [tape + r8], 0
jz c174
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o175:
cmp byte [tape + r8], 0
jz c175
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o175
c175:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 14
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 4
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o176:
cmp byte [tape + r8], 0
jz c176
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o176
c176:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o177:
cmp byte [tape + r8], 0
jz c177
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o177
c177:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o178:
cmp byte [tape + r8], 0
jz c178
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o178
c178:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 14
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 6
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o179:
cmp byte [tape + r8], 0
jz c179
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o179
c179:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o17a:
cmp byte [tape + r8], 0
jz c17a
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o17a
c17a:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o17b:
cmp byte [tape + r8], 0
jz c17b
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o17b
c17b:
add r8, 52
and r8, 0xFFFF
o17c:
cmp byte [tape + r8], 0
jz c17c
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o17c
c17c:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o17d:
cmp byte [tape + r8], 0
jz c17d
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o17d
c17d:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o17e:
cmp byte [tape + r8], 0
jz c17e
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o17e
c17e:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o17f:
cmp byte [tape + r8], 0
jz c17f
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o17f
c17f:
sub r8, 29
and r8, 0xFFFF
call z
jmp o174
c174:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o180:
cmp byte [tape + r8], 0
jz c180
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o180
c180:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o181:
cmp byte [tape + r8], 0
jz c181
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o181
c181:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o182:
cmp byte [tape + r8], 0
jz c182
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o182
c182:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o183:
cmp byte [tape + r8], 0
jz c183
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o183
c183:
sub r8, 2
and r8, 0xFFFF
o184:
cmp byte [tape + r8], 0
jz c184
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o185:
cmp byte [tape + r8], 0
jz c185
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o185
c185:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o186:
cmp byte [tape + r8], 0
jz c186
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o186
c186:
sub r8, 1
and r8, 0xFFFF
o187:
cmp byte [tape + r8], 0
jz c187
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o187
c187:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o184
c184:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o188:
cmp byte [tape + r8], 0
jz c188
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o188
c188:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o189:
cmp byte [tape + r8], 0
jz c189
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o18a:
cmp byte [tape + r8], 0
jz c18a
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o18a
c18a:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o18b:
cmp byte [tape + r8], 0
jz c18b
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o18b
c18b:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o18c:
cmp byte [tape + r8], 0
jz c18c
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o18c
c18c:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o18d:
cmp byte [tape + r8], 0
jz c18d
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o18d
c18d:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o18e:
cmp byte [tape + r8], 0
jz c18e
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o18e
c18e:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o18f:
cmp byte [tape + r8], 0
jz c18f
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o18f
c18f:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o190:
cmp byte [tape + r8], 0
jz c190
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o190
c190:
add r8, 52
and r8, 0xFFFF
o191:
cmp byte [tape + r8], 0
jz c191
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o191
c191:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o192:
cmp byte [tape + r8], 0
jz c192
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o192
c192:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o193:
cmp byte [tape + r8], 0
jz c193
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o193
c193:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o194:
cmp byte [tape + r8], 0
jz c194
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o194
c194:
sub r8, 29
and r8, 0xFFFF
call z
jmp o189
c189:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o195:
cmp byte [tape + r8], 0
jz c195
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o195
c195:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o196:
cmp byte [tape + r8], 0
jz c196
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 16
o197:
cmp byte [tape + r8], 0
jz c197
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
sub r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o197
c197:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 7
call o
sub byte [tape + r8], 10
call o
add byte [tape + r8], 6
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
add byte [tape + r8], 2
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
add byte [tape + r8], 8
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 11
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub byte [tape + r8], 9
call o
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
add r8, 3
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add r8, 27
and r8, 0xFFFF
call i
sub r8, 3
and r8, 0xFFFF
call z
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
call z
sub r8, 3
and r8, 0xFFFF
o198:
cmp byte [tape + r8], 0
jz c198
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 25
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o198
c198:
sub r8, 25
and r8, 0xFFFF
mov r13b, 1
mov r12, 25
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 9
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o199:
cmp byte [tape + r8], 0
jz c199
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o199
c199:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o19a:
cmp byte [tape + r8], 0
jz c19a
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o19a
c19a:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 27
and r8, 0xFFFF
o19b:
cmp byte [tape + r8], 0
jz c19b
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 25
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o19b
c19b:
sub r8, 25
and r8, 0xFFFF
mov r13b, 1
mov r12, 25
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 9
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o19c:
cmp byte [tape + r8], 0
jz c19c
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o19c
c19c:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o19d:
cmp byte [tape + r8], 0
jz c19d
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o19d
c19d:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o19e:
cmp byte [tape + r8], 0
jz c19e
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o19e
c19e:
add r8, 52
and r8, 0xFFFF
o19f:
cmp byte [tape + r8], 0
jz c19f
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o19f
c19f:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o1a0:
cmp byte [tape + r8], 0
jz c1a0
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o1a0
c1a0:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o1a1:
cmp byte [tape + r8], 0
jz c1a1
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a1
c1a1:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o1a2:
cmp byte [tape + r8], 0
jz c1a2
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o1a2
c1a2:
sub r8, 29
and r8, 0xFFFF
call z
jmp o196
c196:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1a3:
cmp byte [tape + r8], 0
jz c1a3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a3
c1a3:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1a4:
cmp byte [tape + r8], 0
jz c1a4
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 21
and r8, 0xFFFF
call z
add r8, 21
and r8, 0xFFFF
mov r13b, 1
mov r12, 21
call ms
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 11
o1a5:
cmp byte [tape + r8], 0
jz c1a5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a5
c1a5:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 2
call o
sub byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add r8, 27
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1a6:
cmp byte [tape + r8], 0
jz c1a6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a6
c1a6:
sub r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call m
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 24
and r8, 0xFFFF
o1a7:
cmp byte [tape + r8], 0
jz c1a7
sub r8, 25
and r8, 0xFFFF
add byte [tape + r8], 1
o1a8:
cmp byte [tape + r8], 0
jz c1a8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a8
c1a8:
sub r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 10
o1a9:
cmp byte [tape + r8], 0
jz c1a9
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
call z
jmp o1a9
c1a9:
sub r8, 4
and r8, 0xFFFF
o1aa:
cmp byte [tape + r8], 0
jz c1aa
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1aa
c1aa:
add r8, 2
and r8, 0xFFFF
o1ab:
cmp byte [tape + r8], 0
jz c1ab
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ab
c1ab:
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 10
o1ac:
cmp byte [tape + r8], 0
jz c1ac
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
call z
jmp o1ac
c1ac:
sub r8, 4
and r8, 0xFFFF
o1ad:
cmp byte [tape + r8], 0
jz c1ad
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ad
c1ad:
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a7
c1a7:
sub r8, 27
and r8, 0xFFFF
o1ae:
cmp byte [tape + r8], 0
jz c1ae
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
o1af:
cmp byte [tape + r8], 0
jz c1af
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1af
c1af:
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o1ae
c1ae:
add r8, 1
and r8, 0xFFFF
o1b0:
cmp byte [tape + r8], 0
jz c1b0
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
mov r13b, 6
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
call o
call z
jmp o1b0
c1b0:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 8
mov r13b, 6
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
call o
call z
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 16
o1b1:
cmp byte [tape + r8], 0
jz c1b1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b1
c1b1:
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
add byte [tape + r8], 6
call o
sub byte [tape + r8], 1
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 5
call o
add byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 11
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
sub byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
sub byte [tape + r8], 3
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add r8, 27
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1b2:
cmp byte [tape + r8], 0
jz c1b2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b2
c1b2:
sub r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o1b3:
cmp byte [tape + r8], 0
jz c1b3
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b3
c1b3:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o1b4:
cmp byte [tape + r8], 0
jz c1b4
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o1b4
c1b4:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o1b5:
cmp byte [tape + r8], 0
jz c1b5
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b5
c1b5:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o1b6:
cmp byte [tape + r8], 0
jz c1b6
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o1b6
c1b6:
sub r8, 29
and r8, 0xFFFF
call z
jmp o1a4
c1a4:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1b7:
cmp byte [tape + r8], 0
jz c1b7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b7
c1b7:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1b8:
cmp byte [tape + r8], 0
jz c1b8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 13
o1b9:
cmp byte [tape + r8], 0
jz c1b9
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1b9
c1b9:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
sub byte [tape + r8], 5
call o
add byte [tape + r8], 6
call o
sub byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 9
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 1
and r8, 0xFFFF
call z
jmp o1b8
c1b8:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 8
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1ba:
cmp byte [tape + r8], 0
jz c1ba
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ba
c1ba:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1bb:
cmp byte [tape + r8], 0
jz c1bb
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1bb
c1bb:
sub r8, 2
and r8, 0xFFFF
o1bc:
cmp byte [tape + r8], 0
jz c1bc
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1bd:
cmp byte [tape + r8], 0
jz c1bd
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1bd
c1bd:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1be:
cmp byte [tape + r8], 0
jz c1be
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1be
c1be:
sub r8, 1
and r8, 0xFFFF
o1bf:
cmp byte [tape + r8], 0
jz c1bf
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1bf
c1bf:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1bc
c1bc:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1c0:
cmp byte [tape + r8], 0
jz c1c0
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c0
c1c0:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1c1:
cmp byte [tape + r8], 0
jz c1c1
add r8, 29
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1c2:
cmp byte [tape + r8], 0
jz c1c2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c2
c1c2:
sub r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 10
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 24
call ms
add r8, 24
and r8, 0xFFFF
o1c3:
cmp byte [tape + r8], 0
jz c1c3
sub r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c3
c1c3:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 2
and r8, 0xFFFF
o1c4:
cmp byte [tape + r8], 0
jz c1c4
add r8, 2
and r8, 0xFFFF
o1c5:
cmp byte [tape + r8], 0
jz c1c5
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c5
c1c5:
sub r8, 4
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o1c6:
cmp byte [tape + r8], 0
jz c1c6
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1c6
c1c6:
sub r8, 3
and r8, 0xFFFF
o1c7:
cmp byte [tape + r8], 0
jz c1c7
add r8, 2
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c7
c1c7:
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c4
c1c4:
sub r8, 1
and r8, 0xFFFF
o1c8:
cmp byte [tape + r8], 0
jz c1c8
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o1c8
c1c8:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o1c9:
cmp byte [tape + r8], 0
jz c1c9
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c9
c1c9:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o1ca:
cmp byte [tape + r8], 0
jz c1ca
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o1ca
c1ca:
sub r8, 29
and r8, 0xFFFF
call z
jmp o1c1
c1c1:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1cb:
cmp byte [tape + r8], 0
jz c1cb
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1cb
c1cb:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1cc:
cmp byte [tape + r8], 0
jz c1cc
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 12
o1cd:
cmp byte [tape + r8], 0
jz c1cd
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1cd
c1cd:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 3
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 8
call o
add byte [tape + r8], 6
call o
add byte [tape + r8], 1
call o
sub byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
jmp o1cc
c1cc:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 10
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1ce:
cmp byte [tape + r8], 0
jz c1ce
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ce
c1ce:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1cf:
cmp byte [tape + r8], 0
jz c1cf
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1cf
c1cf:
sub r8, 2
and r8, 0xFFFF
o1d0:
cmp byte [tape + r8], 0
jz c1d0
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1d1:
cmp byte [tape + r8], 0
jz c1d1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d1
c1d1:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1d2:
cmp byte [tape + r8], 0
jz c1d2
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1d2
c1d2:
sub r8, 1
and r8, 0xFFFF
o1d3:
cmp byte [tape + r8], 0
jz c1d3
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1d3
c1d3:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d0
c1d0:
add r8, 3
and r8, 0xFFFF
call z
call z
add byte [tape + r8], 9
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1d4:
cmp byte [tape + r8], 0
jz c1d4
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d4
c1d4:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1d5:
cmp byte [tape + r8], 0
jz c1d5
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d5
c1d5:
sub r8, 2
and r8, 0xFFFF
o1d6:
cmp byte [tape + r8], 0
jz c1d6
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1d7:
cmp byte [tape + r8], 0
jz c1d7
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d7
c1d7:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1d8:
cmp byte [tape + r8], 0
jz c1d8
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1d8
c1d8:
sub r8, 1
and r8, 0xFFFF
o1d9:
cmp byte [tape + r8], 0
jz c1d9
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1d9
c1d9:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1d6
c1d6:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1da:
cmp byte [tape + r8], 0
jz c1da
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1da
c1da:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1db:
cmp byte [tape + r8], 0
jz c1db
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
mov r13b, 9
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o1db
c1db:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 7
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1dc:
cmp byte [tape + r8], 0
jz c1dc
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1dc
c1dc:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1dd:
cmp byte [tape + r8], 0
jz c1dd
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1dd
c1dd:
sub r8, 2
and r8, 0xFFFF
o1de:
cmp byte [tape + r8], 0
jz c1de
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1df:
cmp byte [tape + r8], 0
jz c1df
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1df
c1df:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1e0:
cmp byte [tape + r8], 0
jz c1e0
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1e0
c1e0:
sub r8, 1
and r8, 0xFFFF
o1e1:
cmp byte [tape + r8], 0
jz c1e1
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1e1
c1e1:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1de
c1de:
add r8, 3
and r8, 0xFFFF
call z
call z
add byte [tape + r8], 11
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1e2:
cmp byte [tape + r8], 0
jz c1e2
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e2
c1e2:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1e3:
cmp byte [tape + r8], 0
jz c1e3
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e3
c1e3:
sub r8, 2
and r8, 0xFFFF
o1e4:
cmp byte [tape + r8], 0
jz c1e4
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1e5:
cmp byte [tape + r8], 0
jz c1e5
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e5
c1e5:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1e6:
cmp byte [tape + r8], 0
jz c1e6
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1e6
c1e6:
sub r8, 1
and r8, 0xFFFF
o1e7:
cmp byte [tape + r8], 0
jz c1e7
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1e7
c1e7:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e4
c1e4:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1e8:
cmp byte [tape + r8], 0
jz c1e8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e8
c1e8:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1e9:
cmp byte [tape + r8], 0
jz c1e9
add r8, 29
and r8, 0xFFFF
call i
sub r8, 2
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
call z
sub r8, 2
and r8, 0xFFFF
o1ea:
cmp byte [tape + r8], 0
jz c1ea
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 26
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ea
c1ea:
sub r8, 26
and r8, 0xFFFF
mov r13b, 1
mov r12, 26
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 10
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o1eb:
cmp byte [tape + r8], 0
jz c1eb
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1eb
c1eb:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o1ec:
cmp byte [tape + r8], 0
jz c1ec
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o1ec
c1ec:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 26
and r8, 0xFFFF
o1ed:
cmp byte [tape + r8], 0
jz c1ed
add r8, 26
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 26
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ed
c1ed:
sub r8, 26
and r8, 0xFFFF
mov r13b, 1
mov r12, 26
call m
call z
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 13
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1ee:
cmp byte [tape + r8], 0
jz c1ee
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1ee
c1ee:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o1ef:
cmp byte [tape + r8], 0
jz c1ef
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o1ef
c1ef:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o1f0:
cmp byte [tape + r8], 0
jz c1f0
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o1f0
c1f0:
add r8, 52
and r8, 0xFFFF
o1f1:
cmp byte [tape + r8], 0
jz c1f1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f1
c1f1:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o1f2:
cmp byte [tape + r8], 0
jz c1f2
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o1f2
c1f2:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o1f3:
cmp byte [tape + r8], 0
jz c1f3
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f3
c1f3:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o1f4:
cmp byte [tape + r8], 0
jz c1f4
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 11
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o1f4
c1f4:
sub r8, 29
and r8, 0xFFFF
call z
jmp o1e9
c1e9:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 6
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o1f5:
cmp byte [tape + r8], 0
jz c1f5
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f5
c1f5:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1f6:
cmp byte [tape + r8], 0
jz c1f6
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f6
c1f6:
sub r8, 2
and r8, 0xFFFF
o1f7:
cmp byte [tape + r8], 0
jz c1f7
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o1f8:
cmp byte [tape + r8], 0
jz c1f8
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f8
c1f8:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o1f9:
cmp byte [tape + r8], 0
jz c1f9
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o1f9
c1f9:
sub r8, 1
and r8, 0xFFFF
o1fa:
cmp byte [tape + r8], 0
jz c1fa
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o1fa
c1fa:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1f7
c1f7:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o1fb:
cmp byte [tape + r8], 0
jz c1fb
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1fb
c1fb:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o1fc:
cmp byte [tape + r8], 0
jz c1fc
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o1fd:
cmp byte [tape + r8], 0
jz c1fd
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1fd
c1fd:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o1fe:
cmp byte [tape + r8], 0
jz c1fe
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1fe
c1fe:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o1ff:
cmp byte [tape + r8], 0
jz c1ff
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o1ff
c1ff:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o200:
cmp byte [tape + r8], 0
jz c200
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o200
c200:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o201:
cmp byte [tape + r8], 0
jz c201
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o201
c201:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o202:
cmp byte [tape + r8], 0
jz c202
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o202
c202:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o203:
cmp byte [tape + r8], 0
jz c203
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o203
c203:
add r8, 52
and r8, 0xFFFF
o204:
cmp byte [tape + r8], 0
jz c204
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o204
c204:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o205:
cmp byte [tape + r8], 0
jz c205
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o205
c205:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o206:
cmp byte [tape + r8], 0
jz c206
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o206
c206:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o207:
cmp byte [tape + r8], 0
jz c207
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 12
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o207
c207:
sub r8, 29
and r8, 0xFFFF
call z
jmp o1fc
c1fc:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o208:
cmp byte [tape + r8], 0
jz c208
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o208
c208:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o209:
cmp byte [tape + r8], 0
jz c209
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o209
c209:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 12
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o20a:
cmp byte [tape + r8], 0
jz c20a
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20a
c20a:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o20b:
cmp byte [tape + r8], 0
jz c20b
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20b
c20b:
sub r8, 2
and r8, 0xFFFF
o20c:
cmp byte [tape + r8], 0
jz c20c
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o20d:
cmp byte [tape + r8], 0
jz c20d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20d
c20d:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o20e:
cmp byte [tape + r8], 0
jz c20e
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o20e
c20e:
sub r8, 1
and r8, 0xFFFF
o20f:
cmp byte [tape + r8], 0
jz c20f
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o20f
c20f:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20c
c20c:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o210:
cmp byte [tape + r8], 0
jz c210
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o210
c210:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o211:
cmp byte [tape + r8], 0
jz c211
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o212:
cmp byte [tape + r8], 0
jz c212
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o212
c212:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o213:
cmp byte [tape + r8], 0
jz c213
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o213
c213:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o214:
cmp byte [tape + r8], 0
jz c214
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o214
c214:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o215:
cmp byte [tape + r8], 0
jz c215
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o215
c215:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 5
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o216:
cmp byte [tape + r8], 0
jz c216
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o216
c216:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o217:
cmp byte [tape + r8], 0
jz c217
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o217
c217:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o218:
cmp byte [tape + r8], 0
jz c218
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o218
c218:
add r8, 52
and r8, 0xFFFF
o219:
cmp byte [tape + r8], 0
jz c219
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o219
c219:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o21a:
cmp byte [tape + r8], 0
jz c21a
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o21a
c21a:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o21b:
cmp byte [tape + r8], 0
jz c21b
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o21b
c21b:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o21c:
cmp byte [tape + r8], 0
jz c21c
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 13
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o21c
c21c:
sub r8, 29
and r8, 0xFFFF
call z
jmp o211
c211:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o21d:
cmp byte [tape + r8], 0
jz c21d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o21d
c21d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o21e:
cmp byte [tape + r8], 0
jz c21e
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
call z
sub r8, 18
and r8, 0xFFFF
o21f:
cmp byte [tape + r8], 0
jz c21f
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o21f
c21f:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o220:
cmp byte [tape + r8], 0
jz c220
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o220
c220:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o221:
cmp byte [tape + r8], 0
jz c221
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o221
c221:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o222:
cmp byte [tape + r8], 0
jz c222
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o222
c222:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o223:
cmp byte [tape + r8], 0
jz c223
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 14
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o223
c223:
sub r8, 29
and r8, 0xFFFF
call z
jmp o21e
c21e:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o224:
cmp byte [tape + r8], 0
jz c224
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o224
c224:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o225:
cmp byte [tape + r8], 0
jz c225
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 4
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o225
c225:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 14
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o226:
cmp byte [tape + r8], 0
jz c226
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o226
c226:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o227:
cmp byte [tape + r8], 0
jz c227
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o227
c227:
sub r8, 2
and r8, 0xFFFF
o228:
cmp byte [tape + r8], 0
jz c228
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o229:
cmp byte [tape + r8], 0
jz c229
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o229
c229:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o22a:
cmp byte [tape + r8], 0
jz c22a
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o22a
c22a:
sub r8, 1
and r8, 0xFFFF
o22b:
cmp byte [tape + r8], 0
jz c22b
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o22b
c22b:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o228
c228:
add r8, 3
and r8, 0xFFFF
call z
call z
add byte [tape + r8], 13
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o22c:
cmp byte [tape + r8], 0
jz c22c
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o22c
c22c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o22d:
cmp byte [tape + r8], 0
jz c22d
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o22d
c22d:
sub r8, 2
and r8, 0xFFFF
o22e:
cmp byte [tape + r8], 0
jz c22e
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o22f:
cmp byte [tape + r8], 0
jz c22f
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o22f
c22f:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o230:
cmp byte [tape + r8], 0
jz c230
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o230
c230:
sub r8, 1
and r8, 0xFFFF
o231:
cmp byte [tape + r8], 0
jz c231
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o231
c231:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o22e
c22e:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o232:
cmp byte [tape + r8], 0
jz c232
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o232
c232:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o233:
cmp byte [tape + r8], 0
jz c233
add r8, 29
and r8, 0xFFFF
call z
sub r8, 19
and r8, 0xFFFF
o234:
cmp byte [tape + r8], 0
jz c234
add r8, 19
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o234
c234:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 7
sub r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 5
mov r13b, 16
mov r12, 52
call m
add r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o235:
cmp byte [tape + r8], 0
jz c235
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o235
c235:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o236:
cmp byte [tape + r8], 0
jz c236
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o236
c236:
add r8, 51
and r8, 0xFFFF
call z
sub r8, 43
and r8, 0xFFFF
o237:
cmp byte [tape + r8], 0
jz c237
add r8, 43
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o237
c237:
sub r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 9
call m
add r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
sub r8, 54
and r8, 0xFFFF
call z
add byte [tape + r8], 7
mov r13b, 16
mov r12, 54
call m
add r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call ms
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o238:
cmp byte [tape + r8], 0
jz c238
sub r8, 53
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 54
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o238
c238:
sub r8, 54
and r8, 0xFFFF
mov r13b, 1
mov r12, 54
call m
add r8, 1
and r8, 0xFFFF
o239:
cmp byte [tape + r8], 0
jz c239
add r8, 51
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 51
and r8, 0xFFFF
call z
jmp o239
c239:
add r8, 27
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call ms
sub r8, 28
and r8, 0xFFFF
o23a:
cmp byte [tape + r8], 0
jz c23a
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o23a
c23a:
add r8, 52
and r8, 0xFFFF
o23b:
cmp byte [tape + r8], 0
jz c23b
sub r8, 52
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o23b
c23b:
sub r8, 51
and r8, 0xFFFF
mov r13b, 1
mov r12, 51
call m
sub r8, 1
and r8, 0xFFFF
o23c:
cmp byte [tape + r8], 0
jz c23c
add r8, 28
and r8, 0xFFFF
call z
sub byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
call z
jmp o23c
c23c:
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o23d:
cmp byte [tape + r8], 0
jz c23d
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o23d
c23d:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o23e:
cmp byte [tape + r8], 0
jz c23e
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 15
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o23e
c23e:
sub r8, 29
and r8, 0xFFFF
call z
jmp o233
c233:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o23f:
cmp byte [tape + r8], 0
jz c23f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o23f
c23f:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o240:
cmp byte [tape + r8], 0
jz c240
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
call z
sub r8, 18
and r8, 0xFFFF
o241:
cmp byte [tape + r8], 0
jz c241
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o241
c241:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o242:
cmp byte [tape + r8], 0
jz c242
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o242
c242:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o243:
cmp byte [tape + r8], 0
jz c243
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o243
c243:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o244:
cmp byte [tape + r8], 0
jz c244
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o244
c244:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o245:
cmp byte [tape + r8], 0
jz c245
sub r8, 31
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o245
c245:
sub r8, 29
and r8, 0xFFFF
call z
jmp o240
c240:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o246:
cmp byte [tape + r8], 0
jz c246
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o246
c246:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o247:
cmp byte [tape + r8], 0
jz c247
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o247
c247:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o248:
cmp byte [tape + r8], 0
jz c248
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o248
c248:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o249:
cmp byte [tape + r8], 0
jz c249
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o249
c249:
sub r8, 2
and r8, 0xFFFF
o24a:
cmp byte [tape + r8], 0
jz c24a
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o24b:
cmp byte [tape + r8], 0
jz c24b
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o24b
c24b:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o24c:
cmp byte [tape + r8], 0
jz c24c
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o24c
c24c:
sub r8, 1
and r8, 0xFFFF
o24d:
cmp byte [tape + r8], 0
jz c24d
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o24d
c24d:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o24a
c24a:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o24e:
cmp byte [tape + r8], 0
jz c24e
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o24e
c24e:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o24f:
cmp byte [tape + r8], 0
jz c24f
add r8, 29
and r8, 0xFFFF
call z
sub r8, 18
and r8, 0xFFFF
o250:
cmp byte [tape + r8], 0
jz c250
add r8, 18
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o250
c250:
sub r8, 10
and r8, 0xFFFF
mov r13b, 1
mov r12, 10
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o251:
cmp byte [tape + r8], 0
jz c251
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o251
c251:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o252:
cmp byte [tape + r8], 0
jz c252
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o252
c252:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o253:
cmp byte [tape + r8], 0
jz c253
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o253
c253:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o254:
cmp byte [tape + r8], 0
jz c254
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o254
c254:
sub r8, 29
and r8, 0xFFFF
call z
jmp o24f
c24f:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o255:
cmp byte [tape + r8], 0
jz c255
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o255
c255:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o256:
cmp byte [tape + r8], 0
jz c256
add r8, 1
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 18
and r8, 0xFFFF
call z
add r8, 18
and r8, 0xFFFF
mov r13b, 1
mov r12, 18
call ms
sub r8, 28
and r8, 0xFFFF
call z
add r8, 28
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
call z
add r8, 20
and r8, 0xFFFF
mov r13b, 1
mov r12, 20
call ms
sub r8, 29
and r8, 0xFFFF
call z
jmp o256
c256:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o257:
cmp byte [tape + r8], 0
jz c257
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o257
c257:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o258:
cmp byte [tape + r8], 0
jz c258
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o258
c258:
sub r8, 2
and r8, 0xFFFF
o259:
cmp byte [tape + r8], 0
jz c259
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o25a:
cmp byte [tape + r8], 0
jz c25a
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25a
c25a:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o25b:
cmp byte [tape + r8], 0
jz c25b
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o25b
c25b:
sub r8, 1
and r8, 0xFFFF
o25c:
cmp byte [tape + r8], 0
jz c25c
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o25c
c25c:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o259
c259:
add r8, 3
and r8, 0xFFFF
call z
call z
add byte [tape + r8], 15
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o25d:
cmp byte [tape + r8], 0
jz c25d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25d
c25d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o25e:
cmp byte [tape + r8], 0
jz c25e
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25e
c25e:
sub r8, 2
and r8, 0xFFFF
o25f:
cmp byte [tape + r8], 0
jz c25f
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o260:
cmp byte [tape + r8], 0
jz c260
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o260
c260:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o261:
cmp byte [tape + r8], 0
jz c261
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o261
c261:
sub r8, 1
and r8, 0xFFFF
o262:
cmp byte [tape + r8], 0
jz c262
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o262
c262:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25f
c25f:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o263:
cmp byte [tape + r8], 0
jz c263
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o263
c263:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o264:
cmp byte [tape + r8], 0
jz c264
add r8, 29
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
o265:
cmp byte [tape + r8], 0
jz c265
add r8, 20
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o265
c265:
sub r8, 8
and r8, 0xFFFF
mov r13b, 1
mov r12, 8
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o266:
cmp byte [tape + r8], 0
jz c266
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o266
c266:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o267:
cmp byte [tape + r8], 0
jz c267
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o267
c267:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o268:
cmp byte [tape + r8], 0
jz c268
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o268
c268:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o269:
cmp byte [tape + r8], 0
jz c269
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o269
c269:
sub r8, 29
and r8, 0xFFFF
call z
jmp o264
c264:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o26a:
cmp byte [tape + r8], 0
jz c26a
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26a
c26a:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o26b:
cmp byte [tape + r8], 0
jz c26b
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
o26c:
cmp byte [tape + r8], 0
jz c26c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 8
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26c
c26c:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
call o
sub byte [tape + r8], 2
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 7
call o
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 6
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub byte [tape + r8], 7
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
add r8, 2
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 2
call o
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 7
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o26b
c26b:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 2
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o26d:
cmp byte [tape + r8], 0
jz c26d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26d
c26d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o26e:
cmp byte [tape + r8], 0
jz c26e
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26e
c26e:
sub r8, 2
and r8, 0xFFFF
o26f:
cmp byte [tape + r8], 0
jz c26f
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o270:
cmp byte [tape + r8], 0
jz c270
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o270
c270:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o271:
cmp byte [tape + r8], 0
jz c271
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o271
c271:
sub r8, 1
and r8, 0xFFFF
o272:
cmp byte [tape + r8], 0
jz c272
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o272
c272:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26f
c26f:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o273:
cmp byte [tape + r8], 0
jz c273
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o273
c273:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o274:
cmp byte [tape + r8], 0
jz c274
add r8, 29
and r8, 0xFFFF
call z
sub r8, 20
and r8, 0xFFFF
o275:
cmp byte [tape + r8], 0
jz c275
add r8, 20
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o275
c275:
sub r8, 8
and r8, 0xFFFF
mov r13b, 1
mov r12, 8
call m
call z
add r8, 52
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o276:
cmp byte [tape + r8], 0
jz c276
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o276
c276:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o277:
cmp byte [tape + r8], 0
jz c277
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o277
c277:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o278:
cmp byte [tape + r8], 0
jz c278
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o278
c278:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o279:
cmp byte [tape + r8], 0
jz c279
sub r8, 31
and r8, 0xFFFF
call z
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call ms
add r8, 30
and r8, 0xFFFF
call z
jmp o279
c279:
sub r8, 29
and r8, 0xFFFF
call z
jmp o274
c274:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o27a:
cmp byte [tape + r8], 0
jz c27a
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27a
c27a:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o27b:
cmp byte [tape + r8], 0
jz c27b
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
o27c:
cmp byte [tape + r8], 0
jz c27c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27c
c27c:
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
call o
add byte [tape + r8], 5
call o
sub byte [tape + r8], 5
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 5
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 2
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
call o
sub byte [tape + r8], 7
call o
sub r8, 1
and r8, 0xFFFF
call o
add byte [tape + r8], 1
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
add byte [tape + r8], 1
call o
add byte [tape + r8], 1
call o
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 4
call o
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
call o
sub r8, 1
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 6
call o
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
call o
sub byte [tape + r8], 7
call o
add r8, 1
and r8, 0xFFFF
call o
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 7
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
call z
jmp o27b
c27b:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 3
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 2
mov r13b, 16
mov r12, 1
call m
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
o27d:
cmp byte [tape + r8], 0
jz c27d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27d
c27d:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o27e:
cmp byte [tape + r8], 0
jz c27e
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27e
c27e:
sub r8, 2
and r8, 0xFFFF
o27f:
cmp byte [tape + r8], 0
jz c27f
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
o280:
cmp byte [tape + r8], 0
jz c280
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o280
c280:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add r8, 2
and r8, 0xFFFF
o281:
cmp byte [tape + r8], 0
jz c281
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
jmp o281
c281:
sub r8, 1
and r8, 0xFFFF
o282:
cmp byte [tape + r8], 0
jz c282
sub r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
call z
jmp o282
c282:
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27f
c27f:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o283:
cmp byte [tape + r8], 0
jz c283
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o283
c283:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o284:
cmp byte [tape + r8], 0
jz c284
add r8, 29
and r8, 0xFFFF
call z
sub r8, 21
and r8, 0xFFFF
o285:
cmp byte [tape + r8], 0
jz c285
add r8, 21
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 28
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o285
c285:
sub r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 7
call m
call z
add r8, 52
and r8, 0xFFFF
call z
sub r8, 24
and r8, 0xFFFF
mov r13b, 1
mov r12, 27
call ms
sub byte [tape + r8], 1
add r8, 24
and r8, 0xFFFF
o286:
cmp byte [tape + r8], 0
jz c286
sub r8, 51
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 52
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o286
c286:
sub r8, 52
and r8, 0xFFFF
mov r13b, 1
mov r12, 52
call m
add r8, 1
and r8, 0xFFFF
o287:
cmp byte [tape + r8], 0
jz c287
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 27
and r8, 0xFFFF
call z
jmp o287
c287:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
o288:
cmp byte [tape + r8], 0
jz c288
sub r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 28
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o288
c288:
sub r8, 28
and r8, 0xFFFF
mov r13b, 1
mov r12, 28
call m
add r8, 28
and r8, 0xFFFF
o289:
cmp byte [tape + r8], 0
jz c289
sub r8, 30
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 31
and r8, 0xFFFF
call z
jmp o289
c289:
sub r8, 29
and r8, 0xFFFF
call z
jmp o284
c284:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o28a:
cmp byte [tape + r8], 0
jz c28a
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o28a
c28a:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o28b:
cmp byte [tape + r8], 0
jz c28b
sub r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
jmp o28b
c28b:
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
o28c:
cmp byte [tape + r8], 0
jz c28c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o28c
c28c:
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 1
and r8, 0xFFFF
o28d:
cmp byte [tape + r8], 0
jz c28d
sub r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
jmp o28d
c28d:
sub r8, 2
and r8, 0xFFFF
jmp o1
c1:
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

