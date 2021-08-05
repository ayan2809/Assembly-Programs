DATA SEGMENT
A DB ?
B DB ?
AB DB ?
R0 DB 0000H
R1 DB 0000H
R2 DB 0000H
R3 DB 0000H
R4 DB 0000H
R5 DB 0000H
R6 DB 0000H
R7 DB 0000H
DATA ENDS
CODE SEGMENT
START:
MOV R0,#04
MOV R1,#02
MOV A,R0
MOV B,R1
CJNE A,B,CHECK
LJMP COMPUTE
CHECK:
     JC STOP         
     SUBB A,R1
     MOV R2,A        
     MOV A,R0
 L1:  DEC R0
      MOV B,R0
      MUL AB
      CJNE R0,#01,L1
      MOV R3,A
      MOV A,R1
 L2:  DEC R1
    MOV B,R1
    MUL AB
    CJNE R1,#01,L2
    MOV R4,A        
    MOV A,R2

 L3:DEC R2
     MOV B,R2
    MUL AB
    CJNE R1,#01,L3
    MOV R5,A        
    MOV A,R3
    MOV B,R5
    DIV AB         
    MOV R6,A       
    MOV B,R4 
    DIV AB          
    MOV R7,A        
    LJMP STOP
COMPUTE:       
    DEC R0        
    MOV B,R0
    MUL AB
    CJNE R0,#01,LABEL1
    MOV R6,A        
    MOV R7,#01      

CODE ENDS
END START