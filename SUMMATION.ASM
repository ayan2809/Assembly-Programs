DATA SEGMENT
     NUM1 DB 36H,55H,27H,42H
     NUM2 DB 38H,41H,29H,39H
     RESULT DB 5 DUP (0)                                
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA SI,NUM1
      LEA DI,NUM2
      LEA BX,RESULT
     
     
       MOV CX,5
LOOP1:      
       MOV AL,[SI]
                           
       ADD AL,[DI]
       MOV [BX],AL
            
       INC BX
       INC SI
       INC DI
      
       LOOP LOOP1   
     
      MOV AH,4CH
      INT 21H     
ENDS
END START