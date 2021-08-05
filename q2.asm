data segment
n equ 05H
r equ 03H
data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

MOV AX,n
MOV BX,r
SUB AX,BX
ADD 48
MOV AH,02H
INT 21H

mov ah,4ch
int 21H

HLT
CODE ENDS
END START

