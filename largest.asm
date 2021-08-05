data segment
string1 db 08h,14h,05h,0Fh,09h
res db ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cx,05
mov bl,00h
lea si,string1
up:
mov al,[si]
cmp al,bl
jl next:
mov bl,al
next:
inc si
dec cx
jnz up
code ends
end start