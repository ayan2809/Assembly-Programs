.MODEL SMALL
.STACK 100H
.DATA  
STRING DB 100 DUP(?)
;STRING DB "HELLOWORLD123"
MSG1 DB "ENTER A STRING: $"
MSG2 DB 0DH, 0AH, "NO. OF CHARACTERS: $" 
CHARACTERS DW 0   
.CODE
MAIN PROC
    
     MOV AX, @DATA
     MOV DS, AX
     MOV ES, AX
     
     MOV AH, 9
     LEA DX, MSG1
     INT 21H
     
     LEA DI, STRING
 
     MOV AH, 1
     READ:
     INT 21H
     CMP AL, 0DH
     JE ENDOFSTRING
     STOSB
     JMP READ
     
     ENDOFSTRING:
     MOV AL, "$"
     STOSB
     
     XOR BX, BX
     
     COUNT: 
     CMP [STRING+BX], '$'
     JE EXIT
     CMP [STRING+BX], ' '
     JE SPACE
     INC BX
     INC CX
     INC CHARACTERS
     JMP COUNT
     
     
     SPACE:
     INC BX
     JMP COUNT
     ;HLT
     EXIT:     
    ;HLT
   ; XOR CX,CX
    ;MOV CX,CHARACTERS
    ;HLT
     MOV AH, 9
     LEA DX, MSG2
     INT 21H
     

    

     MOV AH, 2
     MOV DX, CHARACTERS
     ADD DX, 30H
     INT 21H

     
     MOV AH, 4CH                  
     INT 21H
    MAIN ENDP
END MAIN