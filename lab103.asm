data segment
str1 db "HelloWorld123$"
msg1 db "length of string is:$"
len db ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov si,offset str1
rpt:
mov al,[si]
cmp al,'$'
jz next
inc len
inc si
loop rpt
next:
lea dx,msg1
mov ah,09h
int 21h
mov dl,len
add dl,30h
mov ah,02h
int 21h
mov ah,4ch
int 21h
hlt
code ends
end start