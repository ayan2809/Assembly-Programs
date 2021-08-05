.model small
.stack 100h
.data

    msg db 'Please Enter 9 Numbers From (0 - 9) For First Matrix :  $'
    msg2 db 'Please Enter 9 Numbers From (0 - 9) For Second Matrix :  $'  
    msg3 db '----Matrix After Multiplication---- :  $'
             
    Matrix1 db 20 dup(0)
    Matrix2 db 20 dup(0) 
    ResultantMatrix dw 20 dup(0)
    Result db 3 dup(0)  
    
    ;contains the Values After First Multiplication
    num1 db 0h
    num2 db 0h
    num3 db 0h
    num4 db 0h
    num5 db 0h                                               ;ATTENTION!  this code is in Assembler and microprocessor Emulator 8086
    num6 db 0h                                               ;I did it in this because GUI TURBO ASSEMBLER Was not Working on My PC :(
    num7 db 0h                                               ;Enjoyyy ! :)
    num8 db 0h
    num9 db 0h
    num10 db 0h
    num11 db 0h
    num12 db 0h
    num13 db 0h
    num14 db 0h
    num15 db 0h
    num16 db 0h
    num17 db 0h
    num18 db 0h
    num19 db 0h
    num20 db 0h
    num21 db 0h
    num22 db 0h
    num23 db 0h
    num24 db 0h
    num25 db 0h
    num26 db 0h
    num27 db 0h
    
    
