; compiled by boyfriend -- riir nation!
format ELF64
public _start

section '.bss' writable
tape rb 65536

section '.text' executable
_start:
xor r8, r8

add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 4
mov r13b, 4
mov r12, 1
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 6
mov r12, 1
call ms
add byte [tape + r8], 1
o0:
cmp byte [tape + r8], 0
jz c0
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 4
and r8, 0xFFFF
o1:
cmp byte [tape + r8], 0
jz c1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1
c1:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 4
mov r13b, 8
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
call o
call z
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 3
mov r13b, 3
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
o2:
cmp byte [tape + r8], 0
jz c2
add r8, 2
and r8, 0xFFFF
call o
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2
c2:
add r8, 2
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 2
mov r13b, 5
mov r12, 1
call ms
sub r8, 1
and r8, 0xFFFF
call o
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 4
and r8, 0xFFFF
o3:
cmp byte [tape + r8], 0
jz c3
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3
c3:
sub r8, 2
and r8, 0xFFFF
o4:
cmp byte [tape + r8], 0
jz c4
add r8, 4
and r8, 0xFFFF
call o
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 10
o5:
cmp byte [tape + r8], 0
jz c5
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
o6:
cmp byte [tape + r8], 0
jz c6
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 11
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6
c6:
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
o7:
cmp byte [tape + r8], 0
jz c7
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o7
c7:
add r8, 3
and r8, 0xFFFF
o8:
cmp byte [tape + r8], 0
jz c8
add r8, 12
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o8
c8:
add r8, 12
and r8, 0xFFFF
o9:
cmp byte [tape + r8], 0
jz c9
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o9
c9:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
oa:
cmp byte [tape + r8], 0
jz ca
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oa
ca:
add r8, 1
and r8, 0xFFFF
ob:
cmp byte [tape + r8], 0
jz cb
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp ob
cb:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 9
mov r13b, 5
mov r12, 1
call m
add r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call ms
sub r8, 2
and r8, 0xFFFF
oc:
cmp byte [tape + r8], 0
jz cc
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 3
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oc
cc:
add r8, 1
and r8, 0xFFFF
call o
call z
sub r8, 17
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o5
c5:
add byte [tape + r8], 10
call o
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o4
c4:
add r8, 4
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 8
mov r13b, 8
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 2
call o
call z
sub r8, 1
and r8, 0xFFFF
call i
sub byte [tape + r8], 10
mov r13b, 1
mov r12, 1
call ms
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
od:
cmp byte [tape + r8], 0
jz cd
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
sub r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp od
cd:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
add r8, 5
and r8, 0xFFFF
oe:
cmp byte [tape + r8], 0
jz ce
call z
sub r8, 2
and r8, 0xFFFF
call i
sub r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
of:
cmp byte [tape + r8], 0
jz cf
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp of
cf:
add r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 10
o10:
cmp byte [tape + r8], 0
jz c10
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 4
and r8, 0xFFFF
o11:
cmp byte [tape + r8], 0
jz c11
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o11
c11:
add r8, 1
and r8, 0xFFFF
o12:
cmp byte [tape + r8], 0
jz c12
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o12
c12:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
mov r13b, 11
mov r12, 1
call m
sub r8, 6
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 4
and r8, 0xFFFF
o13:
cmp byte [tape + r8], 0
jz c13
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o13
c13:
add r8, 4
and r8, 0xFFFF
o14:
cmp byte [tape + r8], 0
jz c14
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o14
c14:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 10
mov r13b, 1
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
o15:
cmp byte [tape + r8], 0
jz c15
add r8, 12
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o15
c15:
add r8, 12
and r8, 0xFFFF
o16:
cmp byte [tape + r8], 0
jz c16
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o16
c16:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o17:
cmp byte [tape + r8], 0
jz c17
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o17
c17:
add r8, 1
and r8, 0xFFFF
o18:
cmp byte [tape + r8], 0
jz c18
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o18
c18:
sub r8, 11
and r8, 0xFFFF
call i
call z
jmp o10
c10:
add r8, 1
and r8, 0xFFFF
jmp oe
ce:
add r8, 1
and r8, 0xFFFF
o19:
cmp byte [tape + r8], 0
jz c19
add byte [tape + r8], 10
o1a:
cmp byte [tape + r8], 0
jz c1a
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a
c1a:
add r8, 1
and r8, 0xFFFF
o1b:
cmp byte [tape + r8], 0
jz c1b
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
o1c:
cmp byte [tape + r8], 0
jz c1c
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c
c1c:
add r8, 4
and r8, 0xFFFF
o1d:
cmp byte [tape + r8], 0
jz c1d
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o1d
c1d:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o1e:
cmp byte [tape + r8], 0
jz c1e
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1e
c1e:
add r8, 1
and r8, 0xFFFF
o1f:
cmp byte [tape + r8], 0
jz c1f
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o1f
c1f:
sub r8, 8
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
o20:
cmp byte [tape + r8], 0
jz c20
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o20
c20:
sub r8, 2
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
o21:
cmp byte [tape + r8], 0
jz c21
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o21
c21:
add r8, 4
and r8, 0xFFFF
o22:
cmp byte [tape + r8], 0
jz c22
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 2
and r8, 0xFFFF
jmp o22
c22:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 1
call m
sub r8, 1
and r8, 0xFFFF
o23:
cmp byte [tape + r8], 0
jz c23
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o23
c23:
sub r8, 8
and r8, 0xFFFF
jmp o1b
c1b:
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 10
o24:
cmp byte [tape + r8], 0
jz c24
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
o25:
cmp byte [tape + r8], 0
jz c25
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
o26:
cmp byte [tape + r8], 0
jz c26
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 11
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o26
c26:
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 1
call m
add r8, 1
and r8, 0xFFFF
o27:
cmp byte [tape + r8], 0
jz c27
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o27
c27:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o28:
cmp byte [tape + r8], 0
jz c28
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o28
c28:
add r8, 9
and r8, 0xFFFF
mov r13b, 1
mov r12, 2
call m
add r8, 2
and r8, 0xFFFF
o29:
cmp byte [tape + r8], 0
jz c29
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o29
c29:
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 12
mov r13b, 1
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
o2a:
cmp byte [tape + r8], 0
jz c2a
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2a
c2a:
add r8, 4
and r8, 0xFFFF
o2b:
cmp byte [tape + r8], 0
jz c2b
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o2b
c2b:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o2c:
cmp byte [tape + r8], 0
jz c2c
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2c
c2c:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o2d:
cmp byte [tape + r8], 0
jz c2d
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2d
c2d:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o2e:
cmp byte [tape + r8], 0
jz c2e
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o2e
c2e:
sub r8, 7
and r8, 0xFFFF
o2f:
cmp byte [tape + r8], 0
jz c2f
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o2f
c2f:
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 7
call ms
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 11
mov r13b, 1
mov r12, 3
call m
add r8, 3
and r8, 0xFFFF
o30:
cmp byte [tape + r8], 0
jz c30
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o30
c30:
add r8, 4
and r8, 0xFFFF
o31:
cmp byte [tape + r8], 0
jz c31
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o31
c31:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o32:
cmp byte [tape + r8], 0
jz c32
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o32
c32:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o33:
cmp byte [tape + r8], 0
jz c33
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o33
c33:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o34:
cmp byte [tape + r8], 0
jz c34
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o34
c34:
sub r8, 7
and r8, 0xFFFF
o35:
cmp byte [tape + r8], 0
jz c35
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o35
c35:
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 7
call ms
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 11
o36:
cmp byte [tape + r8], 0
jz c36
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o36
c36:
add r8, 7
and r8, 0xFFFF
o37:
cmp byte [tape + r8], 0
jz c37
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 3
and r8, 0xFFFF
jmp o37
c37:
add r8, 3
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o38:
cmp byte [tape + r8], 0
jz c38
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o38
c38:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o39:
cmp byte [tape + r8], 0
jz c39
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o39
c39:
add r8, 7
and r8, 0xFFFF
mov r13b, 1
mov r12, 3
call ms
sub r8, 3
and r8, 0xFFFF
o3a:
cmp byte [tape + r8], 0
jz c3a
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3a
c3a:
sub r8, 7
and r8, 0xFFFF
o3b:
cmp byte [tape + r8], 0
jz c3b
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o3b
c3b:
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 7
call ms
sub r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 4
o3c:
cmp byte [tape + r8], 0
jz c3c
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
o3d:
cmp byte [tape + r8], 0
jz c3d
add r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
call z
jmp o3d
c3d:
sub r8, 7
and r8, 0xFFFF
o3e:
cmp byte [tape + r8], 0
jz c3e
add r8, 12
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o3e
c3e:
o3f:
cmp byte [tape + r8], 0
jz c3f
call o
call o
jmp o3f
c3f:
add r8, 12
and r8, 0xFFFF
o40:
cmp byte [tape + r8], 0
jz c40
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 4
call m
add r8, 2
and r8, 0xFFFF
jmp o40
c40:
add r8, 3
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
mov r13b, 1
mov r12, 1
call m
sub r8, 1
and r8, 0xFFFF
o41:
cmp byte [tape + r8], 0
jz c41
sub byte [tape + r8], 1
mov r13b, 1
mov r12, 4
call ms
sub r8, 4
and r8, 0xFFFF
jmp o41
c41:
sub r8, 6
and r8, 0xFFFF
call z
jmp o3c
c3c:
sub r8, 7
and r8, 0xFFFF
call z
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o25
c25:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o24
c24:
add r8, 11
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
jmp o19
c19:
sub r8, 10
and r8, 0xFFFF
jmp o0
c0:
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

