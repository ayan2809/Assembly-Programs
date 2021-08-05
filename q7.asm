data segment
n equ 07H
data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

mov ah,0
check:
mov dl,2
div dl
cmp ah,0
jne ODD

EVEN:
mov cx,1
jmp done

ODD:
mov cx,2

done:

HLT
CODE ENDS
END START

