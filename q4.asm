data segment
n equ 05H
r equ 05H
data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

MOV AX,n
MOV BX,r
DIV BX

HLT
CODE ENDS
END START