.code
        
 main proc    
    
    
    
    
       
        
        Mov ax,@data
        Mov DS,ax
        
        
        Mov ah,9
        LEA dx,msg
        int 21h                                
        
        mov [Matrix1+1],32    ;For Inserting Space
        mov [Matrix1+3],32
        mov [Matrix1+5],13    ;For New Line
        mov [Matrix1+6],10    ;Move Pointer To the Start Of New Line
        mov [Matrix1+8],32    
        mov [Matrix1+10],32 
        mov [Matrix1+12],13
        mov [Matrix1+13],10
        mov [Matrix1+15],32
        mov [Matrix1+17],32
      
        mov [Matrix1+19],'$'  ; $ will Indicate the End of String
         
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ; Taking Input in First Matrix       ;
        ;                                    ;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
         
        mov ah,1
        int 21h     
         sub al,30h   ;Subtracting 30h to get 0 to 9 Decimals
        mov [Matrix1],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+2],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+4],al
        
        mov ah,1
        int 21h     
         sub al,30h 
        mov [Matrix1+7],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+9],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+11],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+14],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+16],al
        
        mov ah,1
        int 21h     
         sub al,30h
        mov [Matrix1+18],al                                 
               
        mov ah,2
        mov dl,13
        int 21h       
        mov dx,10
        mov ah,2
        int 21h 
            
        Mov ah,9
        LEA dx,msg2
        int 21h
        
        mov [Matrix2+1],32    
        mov [Matrix2+3],32
        mov [Matrix2+5],13 
        mov [Matrix2+6],10
        mov [Matrix2+8],32
        mov [Matrix2+10],32 
        mov [Matrix2+12],13
        mov [Matrix2+13],10
        mov [Matrix2+15],32
        mov [Matrix2+17],32
      
        mov [Matrix2+19],'$'  
        
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ; Taking Input in Second Matrix      ;
        ;                                    ;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+2],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+4],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+7],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+9],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+11],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+14],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+16],al
        
        mov ah,1
        int 21h     
        sub al,30h
        mov [Matrix2+18],al                                 
                 
        mov ah,2
        mov dl,13
        int 21h       
        mov dx,10
        mov ah,2
        int 21h 
            
        
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ; Multiplying Matrix 1 and Matrix 2  ;
        ;                                    ;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
        
        
        mov ah,2    
        mov dl,13
        int 21h       
        mov dx,10
        mov ah,2
        int 21h 
       
        mov al,[Matrix1]  
        mov bl,[Matrix2]
        mul bl
        mov num1,al
        
        mov al,[Matrix1+2]
        mov bl,[Matrix2+7]
        mul bl
        mov num2,al
        
        mov al,[Matrix1+4]
        mov bl,[Matrix2+14]
        mul bl
        mov num3,al
        
        mov al,[Matrix1]
        mov bl,[Matrix2+2]
        mul bl
        mov num4,al
        
        mov al,[Matrix1+2]
        mov bl,[Matrix2+9]
        mul bl
        mov num5,al
        
        mov al,[Matrix1+4]
        mov bl,[Matrix2+16]
        mul bl
        mov num6,al     
        
        mov al,[Matrix1]
        mov bl,[Matrix2+4]
        mul bl
        mov num7,al
        
        mov al,[Matrix1+2]
        mov bl,[Matrix2+11]
        mul bl
        mov num8,al
        
        mov al,[Matrix1+4]
        mov bl,[Matrix2+18]
        mul bl
        mov num9,al
        
        mov al,[Matrix1+7]
        mov bl,[Matrix2]
        mul bl
        mov num10,al
        
        
        mov al,[Matrix1+9]
        mov bl,[Matrix2+7]
        mul bl
        mov num11,al     
        
        mov al,[Matrix1+11]
        mov bl,[Matrix2+14]
        mul bl
        mov num12,al
        
        mov al,[Matrix1+7]
        mov bl,[Matrix2+2]
        mul bl
        mov num13,al
        
        mov al,[Matrix1+9]
        mov bl,[Matrix2+9]
        mul bl
        mov num14,al
        
        mov al,[Matrix1+11]
        mov bl,[Matrix2+16]
        mul bl
        mov num15,al
        
        
        mov al,[Matrix1+7]
        mov bl,[Matrix2+4]
        mul bl
        mov num16,al     
        
        mov al,[Matrix1+9]
        mov bl,[Matrix2+11]
        mul bl
        mov num17,al
        
        mov al,[Matrix1+11]
        mov bl,[Matrix2+18]
        mul bl
        mov num18,al
        
        mov al,[Matrix1+14]
        mov bl,[Matrix2]
        mul bl
        mov num19,al
        
        mov al,[Matrix1+16]
        mov bl,[Matrix2+7]
        mul bl
        mov num20,al   
                   
        mov al,[Matrix1+18]
        mov bl,[Matrix2+14]
        mul bl
        mov num21,al     
        
        mov al,[Matrix1+14]
        mov bl,[Matrix2+2]
        mul bl
        mov num22,al
        
        mov al,[Matrix1+16]
        mov bl,[Matrix2+9]
        mul bl
        mov num23,al
        
        mov al,[Matrix1+18]
        mov bl,[Matrix2+16]
        mul bl
        mov num24,al
        
        mov al,[Matrix1+14]
        mov bl,[Matrix2+4]
        mul bl
        mov num25,al
        
        mov al,[Matrix1+16]
        mov bl,[Matrix2+11]
        mul bl
        mov num26,al     
        
        mov al,[Matrix1+18]
        mov bl,[Matrix2+18]
        mul bl
        
        mov num27,al      
                
    
        
        mov ah,2
        mov dl,13
        int 21h       

        mov dx,10
        mov ah,2
        int 21h
          
          
        
        ;Now ADDING the final Results in ARRAY  
        
        mov [ResultantMatrix+1],32    
        mov [ResultantMatrix+3],32
        mov [ResultantMatrix+5],13 
        mov [ResultantMatrix+6],10
        mov [ResultantMatrix+8],32
        mov [ResultantMatrix+10],32 
        mov [ResultantMatrix+12],13
        mov [ResultantMatrix+13],10
        mov [ResultantMatrix+15],32
        mov [ResultantMatrix+17],32
      
        mov [ResultantMatrix+19],'$'
                    
                    
                    
        lea dx,msg3
        mov ah,9
        int 21h  
        
        ;To Move to New Line
        
        mov dl,13
        mov ah,2
        int 21h
        
        ;To Move to Start of New Line
        
        mov dl,10
        mov ah,2
        int 21h
        
        
        mov ax,0 
        mov al,num1
        mov bl,num2
        add al,num3
        add al,bl
        mov [ResultantMatrix],ax 
       
        
  ;These loops will Convert ASCII Charaters into Decimals By Splitting the Integers     
       
        mov cx,3
c1:  
      mov dl, 0  
      
      MOV ax,[ResultantMatrix] 
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix],ax
     
      cmp cx,3
      je f1
      cmp cx,2
      je s1
      cmp cx,1
      je t1
          
      jne  c2
  
  
f1:
      mov [Result+2],dl
      add [Result+2],48
s1:
      mov [Result+1],dl
      add [Result+1],48
t1:
      mov [Result],dl
      add [Result],48

  loop c1
      mov [Result+3],'$' 
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
        
       
      mov ax,0 
      mov al,num4
      mov bl,num5
      add al,num6
      add al,bl
      mov [ResultantMatrix+2],ax 
        
    
      mov cx,3  
            
c2:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+2] 
      MOV bx,10
      DIV bx
      mov [ResultantMatrix+2],ax
     
      cmp cx,3
      je f2
      cmp cx,2
      je s2
      cmp cx,1
      je t2
  
      jne  c3
  
  
f2:
      mov [Result+2],dl
      add [Result+2],48
s2:
      mov [Result+1],dl
      add [Result+1],48
