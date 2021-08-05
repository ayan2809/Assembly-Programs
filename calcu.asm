.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 10,13,10,13,"For Add type   :'+'$"
MSG2 DB 10,13,"For Sub type   :'2'$"
MSG3 DB 10,13,"For Mul type   :'3'$"
MSG4 DB 10,13,"For Div type   :'4'$"
MSG5 DB 10,13,'Choose Any One:$'
MSG6 DB 10,13,10,13,'Enter 1st Number:$'
MSG7 DB 10,13,'Enter 2nd Number:$'
MSG9 DB 10,13,'Enter the Number:$'
MSG10 DB 10,13,10,13,'The Current Result is:$' 
MSG11 DB 10,13,"To continue press 1 else 0 to exit :$"
MSG8 DB 10,13,10,13,'The Result is:$' 
MSG DB 10,13,10,13,'               ***The Program has Ended...***$'
answer dd 01 dup(?)                           

NUM1 DB ?
NUM2 DB ?
RESULT DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG6     ;ENTER 1ST NUMBER message
    MOV AH,9
    INT 21H 
    
    MOV AH,1       ;input of the first number
    INT 21H
    MOV BL,AL


    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H 
    
    
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
  
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE ADDD
    
    CMP BH,2
    JE SUBB
     
    CMP BH,3
    JE MULL
    
    CMP BH,4
    JE DIVV

    CMP BH,'+'
    JE ADDDD
    
    
ADDDD:
        
    LEA DX,MSG9    ;ENTER 2ND NUMBER
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H

    MOV CL,AL
    
    ADD AL,BL
    MOV AH,0
    AAA
    
    MOV BX,AX 
    ADD BH,48
    ADD BL,48 
    
 
    
    LEA DX,MSG10
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    LEA DX,MSG11
    MOV AH,9
    INT 21H 

    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48

    CMP BH,1
    JE LOOO
    JNE EXIT_P


    LOOO: Loop ADDDD
    ; MOV AH,1
    ;INT 21H
    ;MOV BH,AL
    ;SUB BH,48



    ;JMP EXIT_P 
    
    
 

    
ADDD:
    LEA DX,MSG6  ;ENTER 1ST NUMBER
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG7    ;ENTER 2ND NUMBER
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD AL,BL
    MOV AH,0
    AAA
    
    
    MOV BX,AX 
    ADD BH,48
    ADD BL,48 
    
 
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H 
    
    JMP EXIT_P 
    
    
     
    
   
    
   
    
 
        
    
    
    
     
    
SUBB:
 
    LEA DX,MSG6  ;ENTER 1ST NUMBER
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,MSG7    ;ENTER 2ND NUMBER
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    SUB BL,CL
    ADD BL,48
    
    
    
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H
    
    
    
    JMP EXIT_P 
    
    
    
    
MULL:
 
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    
    
    MUL NUM1
    MOV RESULT,AL
    AAM  
    
    
    ADD AH,30H
    ADD AL,30H
    
    
    MOV BX,AX 
    
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H 
    
    
    
    JMP EXIT_P  
    
   
   
   
   
   
DIVV:
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    
    LEA DX,MSG7
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    
    MOV CL,NUM1
    MOV CH,00
    MOV AX,CX  
    
    DIV NUM2
    MOV RESULT,AL
    MOV AH, 00
    AAD  
    
    
    ADD AH,30H
    ADD AL,30H
    
    
    MOV BX,AX 
    
    
    LEA DX,MSG8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    ;LEA DX,MSG
    ;MOV AH,9
    ;INT 21H 
    
    JMP EXIT_P
    
    EXIT_P:
    
        ;LEA DX,MSG
        ;MOV AH,9
        ;INT 21H  
  
    
   
         
        
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN