data segment
mat1 db 1,2,3,4
mat2 db 5,6,7,8
result db 4 dup(0)
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov si,offset mat1
mov di,offset mat2
mov bp,offset result
loop1: mov al,[si]
add [di],[si]
mov [bp],al
inc si
inc di
inc bp
loop loop1
hlt
code ends
end start