.MODEL SMALL
.DATA
inp db 0ah,0dh,'enter the string: ','$'     ; so i am storing this messsage in the data byte
msg db 0ah,0dh,'the number of vowels: ','$'  ;to print the string during output
vowel db 'a','A','e','E','i','I','o','O','u','U','$'  ; it would check for the vowels including the top values
databuf db 100,0,100 dup('$')
.code
START:
 mov ax,@data    ; to print the 
 mov ds,ax
 
 lea dx,inp      ;to print the input string  
 mov ah,09h
 int 21h
 hlt
 lea dx,databuf
 mov ah,0ah
 int 21h
 mov si,dx
 hlt
 lea dx,msg         ; it would display teh message of number of vowels
 mov ah,09h
 int 21h
       
 mov bl,00h
check:  lea di,vowel       ; move a pointer through the code to check if the character is present in vowel
 mov cx,000ah           
 mov al,[si]                
cont:                       ; it will loop through the string and find character
 cmp al,[di]                
 je found                   ; if the character is found out it would be transfered to the found section
 inc di                     ;on going to the found section it would increment the counter
 loop cont
 jmp next
found:  inc bl              ;it would increment the bl register on finding a vowel
next:   inc si
 cmp databuf[si],0ah        
 jne check
 mov dl,bl                  ;this would print the bl register content
 add dl,30h
 mov ah,02h
 int 21h
 

.EXIT
END START