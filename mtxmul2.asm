        .model small 
        .stack 64 
        .data 
ar1 db 2,2,2   ;row1 of array A 
ar2 db 2,2,2    ;row2   ,, 
ar3 db 2,2,2   ;row3   ,, 
bc1 db 1,1,1   ;column1 of array B 
bc2 db 1,1,1   ;column2    ,, 
bc3 db 1,1,1    ;column3    ,, 
result db 9 dup(?)   ;result matrix 
l2 db ? 
l1 db ? 
        .code 
main: 
        mov ax,@data 
        mov ds,ax 
        mov es,ax 
        mov bp,0 
        mov l2,3 
        lea si,ar1 
rep2: 
        lea di,bc1 
        mov l1,3 
rep1: 
        call matmul 
        mov ds:result[bp],dl 
        inc bp 
        add di,3 
        dec l1 
        jnz rep1 
        add si,3 
        dec l2 
        jnz rep2 
        int 3 
matmul proc 
        mov cx,3 
        mov bx,0 
        mov dl,0 
again: 
        mov al,[si][bx] 
        imul byte ptr [di][bx] 
        add dl,al 
        inc bx 
        loop again 
        ret 
matmul endp 
        ;align 16 
end main
