DATA SEGMENT
array DW 01H,02H,03H,04H,08H,06H,07H,05H,09H
COUNT EQU 09H
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:  
MOV AX,DATA
MOV DS,AX
MOV CX,COUNT
A:
MOV AX,array[SI]
ROR AX,01
JC ODD
INC BX
JMP NEXT
ODD:
INC DX
NEXT:
ADD SI,02
LOOP A
HLT
CODE ENDS
END START