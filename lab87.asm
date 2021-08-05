code segment
start:
; code to implement xor using basic gates
mov bx, 3527 ; in hexa its DC7
mov cx, 2968 ; in hexa its B98
xor ax,ax 
HLT
mov ax,bx
and ax,cx
not ax
HLT

OR bx,cx
HLT

AND ax,bx ; the ax register will store the final result of xor
HLT

code ends
end start
