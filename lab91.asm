data segment
data ends
code segment
assume cs:code, ds:data
start:

MOV AH, 1                 
INT 21H

MOV BL, AL                   

MOV AH, 2                 
MOV DL, 0DH          
INT 21H

MOV DL, 0AH               
INT 21H

MOV AH, 2                
MOV DL, BL
INT 21H

MOV AH, 4CH                
INT 21H

code ends
end start