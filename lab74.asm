data segment
n equ 3
mtx1 db 1,2,3,4,5,6,7,8,9
mtx2 db 4,5,6,7,8,9,1,2,3

mtx3 dw 09h dup(0H)
data ends
code segment
assume cs:code,ds:data 
start:
mov ax,data
mov ds,ax
mov ch,n
mov bx,offset mtx3
mov si,offset mtx1
nxtrow: 
mov di,offset mtx2
mov cl,n
nxtcol: 
mov dl,n
mov bp,0000H
mov ax,0000H
nxtelemnt: 
mov al,[si]
mul byte ptr[di]
add di,03h
dec dl
jnz nxtelemnt
sub si,03h
sub di,08h 
mov [bx],bp
add bx,02h
dec cl
jnz nxtcol
add si,03h
dec ch
jnz nxtrow

hlt
code ends
end start