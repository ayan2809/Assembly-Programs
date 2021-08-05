data segment
n equ 05h
r equ 03h
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov bx, n
mov ax, 1
L1:
MUL bx
DEC bx
JNZ L1
MOV cx, ax
MOV ax, n
MOV bx, r
SUB ax,bx
MOV bx,ax
MOV ax,01h
L2:
MUL bx
DEC bx
JNZ L2
MOV bx,ax
MOV ax,cx
DIV bx
HLT
code ends
end start
