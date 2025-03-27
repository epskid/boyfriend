; compiled by boyfriend -- riir nation!
format ELF64
public _start

section '.bss' writable
tape rb 65536

section '.text' executable
_start:
xor r8, r8

add byte [tape + r8], 13
o0:
cmp byte [tape + r8], 0
jz c0
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 5
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
jmp o0
c0:
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 6
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 3
add r8, 10
and r8, 0xFFFF
add byte [tape + r8], 15
o1:
cmp byte [tape + r8], 0
jz c1
o2:
cmp byte [tape + r8], 0
jz c2
add r8, 9
and r8, 0xFFFF
jmp o2
c2:
add byte [tape + r8], 1
o3:
cmp byte [tape + r8], 0
jz c3
sub r8, 9
and r8, 0xFFFF
jmp o3
c3:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1
c1:
add byte [tape + r8], 1
o4:
cmp byte [tape + r8], 0
jz c4
add r8, 8
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
jmp o4
c4:
sub r8, 9
and r8, 0xFFFF
o5:
cmp byte [tape + r8], 0
jz c5
sub r8, 9
and r8, 0xFFFF
jmp o5
c5:
add r8, 8
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 5
o6:
cmp byte [tape + r8], 0
jz c6
sub byte [tape + r8], 1
o7:
cmp byte [tape + r8], 0
jz c7
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o7
c7:
add r8, 9
and r8, 0xFFFF
jmp o6
c6:
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 17
and r8, 0xFFFF
o8:
cmp byte [tape + r8], 0
jz c8
sub r8, 9
and r8, 0xFFFF
jmp o8
c8:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
o9:
cmp byte [tape + r8], 0
jz c9
add r8, 6
and r8, 0xFFFF
oa:
cmp byte [tape + r8], 0
jz ca
add r8, 7
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
jmp oa
ca:
sub r8, 9
and r8, 0xFFFF
ob:
cmp byte [tape + r8], 0
jz cb
sub r8, 9
and r8, 0xFFFF
jmp ob
cb:
add r8, 7
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 4
oc:
cmp byte [tape + r8], 0
jz cc
sub byte [tape + r8], 1
od:
cmp byte [tape + r8], 0
jz cd
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp od
cd:
add r8, 9
and r8, 0xFFFF
jmp oc
cc:
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 7
oe:
cmp byte [tape + r8], 0
jz ce
sub byte [tape + r8], 1
of:
cmp byte [tape + r8], 0
jz cf
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp of
cf:
add r8, 9
and r8, 0xFFFF
jmp oe
ce:
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 16
and r8, 0xFFFF
o10:
cmp byte [tape + r8], 0
jz c10
sub r8, 9
and r8, 0xFFFF
jmp o10
c10:
add r8, 3
and r8, 0xFFFF
o11:
cmp byte [tape + r8], 0
jz c11
call z
add r8, 6
and r8, 0xFFFF
o12:
cmp byte [tape + r8], 0
jz c12
add r8, 7
and r8, 0xFFFF
o13:
cmp byte [tape + r8], 0
jz c13
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o13
c13:
sub r8, 6
and r8, 0xFFFF
o14:
cmp byte [tape + r8], 0
jz c14
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o14
c14:
add r8, 8
and r8, 0xFFFF
jmp o12
c12:
sub r8, 9
and r8, 0xFFFF
o15:
cmp byte [tape + r8], 0
jz c15
sub r8, 9
and r8, 0xFFFF
jmp o15
c15:
add r8, 9
and r8, 0xFFFF
o16:
cmp byte [tape + r8], 0
jz c16
add r8, 8
and r8, 0xFFFF
o17:
cmp byte [tape + r8], 0
jz c17
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o17
c17:
sub r8, 7
and r8, 0xFFFF
o18:
cmp byte [tape + r8], 0
jz c18
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o18
c18:
add r8, 8
and r8, 0xFFFF
jmp o16
c16:
sub r8, 9
and r8, 0xFFFF
o19:
cmp byte [tape + r8], 0
jz c19
sub r8, 9
and r8, 0xFFFF
jmp o19
c19:
add r8, 7
and r8, 0xFFFF
o1a:
cmp byte [tape + r8], 0
jz c1a
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1a
c1a:
sub r8, 7
and r8, 0xFFFF
o1b:
cmp byte [tape + r8], 0
jz c1b
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o1b
c1b:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o1c:
cmp byte [tape + r8], 0
jz c1c
o1d:
cmp byte [tape + r8], 0
jz c1d
add r8, 9
and r8, 0xFFFF
jmp o1d
c1d:
add byte [tape + r8], 1
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
add r8, 1
and r8, 0xFFFF
call z
sub r8, 9
and r8, 0xFFFF
o1e:
cmp byte [tape + r8], 0
jz c1e
sub r8, 9
and r8, 0xFFFF
jmp o1e
c1e:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1c
c1c:
add byte [tape + r8], 1
o1f:
cmp byte [tape + r8], 0
jz c1f
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o1f
c1f:
sub r8, 9
and r8, 0xFFFF
o20:
cmp byte [tape + r8], 0
jz c20
sub r8, 9
and r8, 0xFFFF
jmp o20
c20:
add r8, 9
and r8, 0xFFFF
o21:
cmp byte [tape + r8], 0
jz c21
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o22:
cmp byte [tape + r8], 0
jz c22
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o22
c22:
sub r8, 4
and r8, 0xFFFF
o23:
cmp byte [tape + r8], 0
jz c23
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
o24:
cmp byte [tape + r8], 0
jz c24
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o25:
cmp byte [tape + r8], 0
jz c25
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o25
c25:
sub r8, 2
and r8, 0xFFFF
o26:
cmp byte [tape + r8], 0
jz c26
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o26
c26:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o24
c24:
sub r8, 8
and r8, 0xFFFF
o27:
cmp byte [tape + r8], 0
jz c27
sub r8, 9
and r8, 0xFFFF
jmp o27
c27:
jmp o23
c23:
add r8, 9
and r8, 0xFFFF
o28:
cmp byte [tape + r8], 0
jz c28
add r8, 9
and r8, 0xFFFF
jmp o28
c28:
sub r8, 9
and r8, 0xFFFF
o29:
cmp byte [tape + r8], 0
jz c29
add r8, 1
and r8, 0xFFFF
o2a:
cmp byte [tape + r8], 0
jz c2a
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o2a
c2a:
sub r8, 10
and r8, 0xFFFF
jmp o29
c29:
add r8, 1
and r8, 0xFFFF
o2b:
cmp byte [tape + r8], 0
jz c2b
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o2b
c2b:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o21
c21:
sub r8, 9
and r8, 0xFFFF
o2c:
cmp byte [tape + r8], 0
jz c2c
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o2d:
cmp byte [tape + r8], 0
jz c2d
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o2e:
cmp byte [tape + r8], 0
jz c2e
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o2e
c2e:
sub r8, 1
and r8, 0xFFFF
o2f:
cmp byte [tape + r8], 0
jz c2f
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o2f
c2f:
add r8, 4
and r8, 0xFFFF
jmp o2d
c2d:
sub r8, 3
and r8, 0xFFFF
o30:
cmp byte [tape + r8], 0
jz c30
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o30
c30:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o2c
c2c:
add r8, 9
and r8, 0xFFFF
o31:
cmp byte [tape + r8], 0
jz c31
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o31
c31:
sub r8, 9
and r8, 0xFFFF
o32:
cmp byte [tape + r8], 0
jz c32
sub r8, 9
and r8, 0xFFFF
jmp o32
c32:
add r8, 9
and r8, 0xFFFF
o33:
cmp byte [tape + r8], 0
jz c33
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o34:
cmp byte [tape + r8], 0
jz c34
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o34
c34:
sub r8, 5
and r8, 0xFFFF
o35:
cmp byte [tape + r8], 0
jz c35
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o36:
cmp byte [tape + r8], 0
jz c36
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o37:
cmp byte [tape + r8], 0
jz c37
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o37
c37:
sub r8, 3
and r8, 0xFFFF
o38:
cmp byte [tape + r8], 0
jz c38
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o38
c38:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o36
c36:
sub r8, 8
and r8, 0xFFFF
o39:
cmp byte [tape + r8], 0
jz c39
sub r8, 9
and r8, 0xFFFF
jmp o39
c39:
jmp o35
c35:
add r8, 9
and r8, 0xFFFF
o3a:
cmp byte [tape + r8], 0
jz c3a
add r8, 9
and r8, 0xFFFF
jmp o3a
c3a:
sub r8, 9
and r8, 0xFFFF
o3b:
cmp byte [tape + r8], 0
jz c3b
add r8, 2
and r8, 0xFFFF
o3c:
cmp byte [tape + r8], 0
jz c3c
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o3c
c3c:
sub r8, 11
and r8, 0xFFFF
jmp o3b
c3b:
add r8, 2
and r8, 0xFFFF
o3d:
cmp byte [tape + r8], 0
jz c3d
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o3d
c3d:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o33
c33:
sub r8, 9
and r8, 0xFFFF
o3e:
cmp byte [tape + r8], 0
jz c3e
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o3f:
cmp byte [tape + r8], 0
jz c3f
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o40:
cmp byte [tape + r8], 0
jz c40
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o40
c40:
sub r8, 1
and r8, 0xFFFF
o41:
cmp byte [tape + r8], 0
jz c41
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o41
c41:
add r8, 4
and r8, 0xFFFF
jmp o3f
c3f:
sub r8, 3
and r8, 0xFFFF
o42:
cmp byte [tape + r8], 0
jz c42
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o42
c42:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o3e
c3e:
add r8, 9
and r8, 0xFFFF
o43:
cmp byte [tape + r8], 0
jz c43
add r8, 4
and r8, 0xFFFF
o44:
cmp byte [tape + r8], 0
jz c44
sub byte [tape + r8], 1
sub r8, 36
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 36
and r8, 0xFFFF
jmp o44
c44:
add r8, 5
and r8, 0xFFFF
jmp o43
c43:
sub r8, 9
and r8, 0xFFFF
o45:
cmp byte [tape + r8], 0
jz c45
sub r8, 9
and r8, 0xFFFF
jmp o45
c45:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o46:
cmp byte [tape + r8], 0
jz c46
o47:
cmp byte [tape + r8], 0
jz c47
add r8, 9
and r8, 0xFFFF
jmp o47
c47:
sub r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
o48:
cmp byte [tape + r8], 0
jz c48
sub r8, 9
and r8, 0xFFFF
jmp o48
c48:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o46
c46:
add byte [tape + r8], 1
add r8, 21
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o49:
cmp byte [tape + r8], 0
jz c49
sub r8, 9
and r8, 0xFFFF
jmp o49
c49:
add r8, 9
and r8, 0xFFFF
o4a:
cmp byte [tape + r8], 0
jz c4a
add r8, 3
and r8, 0xFFFF
o4b:
cmp byte [tape + r8], 0
jz c4b
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o4b
c4b:
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o4c:
cmp byte [tape + r8], 0
jz c4c
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o4d:
cmp byte [tape + r8], 0
jz c4d
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o4d
c4d:
sub r8, 4
and r8, 0xFFFF
o4e:
cmp byte [tape + r8], 0
jz c4e
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
o4f:
cmp byte [tape + r8], 0
jz c4f
sub r8, 9
and r8, 0xFFFF
jmp o4f
c4f:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o50:
cmp byte [tape + r8], 0
jz c50
add r8, 9
and r8, 0xFFFF
jmp o50
c50:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o4e
c4e:
jmp o4c
c4c:
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o51:
cmp byte [tape + r8], 0
jz c51
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o51
c51:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
o52:
cmp byte [tape + r8], 0
jz c52
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o53:
cmp byte [tape + r8], 0
jz c53
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o53
c53:
sub r8, 3
and r8, 0xFFFF
o54:
cmp byte [tape + r8], 0
jz c54
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 12
and r8, 0xFFFF
o55:
cmp byte [tape + r8], 0
jz c55
sub r8, 9
and r8, 0xFFFF
jmp o55
c55:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o56:
cmp byte [tape + r8], 0
jz c56
add r8, 9
and r8, 0xFFFF
jmp o56
c56:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o54
c54:
jmp o52
c52:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o57:
cmp byte [tape + r8], 0
jz c57
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o58:
cmp byte [tape + r8], 0
jz c58
add r8, 9
and r8, 0xFFFF
jmp o58
c58:
sub r8, 8
and r8, 0xFFFF
jmp o57
c57:
add r8, 8
and r8, 0xFFFF
jmp o4a
c4a:
sub r8, 9
and r8, 0xFFFF
o59:
cmp byte [tape + r8], 0
jz c59
sub r8, 9
and r8, 0xFFFF
jmp o59
c59:
sub r8, 7
and r8, 0xFFFF
o5a:
cmp byte [tape + r8], 0
jz c5a
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o5a
c5a:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 26
add r8, 2
and r8, 0xFFFF
o5b:
cmp byte [tape + r8], 0
jz c5b
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o5b
c5b:
sub r8, 4
and r8, 0xFFFF
o5c:
cmp byte [tape + r8], 0
jz c5c
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
jmp o5c
c5c:
add r8, 2
and r8, 0xFFFF
o5d:
cmp byte [tape + r8], 0
jz c5d
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o5e:
cmp byte [tape + r8], 0
jz c5e
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
call z
jmp o5e
c5e:
add r8, 1
and r8, 0xFFFF
o5f:
cmp byte [tape + r8], 0
jz c5f
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o60:
cmp byte [tape + r8], 0
jz c60
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o60
c60:
add r8, 3
and r8, 0xFFFF
jmp o5f
c5f:
add r8, 13
and r8, 0xFFFF
o61:
cmp byte [tape + r8], 0
jz c61
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 5
and r8, 0xFFFF
jmp o61
c61:
sub r8, 9
and r8, 0xFFFF
o62:
cmp byte [tape + r8], 0
jz c62
sub r8, 9
and r8, 0xFFFF
jmp o62
c62:
add r8, 3
and r8, 0xFFFF
call z
add r8, 6
and r8, 0xFFFF
o63:
cmp byte [tape + r8], 0
jz c63
add r8, 5
and r8, 0xFFFF
o64:
cmp byte [tape + r8], 0
jz c64
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o64
c64:
sub r8, 4
and r8, 0xFFFF
o65:
cmp byte [tape + r8], 0
jz c65
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o65
c65:
add r8, 8
and r8, 0xFFFF
jmp o63
c63:
sub r8, 9
and r8, 0xFFFF
o66:
cmp byte [tape + r8], 0
jz c66
sub r8, 9
and r8, 0xFFFF
jmp o66
c66:
add r8, 9
and r8, 0xFFFF
o67:
cmp byte [tape + r8], 0
jz c67
add r8, 2
and r8, 0xFFFF
o68:
cmp byte [tape + r8], 0
jz c68
sub byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o68
c68:
add r8, 7
and r8, 0xFFFF
jmp o67
c67:
sub r8, 9
and r8, 0xFFFF
o69:
cmp byte [tape + r8], 0
jz c69
sub r8, 9
and r8, 0xFFFF
jmp o69
c69:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o6a:
cmp byte [tape + r8], 0
jz c6a
o6b:
cmp byte [tape + r8], 0
jz c6b
add r8, 9
and r8, 0xFFFF
jmp o6b
c6b:
add byte [tape + r8], 1
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
add r8, 1
and r8, 0xFFFF
call z
sub r8, 9
and r8, 0xFFFF
o6c:
cmp byte [tape + r8], 0
jz c6c
sub r8, 9
and r8, 0xFFFF
jmp o6c
c6c:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o6a
c6a:
add byte [tape + r8], 1
o6d:
cmp byte [tape + r8], 0
jz c6d
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o6d
c6d:
sub r8, 9
and r8, 0xFFFF
o6e:
cmp byte [tape + r8], 0
jz c6e
sub r8, 9
and r8, 0xFFFF
jmp o6e
c6e:
add r8, 9
and r8, 0xFFFF
o6f:
cmp byte [tape + r8], 0
jz c6f
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o70:
cmp byte [tape + r8], 0
jz c70
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o70
c70:
sub r8, 5
and r8, 0xFFFF
o71:
cmp byte [tape + r8], 0
jz c71
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o72:
cmp byte [tape + r8], 0
jz c72
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o73:
cmp byte [tape + r8], 0
jz c73
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o73
c73:
sub r8, 2
and r8, 0xFFFF
o74:
cmp byte [tape + r8], 0
jz c74
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o74
c74:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o72
c72:
sub r8, 8
and r8, 0xFFFF
o75:
cmp byte [tape + r8], 0
jz c75
sub r8, 9
and r8, 0xFFFF
jmp o75
c75:
jmp o71
c71:
add r8, 9
and r8, 0xFFFF
o76:
cmp byte [tape + r8], 0
jz c76
add r8, 9
and r8, 0xFFFF
jmp o76
c76:
sub r8, 9
and r8, 0xFFFF
o77:
cmp byte [tape + r8], 0
jz c77
add r8, 1
and r8, 0xFFFF
o78:
cmp byte [tape + r8], 0
jz c78
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o78
c78:
sub r8, 10
and r8, 0xFFFF
jmp o77
c77:
add r8, 1
and r8, 0xFFFF
o79:
cmp byte [tape + r8], 0
jz c79
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o79
c79:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o6f
c6f:
sub r8, 9
and r8, 0xFFFF
o7a:
cmp byte [tape + r8], 0
jz c7a
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o7b:
cmp byte [tape + r8], 0
jz c7b
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o7c:
cmp byte [tape + r8], 0
jz c7c
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o7c
c7c:
sub r8, 1
and r8, 0xFFFF
o7d:
cmp byte [tape + r8], 0
jz c7d
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o7d
c7d:
add r8, 3
and r8, 0xFFFF
jmp o7b
c7b:
sub r8, 2
and r8, 0xFFFF
o7e:
cmp byte [tape + r8], 0
jz c7e
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o7e
c7e:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o7a
c7a:
add r8, 9
and r8, 0xFFFF
o7f:
cmp byte [tape + r8], 0
jz c7f
add r8, 6
and r8, 0xFFFF
o80:
cmp byte [tape + r8], 0
jz c80
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o80
c80:
sub r8, 5
and r8, 0xFFFF
o81:
cmp byte [tape + r8], 0
jz c81
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o81
c81:
add r8, 8
and r8, 0xFFFF
jmp o7f
c7f:
sub r8, 9
and r8, 0xFFFF
o82:
cmp byte [tape + r8], 0
jz c82
sub r8, 9
and r8, 0xFFFF
jmp o82
c82:
add r8, 9
and r8, 0xFFFF
o83:
cmp byte [tape + r8], 0
jz c83
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o83
c83:
sub r8, 9
and r8, 0xFFFF
o84:
cmp byte [tape + r8], 0
jz c84
sub r8, 9
and r8, 0xFFFF
jmp o84
c84:
add r8, 9
and r8, 0xFFFF
o85:
cmp byte [tape + r8], 0
jz c85
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o86:
cmp byte [tape + r8], 0
jz c86
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o86
c86:
sub r8, 5
and r8, 0xFFFF
o87:
cmp byte [tape + r8], 0
jz c87
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o88:
cmp byte [tape + r8], 0
jz c88
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o89:
cmp byte [tape + r8], 0
jz c89
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o89
c89:
sub r8, 2
and r8, 0xFFFF
o8a:
cmp byte [tape + r8], 0
jz c8a
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o8a
c8a:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o88
c88:
sub r8, 8
and r8, 0xFFFF
o8b:
cmp byte [tape + r8], 0
jz c8b
sub r8, 9
and r8, 0xFFFF
jmp o8b
c8b:
jmp o87
c87:
add r8, 9
and r8, 0xFFFF
o8c:
cmp byte [tape + r8], 0
jz c8c
add r8, 9
and r8, 0xFFFF
jmp o8c
c8c:
sub r8, 9
and r8, 0xFFFF
o8d:
cmp byte [tape + r8], 0
jz c8d
add r8, 1
and r8, 0xFFFF
o8e:
cmp byte [tape + r8], 0
jz c8e
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o8e
c8e:
sub r8, 10
and r8, 0xFFFF
jmp o8d
c8d:
add r8, 1
and r8, 0xFFFF
o8f:
cmp byte [tape + r8], 0
jz c8f
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o8f
c8f:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o85
c85:
sub r8, 9
and r8, 0xFFFF
o90:
cmp byte [tape + r8], 0
jz c90
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o91:
cmp byte [tape + r8], 0
jz c91
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o92:
cmp byte [tape + r8], 0
jz c92
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o92
c92:
sub r8, 1
and r8, 0xFFFF
o93:
cmp byte [tape + r8], 0
jz c93
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o93
c93:
add r8, 4
and r8, 0xFFFF
jmp o91
c91:
sub r8, 3
and r8, 0xFFFF
o94:
cmp byte [tape + r8], 0
jz c94
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o94
c94:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o90
c90:
add r8, 9
and r8, 0xFFFF
o95:
cmp byte [tape + r8], 0
jz c95
add r8, 4
and r8, 0xFFFF
o96:
cmp byte [tape + r8], 0
jz c96
sub byte [tape + r8], 1
sub r8, 36
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 36
and r8, 0xFFFF
jmp o96
c96:
add r8, 5
and r8, 0xFFFF
jmp o95
c95:
sub r8, 9
and r8, 0xFFFF
o97:
cmp byte [tape + r8], 0
jz c97
sub r8, 9
and r8, 0xFFFF
jmp o97
c97:
add r8, 9
and r8, 0xFFFF
o98:
cmp byte [tape + r8], 0
jz c98
add r8, 3
and r8, 0xFFFF
o99:
cmp byte [tape + r8], 0
jz c99
sub byte [tape + r8], 1
sub r8, 36
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 36
and r8, 0xFFFF
jmp o99
c99:
add r8, 6
and r8, 0xFFFF
jmp o98
c98:
sub r8, 9
and r8, 0xFFFF
o9a:
cmp byte [tape + r8], 0
jz c9a
sub r8, 9
and r8, 0xFFFF
jmp o9a
c9a:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o9b:
cmp byte [tape + r8], 0
jz c9b
o9c:
cmp byte [tape + r8], 0
jz c9c
add r8, 9
and r8, 0xFFFF
jmp o9c
c9c:
sub r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
o9d:
cmp byte [tape + r8], 0
jz c9d
sub r8, 9
and r8, 0xFFFF
jmp o9d
c9d:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o9b
c9b:
add byte [tape + r8], 1
o9e:
cmp byte [tape + r8], 0
jz c9e
add r8, 8
and r8, 0xFFFF
o9f:
cmp byte [tape + r8], 0
jz c9f
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o9f
c9f:
sub r8, 7
and r8, 0xFFFF
oa0:
cmp byte [tape + r8], 0
jz ca0
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp oa0
ca0:
add r8, 8
and r8, 0xFFFF
jmp o9e
c9e:
sub r8, 9
and r8, 0xFFFF
oa1:
cmp byte [tape + r8], 0
jz ca1
sub r8, 9
and r8, 0xFFFF
jmp oa1
ca1:
add r8, 9
and r8, 0xFFFF
oa2:
cmp byte [tape + r8], 0
jz ca2
add r8, 6
and r8, 0xFFFF
call z
add r8, 3
and r8, 0xFFFF
jmp oa2
ca2:
sub r8, 9
and r8, 0xFFFF
oa3:
cmp byte [tape + r8], 0
jz ca3
sub r8, 9
and r8, 0xFFFF
jmp oa3
ca3:
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
oa4:
cmp byte [tape + r8], 0
jz ca4
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp oa4
ca4:
add r8, 1
and r8, 0xFFFF
oa5:
cmp byte [tape + r8], 0
jz ca5
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
oa6:
cmp byte [tape + r8], 0
jz ca6
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
sub r8, 4
and r8, 0xFFFF
jmp oa6
ca6:
add r8, 5
and r8, 0xFFFF
oa7:
cmp byte [tape + r8], 0
jz ca7
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp oa7
ca7:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
jmp oa5
ca5:
sub r8, 1
and r8, 0xFFFF
oa8:
cmp byte [tape + r8], 0
jz ca8
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp oa8
ca8:
sub r8, 5
and r8, 0xFFFF
oa9:
cmp byte [tape + r8], 0
jz ca9
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp oa9
ca9:
add r8, 6
and r8, 0xFFFF
call z
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
oaa:
cmp byte [tape + r8], 0
jz caa
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp oaa
caa:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
oab:
cmp byte [tape + r8], 0
jz cab
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
oac:
cmp byte [tape + r8], 0
jz cac
add r8, 2
and r8, 0xFFFF
oad:
cmp byte [tape + r8], 0
jz cad
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp oad
cad:
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
oae:
cmp byte [tape + r8], 0
jz cae
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
oaf:
cmp byte [tape + r8], 0
jz caf
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp oaf
caf:
sub r8, 3
and r8, 0xFFFF
ob0:
cmp byte [tape + r8], 0
jz cb0
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 12
and r8, 0xFFFF
ob1:
cmp byte [tape + r8], 0
jz cb1
sub r8, 9
and r8, 0xFFFF
jmp ob1
cb1:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
ob2:
cmp byte [tape + r8], 0
jz cb2
add r8, 9
and r8, 0xFFFF
jmp ob2
cb2:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp ob0
cb0:
jmp oae
cae:
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
ob3:
cmp byte [tape + r8], 0
jz cb3
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp ob3
cb3:
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
ob4:
cmp byte [tape + r8], 0
jz cb4
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
ob5:
cmp byte [tape + r8], 0
jz cb5
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp ob5
cb5:
sub r8, 2
and r8, 0xFFFF
ob6:
cmp byte [tape + r8], 0
jz cb6
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 11
and r8, 0xFFFF
ob7:
cmp byte [tape + r8], 0
jz cb7
sub r8, 9
and r8, 0xFFFF
jmp ob7
cb7:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
ob8:
cmp byte [tape + r8], 0
jz cb8
add r8, 9
and r8, 0xFFFF
jmp ob8
cb8:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp ob6
cb6:
jmp ob4
cb4:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
ob9:
cmp byte [tape + r8], 0
jz cb9
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
oba:
cmp byte [tape + r8], 0
jz cba
add r8, 9
and r8, 0xFFFF
jmp oba
cba:
sub r8, 8
and r8, 0xFFFF
jmp ob9
cb9:
add r8, 8
and r8, 0xFFFF
jmp oac
cac:
sub r8, 9
and r8, 0xFFFF
obb:
cmp byte [tape + r8], 0
jz cbb
sub r8, 9
and r8, 0xFFFF
jmp obb
cbb:
add r8, 4
and r8, 0xFFFF
obc:
cmp byte [tape + r8], 0
jz cbc
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp obc
cbc:
sub r8, 4
and r8, 0xFFFF
obd:
cmp byte [tape + r8], 0
jz cbd
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
obe:
cmp byte [tape + r8], 0
jz cbe
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
obf:
cmp byte [tape + r8], 0
jz cbf
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp obf
cbf:
sub r8, 2
and r8, 0xFFFF
oc0:
cmp byte [tape + r8], 0
jz cc0
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp oc0
cc0:
add r8, 8
and r8, 0xFFFF
jmp obe
cbe:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
oc1:
cmp byte [tape + r8], 0
jz cc1
add r8, 1
and r8, 0xFFFF
oc2:
cmp byte [tape + r8], 0
jz cc2
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
oc3:
cmp byte [tape + r8], 0
jz cc3
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
oc4:
cmp byte [tape + r8], 0
jz cc4
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp oc4
cc4:
sub r8, 1
and r8, 0xFFFF
jmp oc3
cc3:
add r8, 1
and r8, 0xFFFF
oc5:
cmp byte [tape + r8], 0
jz cc5
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp oc5
cc5:
sub r8, 2
and r8, 0xFFFF
jmp oc2
cc2:
add r8, 1
and r8, 0xFFFF
oc6:
cmp byte [tape + r8], 0
jz cc6
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
oc7:
cmp byte [tape + r8], 0
jz cc7
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp oc7
cc7:
sub r8, 1
and r8, 0xFFFF
jmp oc6
cc6:
add r8, 1
and r8, 0xFFFF
oc8:
cmp byte [tape + r8], 0
jz cc8
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp oc8
cc8:
sub r8, 12
and r8, 0xFFFF
jmp oc1
cc1:
add r8, 4
and r8, 0xFFFF
call z
sub r8, 4
and r8, 0xFFFF
jmp obd
cbd:
add r8, 3
and r8, 0xFFFF
oc9:
cmp byte [tape + r8], 0
jz cc9
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp oc9
cc9:
sub r8, 3
and r8, 0xFFFF
oca:
cmp byte [tape + r8], 0
jz cca
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
ocb:
cmp byte [tape + r8], 0
jz ccb
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
occ:
cmp byte [tape + r8], 0
jz ccc
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
jmp occ
ccc:
sub r8, 1
and r8, 0xFFFF
ocd:
cmp byte [tape + r8], 0
jz ccd
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp ocd
ccd:
add r8, 8
and r8, 0xFFFF
jmp ocb
ccb:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
oce:
cmp byte [tape + r8], 0
jz cce
add r8, 1
and r8, 0xFFFF
ocf:
cmp byte [tape + r8], 0
jz ccf
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
od0:
cmp byte [tape + r8], 0
jz cd0
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
od1:
cmp byte [tape + r8], 0
jz cd1
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp od1
cd1:
add r8, 1
and r8, 0xFFFF
jmp od0
cd0:
sub r8, 1
and r8, 0xFFFF
od2:
cmp byte [tape + r8], 0
jz cd2
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
jmp od2
cd2:
sub r8, 1
and r8, 0xFFFF
jmp ocf
ccf:
add r8, 2
and r8, 0xFFFF
od3:
cmp byte [tape + r8], 0
jz cd3
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
od4:
cmp byte [tape + r8], 0
jz cd4
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
jmp od4
cd4:
add r8, 1
and r8, 0xFFFF
jmp od3
cd3:
sub r8, 1
and r8, 0xFFFF
od5:
cmp byte [tape + r8], 0
jz cd5
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp od5
cd5:
sub r8, 11
and r8, 0xFFFF
jmp oce
cce:
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
jmp oca
cca:
jmp oab
cab:
add r8, 4
and r8, 0xFFFF
od6:
cmp byte [tape + r8], 0
jz cd6
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp od6
cd6:
sub r8, 4
and r8, 0xFFFF
od7:
cmp byte [tape + r8], 0
jz cd7
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
od8:
cmp byte [tape + r8], 0
jz cd8
add r8, 9
and r8, 0xFFFF
jmp od8
cd8:
sub r8, 9
and r8, 0xFFFF
od9:
cmp byte [tape + r8], 0
jz cd9
add r8, 1
and r8, 0xFFFF
oda:
cmp byte [tape + r8], 0
jz cda
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
odb:
cmp byte [tape + r8], 0
jz cdb
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
odc:
cmp byte [tape + r8], 0
jz cdc
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp odc
cdc:
sub r8, 1
and r8, 0xFFFF
jmp odb
cdb:
add r8, 1
and r8, 0xFFFF
odd:
cmp byte [tape + r8], 0
jz cdd
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp odd
cdd:
sub r8, 2
and r8, 0xFFFF
jmp oda
cda:
add r8, 1
and r8, 0xFFFF
ode:
cmp byte [tape + r8], 0
jz cde
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
odf:
cmp byte [tape + r8], 0
jz cdf
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp odf
cdf:
sub r8, 1
and r8, 0xFFFF
jmp ode
cde:
add r8, 1
and r8, 0xFFFF
oe0:
cmp byte [tape + r8], 0
jz ce0
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp oe0
ce0:
sub r8, 12
and r8, 0xFFFF
jmp od9
cd9:
jmp od7
cd7:
add r8, 1
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 5
and r8, 0xFFFF
oe1:
cmp byte [tape + r8], 0
jz ce1
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 6
and r8, 0xFFFF
jmp oe1
ce1:
sub r8, 9
and r8, 0xFFFF
oe2:
cmp byte [tape + r8], 0
jz ce2
sub r8, 9
and r8, 0xFFFF
jmp oe2
ce2:
add r8, 9
and r8, 0xFFFF
oe3:
cmp byte [tape + r8], 0
jz ce3
add r8, 5
and r8, 0xFFFF
oe4:
cmp byte [tape + r8], 0
jz ce4
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp oe4
ce4:
sub r8, 4
and r8, 0xFFFF
oe5:
cmp byte [tape + r8], 0
jz ce5
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp oe5
ce5:
add r8, 8
and r8, 0xFFFF
jmp oe3
ce3:
sub r8, 9
and r8, 0xFFFF
oe6:
cmp byte [tape + r8], 0
jz ce6
sub r8, 9
and r8, 0xFFFF
jmp oe6
ce6:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
oe7:
cmp byte [tape + r8], 0
jz ce7
oe8:
cmp byte [tape + r8], 0
jz ce8
add r8, 9
and r8, 0xFFFF
jmp oe8
ce8:
add byte [tape + r8], 1
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
add r8, 1
and r8, 0xFFFF
call z
sub r8, 9
and r8, 0xFFFF
oe9:
cmp byte [tape + r8], 0
jz ce9
sub r8, 9
and r8, 0xFFFF
jmp oe9
ce9:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp oe7
ce7:
add byte [tape + r8], 1
oea:
cmp byte [tape + r8], 0
jz cea
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp oea
cea:
sub r8, 9
and r8, 0xFFFF
oeb:
cmp byte [tape + r8], 0
jz ceb
sub r8, 9
and r8, 0xFFFF
jmp oeb
ceb:
add r8, 9
and r8, 0xFFFF
oec:
cmp byte [tape + r8], 0
jz cec
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
oed:
cmp byte [tape + r8], 0
jz ced
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp oed
ced:
sub r8, 4
and r8, 0xFFFF
oee:
cmp byte [tape + r8], 0
jz cee
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
oef:
cmp byte [tape + r8], 0
jz cef
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
of0:
cmp byte [tape + r8], 0
jz cf0
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp of0
cf0:
sub r8, 2
and r8, 0xFFFF
of1:
cmp byte [tape + r8], 0
jz cf1
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp of1
cf1:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp oef
cef:
sub r8, 8
and r8, 0xFFFF
of2:
cmp byte [tape + r8], 0
jz cf2
sub r8, 9
and r8, 0xFFFF
jmp of2
cf2:
jmp oee
cee:
add r8, 9
and r8, 0xFFFF
of3:
cmp byte [tape + r8], 0
jz cf3
add r8, 9
and r8, 0xFFFF
jmp of3
cf3:
sub r8, 9
and r8, 0xFFFF
of4:
cmp byte [tape + r8], 0
jz cf4
add r8, 1
and r8, 0xFFFF
of5:
cmp byte [tape + r8], 0
jz cf5
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp of5
cf5:
sub r8, 10
and r8, 0xFFFF
jmp of4
cf4:
add r8, 1
and r8, 0xFFFF
of6:
cmp byte [tape + r8], 0
jz cf6
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp of6
cf6:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp oec
cec:
sub r8, 9
and r8, 0xFFFF
of7:
cmp byte [tape + r8], 0
jz cf7
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
of8:
cmp byte [tape + r8], 0
jz cf8
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
of9:
cmp byte [tape + r8], 0
jz cf9
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp of9
cf9:
sub r8, 1
and r8, 0xFFFF
ofa:
cmp byte [tape + r8], 0
jz cfa
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp ofa
cfa:
add r8, 3
and r8, 0xFFFF
jmp of8
cf8:
sub r8, 2
and r8, 0xFFFF
ofb:
cmp byte [tape + r8], 0
jz cfb
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp ofb
cfb:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp of7
cf7:
add r8, 9
and r8, 0xFFFF
ofc:
cmp byte [tape + r8], 0
jz cfc
add r8, 3
and r8, 0xFFFF
ofd:
cmp byte [tape + r8], 0
jz cfd
sub byte [tape + r8], 1
sub r8, 36
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 36
and r8, 0xFFFF
jmp ofd
cfd:
add r8, 6
and r8, 0xFFFF
jmp ofc
cfc:
sub r8, 9
and r8, 0xFFFF
ofe:
cmp byte [tape + r8], 0
jz cfe
sub r8, 9
and r8, 0xFFFF
jmp ofe
cfe:
add r8, 5
and r8, 0xFFFF
call z
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 15
off:
cmp byte [tape + r8], 0
jz cff
o100:
cmp byte [tape + r8], 0
jz c100
add r8, 9
and r8, 0xFFFF
jmp o100
c100:
sub r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
o101:
cmp byte [tape + r8], 0
jz c101
sub r8, 9
and r8, 0xFFFF
jmp o101
c101:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp off
cff:
add byte [tape + r8], 1
o102:
cmp byte [tape + r8], 0
jz c102
add r8, 3
and r8, 0xFFFF
o103:
cmp byte [tape + r8], 0
jz c103
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o103
c103:
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o104:
cmp byte [tape + r8], 0
jz c104
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o105:
cmp byte [tape + r8], 0
jz c105
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o105
c105:
sub r8, 4
and r8, 0xFFFF
o106:
cmp byte [tape + r8], 0
jz c106
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
o107:
cmp byte [tape + r8], 0
jz c107
sub r8, 9
and r8, 0xFFFF
jmp o107
c107:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o108:
cmp byte [tape + r8], 0
jz c108
add r8, 9
and r8, 0xFFFF
jmp o108
c108:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o106
c106:
jmp o104
c104:
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o109:
cmp byte [tape + r8], 0
jz c109
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o109
c109:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
o10a:
cmp byte [tape + r8], 0
jz c10a
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o10b:
cmp byte [tape + r8], 0
jz c10b
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o10b
c10b:
sub r8, 3
and r8, 0xFFFF
o10c:
cmp byte [tape + r8], 0
jz c10c
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 12
and r8, 0xFFFF
o10d:
cmp byte [tape + r8], 0
jz c10d
sub r8, 9
and r8, 0xFFFF
jmp o10d
c10d:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o10e:
cmp byte [tape + r8], 0
jz c10e
add r8, 9
and r8, 0xFFFF
jmp o10e
c10e:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o10c
c10c:
jmp o10a
c10a:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o10f:
cmp byte [tape + r8], 0
jz c10f
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o110:
cmp byte [tape + r8], 0
jz c110
add r8, 9
and r8, 0xFFFF
jmp o110
c110:
sub r8, 8
and r8, 0xFFFF
jmp o10f
c10f:
add r8, 8
and r8, 0xFFFF
jmp o102
c102:
sub r8, 9
and r8, 0xFFFF
o111:
cmp byte [tape + r8], 0
jz c111
sub r8, 9
and r8, 0xFFFF
jmp o111
c111:
add r8, 3
and r8, 0xFFFF
o112:
cmp byte [tape + r8], 0
jz c112
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o112
c112:
sub r8, 3
and r8, 0xFFFF
o113:
cmp byte [tape + r8], 0
jz c113
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o114:
cmp byte [tape + r8], 0
jz c114
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o115:
cmp byte [tape + r8], 0
jz c115
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o115
c115:
sub r8, 3
and r8, 0xFFFF
o116:
cmp byte [tape + r8], 0
jz c116
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o116
c116:
add r8, 8
and r8, 0xFFFF
jmp o114
c114:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o117:
cmp byte [tape + r8], 0
jz c117
add r8, 1
and r8, 0xFFFF
o118:
cmp byte [tape + r8], 0
jz c118
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o119:
cmp byte [tape + r8], 0
jz c119
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 12
and r8, 0xFFFF
o11a:
cmp byte [tape + r8], 0
jz c11a
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o11a
c11a:
sub r8, 1
and r8, 0xFFFF
jmp o119
c119:
add r8, 1
and r8, 0xFFFF
o11b:
cmp byte [tape + r8], 0
jz c11b
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 12
and r8, 0xFFFF
jmp o11b
c11b:
sub r8, 3
and r8, 0xFFFF
jmp o118
c118:
add r8, 2
and r8, 0xFFFF
o11c:
cmp byte [tape + r8], 0
jz c11c
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o11d:
cmp byte [tape + r8], 0
jz c11d
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 12
and r8, 0xFFFF
jmp o11d
c11d:
sub r8, 1
and r8, 0xFFFF
jmp o11c
c11c:
add r8, 1
and r8, 0xFFFF
o11e:
cmp byte [tape + r8], 0
jz c11e
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o11e
c11e:
sub r8, 13
and r8, 0xFFFF
jmp o117
c117:
jmp o113
c113:
add r8, 4
and r8, 0xFFFF
o11f:
cmp byte [tape + r8], 0
jz c11f
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o11f
c11f:
sub r8, 4
and r8, 0xFFFF
o120:
cmp byte [tape + r8], 0
jz c120
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o121:
cmp byte [tape + r8], 0
jz c121
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o122:
cmp byte [tape + r8], 0
jz c122
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o122
c122:
sub r8, 2
and r8, 0xFFFF
o123:
cmp byte [tape + r8], 0
jz c123
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o123
c123:
add r8, 8
and r8, 0xFFFF
jmp o121
c121:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o124:
cmp byte [tape + r8], 0
jz c124
add r8, 1
and r8, 0xFFFF
o125:
cmp byte [tape + r8], 0
jz c125
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o126:
cmp byte [tape + r8], 0
jz c126
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
o127:
cmp byte [tape + r8], 0
jz c127
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
jmp o127
c127:
add r8, 1
and r8, 0xFFFF
jmp o126
c126:
sub r8, 1
and r8, 0xFFFF
o128:
cmp byte [tape + r8], 0
jz c128
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o128
c128:
sub r8, 2
and r8, 0xFFFF
jmp o125
c125:
add r8, 3
and r8, 0xFFFF
o129:
cmp byte [tape + r8], 0
jz c129
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o12a:
cmp byte [tape + r8], 0
jz c12a
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 10
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o12a
c12a:
add r8, 1
and r8, 0xFFFF
jmp o129
c129:
sub r8, 1
and r8, 0xFFFF
o12b:
cmp byte [tape + r8], 0
jz c12b
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
jmp o12b
c12b:
sub r8, 12
and r8, 0xFFFF
jmp o124
c124:
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o120
c120:
add r8, 9
and r8, 0xFFFF
o12c:
cmp byte [tape + r8], 0
jz c12c
add r8, 3
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 4
and r8, 0xFFFF
jmp o12c
c12c:
sub r8, 9
and r8, 0xFFFF
o12d:
cmp byte [tape + r8], 0
jz c12d
sub r8, 9
and r8, 0xFFFF
jmp o12d
c12d:
add r8, 3
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 5
and r8, 0xFFFF
o12e:
cmp byte [tape + r8], 0
jz c12e
add r8, 7
and r8, 0xFFFF
o12f:
cmp byte [tape + r8], 0
jz c12f
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o12f
c12f:
sub r8, 6
and r8, 0xFFFF
o130:
cmp byte [tape + r8], 0
jz c130
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o130
c130:
add r8, 8
and r8, 0xFFFF
jmp o12e
c12e:
sub r8, 9
and r8, 0xFFFF
o131:
cmp byte [tape + r8], 0
jz c131
sub r8, 9
and r8, 0xFFFF
jmp o131
c131:
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o132:
cmp byte [tape + r8], 0
jz c132
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o132
c132:
add r8, 2
and r8, 0xFFFF
o133:
cmp byte [tape + r8], 0
jz c133
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
o134:
cmp byte [tape + r8], 0
jz c134
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 2
sub r8, 4
and r8, 0xFFFF
jmp o134
c134:
add r8, 5
and r8, 0xFFFF
o135:
cmp byte [tape + r8], 0
jz c135
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o135
c135:
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o133
c133:
sub r8, 2
and r8, 0xFFFF
o136:
cmp byte [tape + r8], 0
jz c136
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o136
c136:
sub r8, 5
and r8, 0xFFFF
o137:
cmp byte [tape + r8], 0
jz c137
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o137
c137:
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o138:
cmp byte [tape + r8], 0
jz c138
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o138
c138:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
o139:
cmp byte [tape + r8], 0
jz c139
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o13a:
cmp byte [tape + r8], 0
jz c13a
add r8, 3
and r8, 0xFFFF
o13b:
cmp byte [tape + r8], 0
jz c13b
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o13b
c13b:
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o13c:
cmp byte [tape + r8], 0
jz c13c
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o13d:
cmp byte [tape + r8], 0
jz c13d
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o13d
c13d:
sub r8, 2
and r8, 0xFFFF
o13e:
cmp byte [tape + r8], 0
jz c13e
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 11
and r8, 0xFFFF
o13f:
cmp byte [tape + r8], 0
jz c13f
sub r8, 9
and r8, 0xFFFF
jmp o13f
c13f:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o140:
cmp byte [tape + r8], 0
jz c140
add r8, 9
and r8, 0xFFFF
jmp o140
c140:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o13e
c13e:
jmp o13c
c13c:
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o141:
cmp byte [tape + r8], 0
jz c141
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o141
c141:
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o142:
cmp byte [tape + r8], 0
jz c142
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o143:
cmp byte [tape + r8], 0
jz c143
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o143
c143:
sub r8, 3
and r8, 0xFFFF
o144:
cmp byte [tape + r8], 0
jz c144
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 12
and r8, 0xFFFF
o145:
cmp byte [tape + r8], 0
jz c145
sub r8, 9
and r8, 0xFFFF
jmp o145
c145:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o146:
cmp byte [tape + r8], 0
jz c146
add r8, 9
and r8, 0xFFFF
jmp o146
c146:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o144
c144:
jmp o142
c142:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o147:
cmp byte [tape + r8], 0
jz c147
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o148:
cmp byte [tape + r8], 0
jz c148
add r8, 9
and r8, 0xFFFF
jmp o148
c148:
sub r8, 8
and r8, 0xFFFF
jmp o147
c147:
add r8, 8
and r8, 0xFFFF
jmp o13a
c13a:
sub r8, 9
and r8, 0xFFFF
o149:
cmp byte [tape + r8], 0
jz c149
sub r8, 9
and r8, 0xFFFF
jmp o149
c149:
add r8, 3
and r8, 0xFFFF
o14a:
cmp byte [tape + r8], 0
jz c14a
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o14a
c14a:
sub r8, 3
and r8, 0xFFFF
o14b:
cmp byte [tape + r8], 0
jz c14b
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o14c:
cmp byte [tape + r8], 0
jz c14c
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o14d:
cmp byte [tape + r8], 0
jz c14d
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
jmp o14d
c14d:
sub r8, 1
and r8, 0xFFFF
o14e:
cmp byte [tape + r8], 0
jz c14e
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o14e
c14e:
add r8, 8
and r8, 0xFFFF
jmp o14c
c14c:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o14f:
cmp byte [tape + r8], 0
jz c14f
add r8, 1
and r8, 0xFFFF
o150:
cmp byte [tape + r8], 0
jz c150
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o151:
cmp byte [tape + r8], 0
jz c151
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
o152:
cmp byte [tape + r8], 0
jz c152
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o152
c152:
add r8, 1
and r8, 0xFFFF
jmp o151
c151:
sub r8, 1
and r8, 0xFFFF
o153:
cmp byte [tape + r8], 0
jz c153
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
jmp o153
c153:
sub r8, 1
and r8, 0xFFFF
jmp o150
c150:
add r8, 2
and r8, 0xFFFF
o154:
cmp byte [tape + r8], 0
jz c154
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o155:
cmp byte [tape + r8], 0
jz c155
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 10
and r8, 0xFFFF
jmp o155
c155:
add r8, 1
and r8, 0xFFFF
jmp o154
c154:
sub r8, 1
and r8, 0xFFFF
o156:
cmp byte [tape + r8], 0
jz c156
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o156
c156:
sub r8, 11
and r8, 0xFFFF
jmp o14f
c14f:
add r8, 5
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
o157:
cmp byte [tape + r8], 0
jz c157
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o157
c157:
sub r8, 7
and r8, 0xFFFF
o158:
cmp byte [tape + r8], 0
jz c158
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o158
c158:
jmp o14b
c14b:
add r8, 4
and r8, 0xFFFF
o159:
cmp byte [tape + r8], 0
jz c159
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o159
c159:
sub r8, 4
and r8, 0xFFFF
o15a:
cmp byte [tape + r8], 0
jz c15a
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o15b:
cmp byte [tape + r8], 0
jz c15b
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o15c:
cmp byte [tape + r8], 0
jz c15c
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o15c
c15c:
sub r8, 2
and r8, 0xFFFF
o15d:
cmp byte [tape + r8], 0
jz c15d
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o15d
c15d:
add r8, 8
and r8, 0xFFFF
jmp o15b
c15b:
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o15e:
cmp byte [tape + r8], 0
jz c15e
add r8, 1
and r8, 0xFFFF
o15f:
cmp byte [tape + r8], 0
jz c15f
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o160:
cmp byte [tape + r8], 0
jz c160
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
o161:
cmp byte [tape + r8], 0
jz c161
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o161
c161:
sub r8, 1
and r8, 0xFFFF
jmp o160
c160:
add r8, 1
and r8, 0xFFFF
o162:
cmp byte [tape + r8], 0
jz c162
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o162
c162:
sub r8, 2
and r8, 0xFFFF
jmp o15f
c15f:
add r8, 1
and r8, 0xFFFF
o163:
cmp byte [tape + r8], 0
jz c163
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o164:
cmp byte [tape + r8], 0
jz c164
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o164
c164:
sub r8, 1
and r8, 0xFFFF
jmp o163
c163:
add r8, 1
and r8, 0xFFFF
o165:
cmp byte [tape + r8], 0
jz c165
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o165
c165:
sub r8, 12
and r8, 0xFFFF
jmp o15e
c15e:
jmp o15a
c15a:
add r8, 4
and r8, 0xFFFF
call z
sub r8, 4
and r8, 0xFFFF
jmp o139
c139:
add r8, 4
and r8, 0xFFFF
o166:
cmp byte [tape + r8], 0
jz c166
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o166
c166:
sub r8, 4
and r8, 0xFFFF
o167:
cmp byte [tape + r8], 0
jz c167
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
call z
add r8, 2
and r8, 0xFFFF
o168:
cmp byte [tape + r8], 0
jz c168
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o168
c168:
sub r8, 7
and r8, 0xFFFF
o169:
cmp byte [tape + r8], 0
jz c169
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o169
c169:
add r8, 9
and r8, 0xFFFF
o16a:
cmp byte [tape + r8], 0
jz c16a
add r8, 9
and r8, 0xFFFF
jmp o16a
c16a:
sub r8, 9
and r8, 0xFFFF
o16b:
cmp byte [tape + r8], 0
jz c16b
add r8, 1
and r8, 0xFFFF
o16c:
cmp byte [tape + r8], 0
jz c16c
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o16d:
cmp byte [tape + r8], 0
jz c16d
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
o16e:
cmp byte [tape + r8], 0
jz c16e
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o16e
c16e:
sub r8, 1
and r8, 0xFFFF
jmp o16d
c16d:
add r8, 1
and r8, 0xFFFF
o16f:
cmp byte [tape + r8], 0
jz c16f
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o16f
c16f:
sub r8, 2
and r8, 0xFFFF
jmp o16c
c16c:
add r8, 1
and r8, 0xFFFF
o170:
cmp byte [tape + r8], 0
jz c170
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o171:
cmp byte [tape + r8], 0
jz c171
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 11
and r8, 0xFFFF
jmp o171
c171:
sub r8, 1
and r8, 0xFFFF
jmp o170
c170:
add r8, 1
and r8, 0xFFFF
o172:
cmp byte [tape + r8], 0
jz c172
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o172
c172:
sub r8, 12
and r8, 0xFFFF
jmp o16b
c16b:
jmp o167
c167:
add r8, 9
and r8, 0xFFFF
o173:
cmp byte [tape + r8], 0
jz c173
add r8, 2
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 6
and r8, 0xFFFF
jmp o173
c173:
sub r8, 9
and r8, 0xFFFF
o174:
cmp byte [tape + r8], 0
jz c174
sub r8, 9
and r8, 0xFFFF
jmp o174
c174:
add r8, 3
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 5
and r8, 0xFFFF
o175:
cmp byte [tape + r8], 0
jz c175
add r8, 5
and r8, 0xFFFF
o176:
cmp byte [tape + r8], 0
jz c176
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o176
c176:
sub r8, 4
and r8, 0xFFFF
o177:
cmp byte [tape + r8], 0
jz c177
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o177
c177:
add r8, 8
and r8, 0xFFFF
jmp o175
c175:
sub r8, 9
and r8, 0xFFFF
o178:
cmp byte [tape + r8], 0
jz c178
sub r8, 9
and r8, 0xFFFF
jmp o178
c178:
add r8, 9
and r8, 0xFFFF
o179:
cmp byte [tape + r8], 0
jz c179
add r8, 6
and r8, 0xFFFF
o17a:
cmp byte [tape + r8], 0
jz c17a
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o17a
c17a:
sub r8, 5
and r8, 0xFFFF
o17b:
cmp byte [tape + r8], 0
jz c17b
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o17b
c17b:
add r8, 8
and r8, 0xFFFF
jmp o179
c179:
sub r8, 9
and r8, 0xFFFF
o17c:
cmp byte [tape + r8], 0
jz c17c
sub r8, 9
and r8, 0xFFFF
jmp o17c
c17c:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o17d:
cmp byte [tape + r8], 0
jz c17d
o17e:
cmp byte [tape + r8], 0
jz c17e
add r8, 9
and r8, 0xFFFF
jmp o17e
c17e:
add byte [tape + r8], 1
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
add r8, 1
and r8, 0xFFFF
call z
sub r8, 9
and r8, 0xFFFF
o17f:
cmp byte [tape + r8], 0
jz c17f
sub r8, 9
and r8, 0xFFFF
jmp o17f
c17f:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o17d
c17d:
add byte [tape + r8], 1
o180:
cmp byte [tape + r8], 0
jz c180
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o180
c180:
sub r8, 9
and r8, 0xFFFF
o181:
cmp byte [tape + r8], 0
jz c181
sub r8, 9
and r8, 0xFFFF
jmp o181
c181:
add r8, 9
and r8, 0xFFFF
o182:
cmp byte [tape + r8], 0
jz c182
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o183:
cmp byte [tape + r8], 0
jz c183
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o183
c183:
sub r8, 4
and r8, 0xFFFF
o184:
cmp byte [tape + r8], 0
jz c184
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
o185:
cmp byte [tape + r8], 0
jz c185
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o186:
cmp byte [tape + r8], 0
jz c186
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o186
c186:
sub r8, 2
and r8, 0xFFFF
o187:
cmp byte [tape + r8], 0
jz c187
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o187
c187:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o185
c185:
sub r8, 8
and r8, 0xFFFF
o188:
cmp byte [tape + r8], 0
jz c188
sub r8, 9
and r8, 0xFFFF
jmp o188
c188:
jmp o184
c184:
add r8, 9
and r8, 0xFFFF
o189:
cmp byte [tape + r8], 0
jz c189
add r8, 9
and r8, 0xFFFF
jmp o189
c189:
sub r8, 9
and r8, 0xFFFF
o18a:
cmp byte [tape + r8], 0
jz c18a
add r8, 1
and r8, 0xFFFF
o18b:
cmp byte [tape + r8], 0
jz c18b
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o18b
c18b:
sub r8, 10
and r8, 0xFFFF
jmp o18a
c18a:
add r8, 1
and r8, 0xFFFF
o18c:
cmp byte [tape + r8], 0
jz c18c
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o18c
c18c:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o182
c182:
sub r8, 9
and r8, 0xFFFF
o18d:
cmp byte [tape + r8], 0
jz c18d
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o18e:
cmp byte [tape + r8], 0
jz c18e
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o18f:
cmp byte [tape + r8], 0
jz c18f
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o18f
c18f:
sub r8, 1
and r8, 0xFFFF
o190:
cmp byte [tape + r8], 0
jz c190
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o190
c190:
add r8, 4
and r8, 0xFFFF
jmp o18e
c18e:
sub r8, 3
and r8, 0xFFFF
o191:
cmp byte [tape + r8], 0
jz c191
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o191
c191:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o18d
c18d:
add r8, 9
and r8, 0xFFFF
o192:
cmp byte [tape + r8], 0
jz c192
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o192
c192:
sub r8, 9
and r8, 0xFFFF
o193:
cmp byte [tape + r8], 0
jz c193
sub r8, 9
and r8, 0xFFFF
jmp o193
c193:
add r8, 9
and r8, 0xFFFF
o194:
cmp byte [tape + r8], 0
jz c194
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o195:
cmp byte [tape + r8], 0
jz c195
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o195
c195:
sub r8, 5
and r8, 0xFFFF
o196:
cmp byte [tape + r8], 0
jz c196
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o197:
cmp byte [tape + r8], 0
jz c197
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
o198:
cmp byte [tape + r8], 0
jz c198
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o198
c198:
sub r8, 3
and r8, 0xFFFF
o199:
cmp byte [tape + r8], 0
jz c199
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o199
c199:
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
jmp o197
c197:
sub r8, 8
and r8, 0xFFFF
o19a:
cmp byte [tape + r8], 0
jz c19a
sub r8, 9
and r8, 0xFFFF
jmp o19a
c19a:
jmp o196
c196:
add r8, 9
and r8, 0xFFFF
o19b:
cmp byte [tape + r8], 0
jz c19b
add r8, 9
and r8, 0xFFFF
jmp o19b
c19b:
sub r8, 9
and r8, 0xFFFF
o19c:
cmp byte [tape + r8], 0
jz c19c
add r8, 2
and r8, 0xFFFF
o19d:
cmp byte [tape + r8], 0
jz c19d
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o19d
c19d:
sub r8, 11
and r8, 0xFFFF
jmp o19c
c19c:
add r8, 2
and r8, 0xFFFF
o19e:
cmp byte [tape + r8], 0
jz c19e
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o19e
c19e:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o194
c194:
sub r8, 9
and r8, 0xFFFF
o19f:
cmp byte [tape + r8], 0
jz c19f
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o1a0:
cmp byte [tape + r8], 0
jz c1a0
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1a1:
cmp byte [tape + r8], 0
jz c1a1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o1a1
c1a1:
sub r8, 1
and r8, 0xFFFF
o1a2:
cmp byte [tape + r8], 0
jz c1a2
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1a2
c1a2:
add r8, 4
and r8, 0xFFFF
jmp o1a0
c1a0:
sub r8, 3
and r8, 0xFFFF
o1a3:
cmp byte [tape + r8], 0
jz c1a3
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o1a3
c1a3:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o19f
c19f:
add r8, 9
and r8, 0xFFFF
o1a4:
cmp byte [tape + r8], 0
jz c1a4
add r8, 4
and r8, 0xFFFF
o1a5:
cmp byte [tape + r8], 0
jz c1a5
sub byte [tape + r8], 1
sub r8, 36
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 36
and r8, 0xFFFF
jmp o1a5
c1a5:
add r8, 5
and r8, 0xFFFF
jmp o1a4
c1a4:
sub r8, 9
and r8, 0xFFFF
o1a6:
cmp byte [tape + r8], 0
jz c1a6
sub r8, 9
and r8, 0xFFFF
jmp o1a6
c1a6:
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 15
o1a7:
cmp byte [tape + r8], 0
jz c1a7
o1a8:
cmp byte [tape + r8], 0
jz c1a8
add r8, 9
and r8, 0xFFFF
jmp o1a8
c1a8:
sub r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
o1a9:
cmp byte [tape + r8], 0
jz c1a9
sub r8, 9
and r8, 0xFFFF
jmp o1a9
c1a9:
add r8, 9
and r8, 0xFFFF
sub byte [tape + r8], 1
jmp o1a7
c1a7:
add byte [tape + r8], 1
add r8, 21
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o1aa:
cmp byte [tape + r8], 0
jz c1aa
sub r8, 9
and r8, 0xFFFF
jmp o1aa
c1aa:
add r8, 9
and r8, 0xFFFF
o1ab:
cmp byte [tape + r8], 0
jz c1ab
add r8, 3
and r8, 0xFFFF
o1ac:
cmp byte [tape + r8], 0
jz c1ac
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o1ac
c1ac:
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
o1ad:
cmp byte [tape + r8], 0
jz c1ad
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1ae:
cmp byte [tape + r8], 0
jz c1ae
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o1ae
c1ae:
sub r8, 4
and r8, 0xFFFF
o1af:
cmp byte [tape + r8], 0
jz c1af
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 13
and r8, 0xFFFF
o1b0:
cmp byte [tape + r8], 0
jz c1b0
sub r8, 9
and r8, 0xFFFF
jmp o1b0
c1b0:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o1b1:
cmp byte [tape + r8], 0
jz c1b1
add r8, 9
and r8, 0xFFFF
jmp o1b1
c1b1:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1af
c1af:
jmp o1ad
c1ad:
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o1b2:
cmp byte [tape + r8], 0
jz c1b2
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o1b2
c1b2:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
o1b3:
cmp byte [tape + r8], 0
jz c1b3
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o1b4:
cmp byte [tape + r8], 0
jz c1b4
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o1b4
c1b4:
sub r8, 3
and r8, 0xFFFF
o1b5:
cmp byte [tape + r8], 0
jz c1b5
sub byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 12
and r8, 0xFFFF
o1b6:
cmp byte [tape + r8], 0
jz c1b6
sub r8, 9
and r8, 0xFFFF
jmp o1b6
c1b6:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o1b7:
cmp byte [tape + r8], 0
jz c1b7
add r8, 9
and r8, 0xFFFF
jmp o1b7
c1b7:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1b5
c1b5:
jmp o1b3
c1b3:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1b8:
cmp byte [tape + r8], 0
jz c1b8
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o1b9:
cmp byte [tape + r8], 0
jz c1b9
add r8, 9
and r8, 0xFFFF
jmp o1b9
c1b9:
sub r8, 8
and r8, 0xFFFF
jmp o1b8
c1b8:
add r8, 8
and r8, 0xFFFF
jmp o1ab
c1ab:
sub r8, 9
and r8, 0xFFFF
o1ba:
cmp byte [tape + r8], 0
jz c1ba
sub r8, 9
and r8, 0xFFFF
jmp o1ba
c1ba:
add r8, 2
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1bb:
cmp byte [tape + r8], 0
jz c1bb
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o1bb
c1bb:
sub r8, 4
and r8, 0xFFFF
o1bc:
cmp byte [tape + r8], 0
jz c1bc
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
call z
sub r8, 2
and r8, 0xFFFF
jmp o1bc
c1bc:
add r8, 2
and r8, 0xFFFF
jmp o5d
c5d:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o1bd:
cmp byte [tape + r8], 0
jz c1bd
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o1bd
c1bd:
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
o1be:
cmp byte [tape + r8], 0
jz c1be
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
call o
add r8, 2
and r8, 0xFFFF
jmp o1be
c1be:
add r8, 4
and r8, 0xFFFF
o1bf:
cmp byte [tape + r8], 0
jz c1bf
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
call o
add r8, 7
and r8, 0xFFFF
jmp o1bf
c1bf:
sub r8, 3
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
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 3
and r8, 0xFFFF
o1c0:
cmp byte [tape + r8], 0
jz c1c0
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
add r8, 1
and r8, 0xFFFF
call z
add r8, 1
and r8, 0xFFFF
call z
add r8, 3
and r8, 0xFFFF
jmp o1c0
c1c0:
sub r8, 9
and r8, 0xFFFF
o1c1:
cmp byte [tape + r8], 0
jz c1c1
sub r8, 9
and r8, 0xFFFF
jmp o1c1
c1c1:
add r8, 9
and r8, 0xFFFF
o1c2:
cmp byte [tape + r8], 0
jz c1c2
add r8, 5
and r8, 0xFFFF
call z
add r8, 4
and r8, 0xFFFF
jmp o1c2
c1c2:
sub r8, 9
and r8, 0xFFFF
o1c3:
cmp byte [tape + r8], 0
jz c1c3
sub r8, 9
and r8, 0xFFFF
jmp o1c3
c1c3:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 11
o1c4:
cmp byte [tape + r8], 0
jz c1c4
sub byte [tape + r8], 1
o1c5:
cmp byte [tape + r8], 0
jz c1c5
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1c5
c1c5:
add r8, 9
and r8, 0xFFFF
jmp o1c4
c1c4:
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
o1c6:
cmp byte [tape + r8], 0
jz c1c6
sub r8, 9
and r8, 0xFFFF
jmp o1c6
c1c6:
add r8, 7
and r8, 0xFFFF
o1c7:
cmp byte [tape + r8], 0
jz c1c7
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1c7
c1c7:
sub r8, 7
and r8, 0xFFFF
o1c8:
cmp byte [tape + r8], 0
jz c1c8
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
call z
add r8, 2
and r8, 0xFFFF
o1c9:
cmp byte [tape + r8], 0
jz c1c9
add r8, 9
and r8, 0xFFFF
jmp o1c9
c1c9:
sub r8, 9
and r8, 0xFFFF
o1ca:
cmp byte [tape + r8], 0
jz c1ca
add r8, 7
and r8, 0xFFFF
o1cb:
cmp byte [tape + r8], 0
jz c1cb
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o1cb
c1cb:
sub r8, 6
and r8, 0xFFFF
o1cc:
cmp byte [tape + r8], 0
jz c1cc
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
o1cd:
cmp byte [tape + r8], 0
jz c1cd
sub r8, 9
and r8, 0xFFFF
jmp o1cd
c1cd:
add r8, 7
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o1cc
c1cc:
sub r8, 10
and r8, 0xFFFF
jmp o1ca
c1ca:
jmp o1c8
c1c8:
add r8, 7
and r8, 0xFFFF
o1ce:
cmp byte [tape + r8], 0
jz c1ce
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1ce
c1ce:
sub r8, 7
and r8, 0xFFFF
o1cf:
cmp byte [tape + r8], 0
jz c1cf
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1d0:
cmp byte [tape + r8], 0
jz c1d0
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
o1d1:
cmp byte [tape + r8], 0
jz c1d1
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
jmp o1d1
c1d1:
sub r8, 4
and r8, 0xFFFF
o1d2:
cmp byte [tape + r8], 0
jz c1d2
sub byte [tape + r8], 1
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
jmp o1d2
c1d2:
add r8, 8
and r8, 0xFFFF
jmp o1d0
c1d0:
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
o1d3:
cmp byte [tape + r8], 0
jz c1d3
add r8, 5
and r8, 0xFFFF
o1d4:
cmp byte [tape + r8], 0
jz c1d4
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o1d4
c1d4:
sub r8, 14
and r8, 0xFFFF
jmp o1d3
c1d3:
add r8, 9
and r8, 0xFFFF
o1d5:
cmp byte [tape + r8], 0
jz c1d5
add r8, 9
and r8, 0xFFFF
jmp o1d5
c1d5:
sub r8, 9
and r8, 0xFFFF
o1d6:
cmp byte [tape + r8], 0
jz c1d6
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
o1d7:
cmp byte [tape + r8], 0
jz c1d7
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1d8:
cmp byte [tape + r8], 0
jz c1d8
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o1d8
c1d8:
sub r8, 1
and r8, 0xFFFF
o1d9:
cmp byte [tape + r8], 0
jz c1d9
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1d9
c1d9:
add r8, 7
and r8, 0xFFFF
jmp o1d7
c1d7:
sub r8, 6
and r8, 0xFFFF
o1da:
cmp byte [tape + r8], 0
jz c1da
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
jmp o1da
c1da:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1d6
c1d6:
add r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o1cf
c1cf:
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
o1db:
cmp byte [tape + r8], 0
jz c1db
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1db
c1db:
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
o1dc:
cmp byte [tape + r8], 0
jz c1dc
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1dd:
cmp byte [tape + r8], 0
jz c1dd
add r8, 5
and r8, 0xFFFF
o1de:
cmp byte [tape + r8], 0
jz c1de
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o1de
c1de:
add r8, 4
and r8, 0xFFFF
jmp o1dd
c1dd:
sub r8, 9
and r8, 0xFFFF
o1df:
cmp byte [tape + r8], 0
jz c1df
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
o1e0:
cmp byte [tape + r8], 0
jz c1e0
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1e1:
cmp byte [tape + r8], 0
jz c1e1
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 3
and r8, 0xFFFF
jmp o1e1
c1e1:
sub r8, 1
and r8, 0xFFFF
o1e2:
cmp byte [tape + r8], 0
jz c1e2
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1e2
c1e2:
add r8, 7
and r8, 0xFFFF
jmp o1e0
c1e0:
sub r8, 6
and r8, 0xFFFF
o1e3:
cmp byte [tape + r8], 0
jz c1e3
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
jmp o1e3
c1e3:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1df
c1df:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
o1e4:
cmp byte [tape + r8], 0
jz c1e4
sub byte [tape + r8], 1
o1e5:
cmp byte [tape + r8], 0
jz c1e5
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1e5
c1e5:
add r8, 9
and r8, 0xFFFF
jmp o1e4
c1e4:
add r8, 4
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
o1e6:
cmp byte [tape + r8], 0
jz c1e6
sub r8, 9
and r8, 0xFFFF
jmp o1e6
c1e6:
add r8, 9
and r8, 0xFFFF
o1e7:
cmp byte [tape + r8], 0
jz c1e7
add r8, 5
and r8, 0xFFFF
o1e8:
cmp byte [tape + r8], 0
jz c1e8
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o1e8
c1e8:
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
o1e9:
cmp byte [tape + r8], 0
jz c1e9
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o1ea:
cmp byte [tape + r8], 0
jz c1ea
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1ea
c1ea:
sub r8, 7
and r8, 0xFFFF
o1eb:
cmp byte [tape + r8], 0
jz c1eb
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 16
and r8, 0xFFFF
o1ec:
cmp byte [tape + r8], 0
jz c1ec
sub r8, 9
and r8, 0xFFFF
jmp o1ec
c1ec:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o1ed:
cmp byte [tape + r8], 0
jz c1ed
add r8, 9
and r8, 0xFFFF
jmp o1ed
c1ed:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1eb
c1eb:
jmp o1e9
c1e9:
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
o1ee:
cmp byte [tape + r8], 0
jz c1ee
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o1ee
c1ee:
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
o1ef:
cmp byte [tape + r8], 0
jz c1ef
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o1f0:
cmp byte [tape + r8], 0
jz c1f0
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o1f0
c1f0:
sub r8, 5
and r8, 0xFFFF
o1f1:
cmp byte [tape + r8], 0
jz c1f1
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 14
and r8, 0xFFFF
o1f2:
cmp byte [tape + r8], 0
jz c1f2
sub r8, 9
and r8, 0xFFFF
jmp o1f2
c1f2:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o1f3:
cmp byte [tape + r8], 0
jz c1f3
add r8, 9
and r8, 0xFFFF
jmp o1f3
c1f3:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o1f1
c1f1:
jmp o1ef
c1ef:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o1f4:
cmp byte [tape + r8], 0
jz c1f4
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o1f5:
cmp byte [tape + r8], 0
jz c1f5
add r8, 9
and r8, 0xFFFF
jmp o1f5
c1f5:
sub r8, 8
and r8, 0xFFFF
jmp o1f4
c1f4:
add r8, 8
and r8, 0xFFFF
jmp o1e7
c1e7:
sub r8, 9
and r8, 0xFFFF
o1f6:
cmp byte [tape + r8], 0
jz c1f6
sub r8, 9
and r8, 0xFFFF
jmp o1f6
c1f6:
add r8, 4
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 5
o1f7:
cmp byte [tape + r8], 0
jz c1f7
sub byte [tape + r8], 1
o1f8:
cmp byte [tape + r8], 0
jz c1f8
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1f8
c1f8:
add r8, 9
and r8, 0xFFFF
jmp o1f7
c1f7:
add r8, 4
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
o1f9:
cmp byte [tape + r8], 0
jz c1f9
sub r8, 9
and r8, 0xFFFF
jmp o1f9
c1f9:
jmp o1dc
c1dc:
add r8, 3
and r8, 0xFFFF
jmp o11
c11:
sub r8, 4
and r8, 0xFFFF
call o
add r8, 10
and r8, 0xFFFF
o1fa:
cmp byte [tape + r8], 0
jz c1fa
add r8, 6
and r8, 0xFFFF
call z
add r8, 3
and r8, 0xFFFF
jmp o1fa
c1fa:
sub r8, 9
and r8, 0xFFFF
o1fb:
cmp byte [tape + r8], 0
jz c1fb
sub r8, 9
and r8, 0xFFFF
jmp o1fb
c1fb:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 10
o1fc:
cmp byte [tape + r8], 0
jz c1fc
sub byte [tape + r8], 1
o1fd:
cmp byte [tape + r8], 0
jz c1fd
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o1fd
c1fd:
add r8, 9
and r8, 0xFFFF
jmp o1fc
c1fc:
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 15
and r8, 0xFFFF
o1fe:
cmp byte [tape + r8], 0
jz c1fe
sub r8, 9
and r8, 0xFFFF
jmp o1fe
c1fe:
add r8, 8
and r8, 0xFFFF
o1ff:
cmp byte [tape + r8], 0
jz c1ff
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o1ff
c1ff:
sub r8, 8
and r8, 0xFFFF
o200:
cmp byte [tape + r8], 0
jz c200
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
call z
add r8, 1
and r8, 0xFFFF
o201:
cmp byte [tape + r8], 0
jz c201
add r8, 9
and r8, 0xFFFF
jmp o201
c201:
sub r8, 9
and r8, 0xFFFF
o202:
cmp byte [tape + r8], 0
jz c202
add r8, 8
and r8, 0xFFFF
o203:
cmp byte [tape + r8], 0
jz c203
sub byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
jmp o203
c203:
sub r8, 7
and r8, 0xFFFF
o204:
cmp byte [tape + r8], 0
jz c204
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
o205:
cmp byte [tape + r8], 0
jz c205
sub r8, 9
and r8, 0xFFFF
jmp o205
c205:
add r8, 8
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o204
c204:
sub r8, 10
and r8, 0xFFFF
jmp o202
c202:
jmp o200
c200:
add r8, 8
and r8, 0xFFFF
o206:
cmp byte [tape + r8], 0
jz c206
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o206
c206:
sub r8, 8
and r8, 0xFFFF
o207:
cmp byte [tape + r8], 0
jz c207
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o208:
cmp byte [tape + r8], 0
jz c208
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o209:
cmp byte [tape + r8], 0
jz c209
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
jmp o209
c209:
sub r8, 5
and r8, 0xFFFF
o20a:
cmp byte [tape + r8], 0
jz c20a
sub byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
jmp o20a
c20a:
add r8, 8
and r8, 0xFFFF
jmp o208
c208:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
o20b:
cmp byte [tape + r8], 0
jz c20b
add r8, 6
and r8, 0xFFFF
o20c:
cmp byte [tape + r8], 0
jz c20c
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o20c
c20c:
sub r8, 15
and r8, 0xFFFF
jmp o20b
c20b:
add r8, 9
and r8, 0xFFFF
o20d:
cmp byte [tape + r8], 0
jz c20d
add r8, 9
and r8, 0xFFFF
jmp o20d
c20d:
sub r8, 9
and r8, 0xFFFF
o20e:
cmp byte [tape + r8], 0
jz c20e
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
o20f:
cmp byte [tape + r8], 0
jz c20f
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o210:
cmp byte [tape + r8], 0
jz c210
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o210
c210:
sub r8, 1
and r8, 0xFFFF
o211:
cmp byte [tape + r8], 0
jz c211
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o211
c211:
add r8, 8
and r8, 0xFFFF
jmp o20f
c20f:
sub r8, 7
and r8, 0xFFFF
o212:
cmp byte [tape + r8], 0
jz c212
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
jmp o212
c212:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o20e
c20e:
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 5
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 3
and r8, 0xFFFF
jmp o207
c207:
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
o213:
cmp byte [tape + r8], 0
jz c213
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o213
c213:
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
o214:
cmp byte [tape + r8], 0
jz c214
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o215:
cmp byte [tape + r8], 0
jz c215
add r8, 6
and r8, 0xFFFF
o216:
cmp byte [tape + r8], 0
jz c216
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
jmp o216
c216:
add r8, 3
and r8, 0xFFFF
jmp o215
c215:
sub r8, 9
and r8, 0xFFFF
o217:
cmp byte [tape + r8], 0
jz c217
add r8, 1
and r8, 0xFFFF
call z
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
o218:
cmp byte [tape + r8], 0
jz c218
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o219:
cmp byte [tape + r8], 0
jz c219
sub r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
jmp o219
c219:
sub r8, 1
and r8, 0xFFFF
o21a:
cmp byte [tape + r8], 0
jz c21a
sub byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o21a
c21a:
add r8, 8
and r8, 0xFFFF
jmp o218
c218:
sub r8, 7
and r8, 0xFFFF
o21b:
cmp byte [tape + r8], 0
jz c21b
sub byte [tape + r8], 1
add r8, 7
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 7
and r8, 0xFFFF
jmp o21b
c21b:
sub r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o217
c217:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 5
o21c:
cmp byte [tape + r8], 0
jz c21c
sub byte [tape + r8], 1
o21d:
cmp byte [tape + r8], 0
jz c21d
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o21d
c21d:
add r8, 9
and r8, 0xFFFF
jmp o21c
c21c:
add r8, 5
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o21e:
cmp byte [tape + r8], 0
jz c21e
sub r8, 9
and r8, 0xFFFF
jmp o21e
c21e:
add r8, 9
and r8, 0xFFFF
o21f:
cmp byte [tape + r8], 0
jz c21f
add r8, 6
and r8, 0xFFFF
o220:
cmp byte [tape + r8], 0
jz c220
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o220
c220:
add byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o221:
cmp byte [tape + r8], 0
jz c221
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 2
and r8, 0xFFFF
o222:
cmp byte [tape + r8], 0
jz c222
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o222
c222:
sub r8, 8
and r8, 0xFFFF
o223:
cmp byte [tape + r8], 0
jz c223
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 17
and r8, 0xFFFF
o224:
cmp byte [tape + r8], 0
jz c224
sub r8, 9
and r8, 0xFFFF
jmp o224
c224:
add r8, 4
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 5
and r8, 0xFFFF
o225:
cmp byte [tape + r8], 0
jz c225
add r8, 9
and r8, 0xFFFF
jmp o225
c225:
add r8, 1
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o223
c223:
jmp o221
c221:
add byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
o226:
cmp byte [tape + r8], 0
jz c226
sub byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
jmp o226
c226:
add byte [tape + r8], 1
sub r8, 8
and r8, 0xFFFF
o227:
cmp byte [tape + r8], 0
jz c227
sub byte [tape + r8], 1
add r8, 8
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 2
and r8, 0xFFFF
o228:
cmp byte [tape + r8], 0
jz c228
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
jmp o228
c228:
sub r8, 6
and r8, 0xFFFF
o229:
cmp byte [tape + r8], 0
jz c229
sub byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 15
and r8, 0xFFFF
o22a:
cmp byte [tape + r8], 0
jz c22a
sub r8, 9
and r8, 0xFFFF
jmp o22a
c22a:
add r8, 3
and r8, 0xFFFF
call z
add byte [tape + r8], 1
add r8, 6
and r8, 0xFFFF
o22b:
cmp byte [tape + r8], 0
jz c22b
add r8, 9
and r8, 0xFFFF
jmp o22b
c22b:
add r8, 1
and r8, 0xFFFF
call z
add byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
jmp o229
c229:
jmp o227
c227:
add byte [tape + r8], 1
add r8, 1
and r8, 0xFFFF
o22c:
cmp byte [tape + r8], 0
jz c22c
sub byte [tape + r8], 1
sub r8, 1
and r8, 0xFFFF
o22d:
cmp byte [tape + r8], 0
jz c22d
add r8, 9
and r8, 0xFFFF
jmp o22d
c22d:
sub r8, 8
and r8, 0xFFFF
jmp o22c
c22c:
add r8, 8
and r8, 0xFFFF
jmp o21f
c21f:
sub r8, 9
and r8, 0xFFFF
o22e:
cmp byte [tape + r8], 0
jz c22e
sub r8, 9
and r8, 0xFFFF
jmp o22e
c22e:
add r8, 4
and r8, 0xFFFF
call z
sub r8, 3
and r8, 0xFFFF
add byte [tape + r8], 5
o22f:
cmp byte [tape + r8], 0
jz c22f
sub byte [tape + r8], 1
o230:
cmp byte [tape + r8], 0
jz c230
sub byte [tape + r8], 1
add r8, 9
and r8, 0xFFFF
add byte [tape + r8], 1
sub r8, 9
and r8, 0xFFFF
jmp o230
c230:
add r8, 9
and r8, 0xFFFF
jmp o22f
c22f:
add r8, 5
and r8, 0xFFFF
sub byte [tape + r8], 1
add r8, 27
and r8, 0xFFFF
sub byte [tape + r8], 1
sub r8, 6
and r8, 0xFFFF
o231:
cmp byte [tape + r8], 0
jz c231
sub r8, 9
and r8, 0xFFFF
jmp o231
c231:
jmp o214
c214:
add r8, 3
and r8, 0xFFFF
jmp o9
c9:
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

; multiply (positive output offset)
m:
pop r12 ; output offset
add r12, r8
and r12, 0xFFFF
pop r13 ; amount
mov al, r13b
mul byte [tape + r8]
add byte [tape + r12], al
mov byte [tape + r8], 0
ret

; multiply (negative output offset)
ms:
pop r12 ; output offset (abs negative)
mov r14, r8
sub r14, r12
and r14, 0xFFFF
pop r13 ; amount
mov al, r13b
mul byte [tape + r8]
add byte [tape + r14], al
mov byte [tape + r8], 0
ret

; move (positive output offset)
M:
pop r12 ; output offset
add r12, r8
and r12, 0xFFFF
mov r13b, byte [tape + r8]
add byte [tape + r12], r13b
mov byte [tape + r8], 0
ret

; move (negative output offset)
Ms:
pop r12 ; output offset (abs negative)
mov r14, r8
sub r14, r12
and r14, 0xFFFF
mov r13b, byte [tape + r8]
add byte [tape + r14], r13b
mov byte [tape + r8], 0
ret

