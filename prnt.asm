data segment
n db 5
r db 5
;M DW 2H,1H,0H,0H,0H,0H,0H,0H,0H,0H,0H,0H,0H

data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX

;LEA SI,M

MOV al,n
MOV bl,r
MUL bl

AAM
mov ch,AH
mov cl,al

mov dl,ch
add dl,48
MOV AH,2
INT 21H
xor dl,dl
mov dl,cl
add dl,48
MOV AH,2
INT 21H


mov ah,4ch
int 21H

HLT
CODE ENDS
END START

