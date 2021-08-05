DATA SEGMENT
     ARRAY1 DB 45,73,60,82,91
     AVG DB ?
     ARRAY2 DB 10,10,10,10,10
     AVG2 DB ?
     ARRAY3 DB 10,10,10,10,10
     AVG3 DB ?
     MSG1 DB "AVERAGE 1 = $"

DATA ENDS

CODE SEGMENT 
    ASSUME DS:DATA,CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX


    ;calculating average of the first student and storing it in AVG register
      LEA SI,ARRAY1 
      

      MOV AX,00
      MOV BL,5

      MOV CX,5 
      LOOP1:
           ADD AL,ARRAY1[SI]
           INC SI
      LOOP LOOP1
      
      DIV BL
     HLT
      XOR SI,SI
      LEA SI,AVG
      MOV [SI],AX
      HLT
      

      ;calculating average of the second student and storing it in AVG2
      XOR SI,SI
      XOR AX,AX
      XOR BX,BX
      XOR CX,CX
      LEA SI,ARRAY2 
      

      MOV AX,00
      MOV BL,5

      MOV CX,5 
      LOOP2:
           ADD AL,ARRAY2[SI]
           INC SI
      LOOP LOOP2
      
      DIV BL
     HLT
      XOR SI,SI
      LEA SI,AVG2
      MOV [SI],AX
      HLT


     ;calculating average of the third student and storing it in the AVG3 register
         XOR SI,SI
      XOR AX,AX
      XOR BX,BX
      XOR CX,CX
      LEA SI,ARRAY3 
      

      MOV AX,00
      MOV BL,5

      MOV CX,5 
      LOOP3:
           ADD AL,ARRAY3[SI]
           INC SI
      LOOP LOOP3
      
      DIV BL
     HLT
      XOR SI,SI
      LEA SI,AVG3
      MOV [SI],AX
      HLT

      MOV AH,4CH
      INT 21H     
CODE ENDS
END START