;password validation-8086
.model small
.stack 100h
.data
	msg1 db 'Enter Username please;-$'
    msg2 db 'Enter Password please;-$'
    user db 'rupak'
	pass db 'rupak123'
	count dw 6
	correct db 'Password verified and correct'
	notcorrect db 'invalid password'
.code
begin:	mov ax,@data
		mov dx,ax

		mov cx,count
		mov bx,offset pass

		mov dx,offset msg1
		mov ah,09h
		int 21h


        mov dx,offset msg2
		mov ah,09h
		int 21h

again:	mov ah,08h
		int 21h

		cmp al,[bx]
		jne error
		inc bx
		loop again

		mov dx,offset correct
		mov ah,09h
		int 21h
		jmp over

error:	mov dx,offset notcorrect
		mov ah,09h
		int 21h

over:	mov ah,4ch
		int 21h
		end begin