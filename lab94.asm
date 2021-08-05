 .MODEL SMALL
 .STACK 100H

 .DATA
    STRING_1  DB  'Hello World$'
    STRING_2  DB  'I am Ayan Sadhukhan$'

 .CODE
   MAIN PROC
     MOV AX, @DATA              
     MOV DS, AX

     LEA DX, STRING_1             
     MOV AH, 9            
     INT 21H

     MOV AH, 2                    
     MOV DL, 0DH
     INT 21H

     MOV DL, 0AH                  
     INT 21H

     LEA DX, STRING_2             
     MOV AH, 9
     INT 21H

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN