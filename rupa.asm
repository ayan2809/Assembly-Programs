data segment
n equ 0C9H
r equ 95H
data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

MOV AX,n
MOV BX,r
ADD AX,BX

HLT
CODE ENDS
END START

