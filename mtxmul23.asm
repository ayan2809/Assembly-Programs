.MODEL SMALL
.STACK 100H
.DATA
    arr DB 1,2,3,4,5,6,7,8,9

.code
Main Proc
    mov cx, 9
    lea si, arr

l1:
    mov ax, [si]
    ;ADD AH,30H
    ;ADD AL,30H
    ;mov ah, 2
    ;int 21h
    ;mov bx,ax
    ;SUB BL, 11H
    ;MOV AH,2
    ;MOV DL,BH
    ;INT 21H
    mov bl,al
    MOV AH,2
    MOV DL,BL
    INT 21H
    inc si
    loop l1

    mov ah,4ch
    int 21h
    MAIN ENDP
END MAIN