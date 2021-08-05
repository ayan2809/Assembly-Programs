code segment
start:
; code to implement xnor using basic gates
mov bx, 3527 ; in hexa its DC7
mov cx, 2968 ; in hexa its B98
xor ax,ax 
HLT 

mov ax,cx
OR ax, bx
not ax

HLT 

AND bx,cx
HLT 
OR ax, bx

HLT

code ends
end start
