data segment
n equ 05H
r equ 05H
arr db 10,20,30,40,50
data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

LEA SI, arr

XOR ax,ax
XOR dx,dx
mov cx,5

L1:
mov dl, [SI]
add ax, dx
inc SI
loop L1

HLT
CODE ENDS
END START