t2:
      mov [Result],dl
      add [Result],48

  loop c2
      
      Lea dx,Result  
      mov ah,9    
       
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
          
      mov ax,0 
      mov al,num7
      mov bl,num8
      add al,num9
      add al,bl
      mov [ResultantMatrix+4],ax 
       
      mov cx,3          
c3:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+4] 
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+4],ax
      cmp cx,3
      je f3
      cmp cx,2
      je s3
      cmp cx,1
      je t3
      
      jne  c4
  
  
f3:
      mov [Result+2],dl
      add [Result+2],48
s3:
      mov [Result+1],dl
      add [Result+1],48
t3:
      mov [Result],dl
      add [Result],48
    
  loop c3
      
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
      
      mov dl,13 
      int 21h
      mov dl,10
      int 21h
       
      mov ax,0
      mov al,num10
      mov bl,num11
      add al,num12
      add al,bl
      mov [ResultantMatrix+7],ax  
       
        
      mov cx,3          
c4:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+7]
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+7],ax
     
      cmp cx,3
      je f4
      cmp cx,2
      je s4
      cmp cx,1
      je t4
      
  jne  c5
  
  
f4:
      mov [Result+2],dl
      add [Result+2],48
s4:
      mov [Result+1],dl
      add [Result+1],48
t4:
      mov [Result],dl
      add [Result],48

  loop c4 
  
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
         
      mov ax,0
      mov al,num13
      mov bl,num14
      add al,num15
      add al,bl

      mov [ResultantMatrix+9],ax   
       
    
      mov cx,3          
c5:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+9] 
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+9],ax
     
      cmp cx,3
      je f5
      cmp cx,2
      je s5
      cmp cx,1
      je t5
          
      jne  c6
  
  
f5:
      mov [Result+2],dl
      add [Result+2],48
s5:
      mov [Result+1],dl
      add [Result+1],48
t5:
      mov [Result],dl
      add [Result],48

  loop c5
    
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
        
      mov ax,0
      mov al,num16
      mov bl,num17
      add al,num18
      add al,bl
      mov [ResultantMatrix+11],ax     
      mov cx,3          
c6:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+11]
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+11],ax
     
      cmp cx,3
      je f6
      cmp cx,2
      je s6
      cmp cx,1
      je t6
      
      jne c7
  
  
f6:
      mov [Result+2],dl
      add [Result+2],48
s6:
      mov [Result+1],dl
      add [Result+1],48
t6:
      mov [Result],dl
      add [Result],48

  loop c6
  
  
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h  
      
      mov dl,13 
      int 21h
      mov dl,10
      int 21h
   
    
      mov ax,0
      mov al,num19
      mov bl,num20
      add al,num21
      add al,bl
      mov [ResultantMatrix+14],ax 
   
      mov cx,3          
c7:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+14] 
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+14],ax
     
      cmp cx,3
      je f7
      cmp cx,2
      je s7
      cmp cx,1
      je t7
      
      jne  c8
  
  
f7:
      mov [Result+2],dl
      add [Result+2],48
s7:
      mov [Result+1],dl
      add [Result+1],48
t7:
      mov [Result],dl
      add [Result],48

  loop c7
     
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
    
       
      mov ax,0
      mov al,num22
      mov bl,num23
      add al,num24
      add al,bl
      mov [ResultantMatrix+16],ax   
   
      mov cx,3  
            
c8:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+16]
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+16],ax
     
      cmp cx,3
      je f8
      cmp cx,2
      je s8
      cmp cx,1
      je t8
      
      jne  c9
  
  
f8:
      mov [Result+2],dl
      add [Result+2],48
s8:
      mov [Result+1],dl
      add [Result+1],48
t8:
      mov [Result],dl
      add [Result],48
    
      loop c8
        
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
        
      mov ax,0
      mov al,num25
      mov bl,num26
      add al,num27
      add al,bl
      mov [ResultantMatrix+18],ax 
        
      mov cx,3  
            
c9:  
      mov dl, 0  
      MOV ax,[ResultantMatrix+18]
      MOV bx,10
      DIV bx 
      mov [ResultantMatrix+18],ax
     
      cmp cx,3
      je f9
      cmp cx,2
      je s9
      cmp cx,1
      je t9
      
      jne  en
  
  
f9:
      mov [Result+2],dl
      add [Result+2],48
s9:
      mov [Result+1],dl
      add [Result+1],48
t9:
      mov [Result],dl
      add [Result],48
    
      loop c9
         
         
      Lea dx,Result  
      mov ah,9
      int 21h
      mov dl,32 
      mov ah,2
      int 21h
    
en:
      mov ah,2
      mov dl,13
      int 21h       
      mov dx,10
      mov ah,2
      int 21h  
       
      mov ah,4ch
      int 21h
    
    
    
 endp  
 
 end main 
