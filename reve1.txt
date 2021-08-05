data segment
str db "Hello$"
rev db 06 dup(0)
count dw 0
data ends

code segment

assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea si,str
lea di,rev

re:cmp[si],'$'
je l1
inc count
inc si
jmp re

l1: 
mov cx,count
lea si,str
add di,count
mov[di],'$'

l2:
dec di
mov al,[si]
mov [di],al
inc si
loop l2

hlt
code ends
ends start