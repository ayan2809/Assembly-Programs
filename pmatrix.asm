data segment
matrixa DB 02H,03H,05H,06H,08H,04H,09H,0A0H,08H
matrixb DB 07H,05H,01H,02H,50H,90H,03H,04H,0AAH
matrixc DB 9 DUP(0)
n equ 09H
data ends
start:
mov ax,data 
mov ds,ax
mov ch,n
mov bx, offset matrixc
mov SI,offset matrixa
mov DI,offset matrixb
mov cl,n
mov dl,n
mov bp, 0000H
mov ax, 0000H
NXTE:
mov al,[SI]
mul BYTE PTR[DI]
add bp,ax
inc SI
add DI,03H
DEC dl
JNZ NXTE

SUB DI,08
SUB SI,03

MOV [BX],bp
add bx.02
dec cl
jnz nxtcol
add SI,03
DEC ch
jnz nxt row
hlt
code ends
end start