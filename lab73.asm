Data segment
rlt db ?
coun db 0AH
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,rlt
mov cl,coun
mov ax,0000H
mov bx,0001H
L1:
ADD ax,bx
mov [si],ax
mov ax,bx
mov bx,[si]
inc si
loop L1

HLT
code ends
end start