data segment
n db 2H
r db 1H
num db 0
ARRAY DB 2H,1H,0,0,0,0,0,0,0,0,0,0

data ends
CODE SEGMENT
ASSUME CS:CODE, ds: data 
START:
MOV AX, data
MOV ds, AX
MOV cx,10


MOV dl,n
OR dl,30H
mov ah,2
int 21H


MOV dl,r
OR dl,30H
mov ah,2
int 21H


;xor al,al
;xor bl,bl

mov al,n
mov bl,r
RPT:

ADD al,bl
mov num,al
;ADD al,30H
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
xor al,al
MOV al,bl
mov bl,num
;DEC CX
LOOP RPT
HLT



mov ah,4ch
int 21H

HLT
CODE ENDS
END START

