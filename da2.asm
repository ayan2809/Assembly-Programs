data segment
org 1000h
radius dd 4.1
height dd 8.2
const dd 3.14
volume dd 01 dup(?)
surface dd 01 dup(?)
sq1 dd 01 dup(?)
sq2 dd 01 dup(?)
lll dd 01 dup(?)
data ends
code segment
assume cs:code,ds:data
.8087
start:
mov ax,data         ; surface area of cone - πr(r+√(h2+r2))
mov ds,ax			; l=√(h2+r2)
finit				; total = πr(r+l)
fld radius
fst st(4)
fmul st(0),st(4)
fst sq1

fld height
fst st(4)
fmul st(0),st(4)
fst sq2

fld sq1
fld sq2
fadd sq2

fsqrt

fadd radius
fmul radius

fld const
fmul const

fst surface

hlt
code ends
end start
end