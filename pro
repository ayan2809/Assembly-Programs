code segment
mov si,8000
call fact
hlt
fact:mov bx[si]
mov ax,01
label1:mul bx
       dec bx
       jnz label1
       mov d1,8000
       mov[ds],ax
code ends

