data segment
n equ 07h
r equ 03h
data ends
code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax

MOV ax, n
MOV bx, r
SUB ax,bx
MOV bx,ax
MOV ax,01h
L1:
MUL bx
DEC bx
JNZ L1
mov cx,ax ; cx store the value of (n-r)!


mov bx, r
mov ax, 1
L2:
MUL bx
DEC bx
JNZ L2

MUL cx
MOV cx,ax
; cx stores the value of (n-r)!*(r!)

MOV bx,n
mov ax,1 

L3:
MUL bx
DEC bx
JNZ L3
DIV cx ;ax containing the value of n! is divided by value stored in cx
HLT

code ends
end start
