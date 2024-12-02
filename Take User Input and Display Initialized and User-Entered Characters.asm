
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


.model small
.stack
.data
 var db 2   ; initial the variable = 2 value
 var1 db ?  ; declare uninitial variable var1 (user input will be stored here)
.code
 main proc
    mov ax,@data ; load the address of the data segment into register ax
    mov ds, ax    ;set the data segment register DS to the value in Ax (data segment initialization)
   
    mov ah,1    ;prepare for input function (DOS intrrupt 21h, function 1: read character from user)
    int 21h     ; execute the interrupt to read a character from the user
    mov var1, al    ;store the input character (_which is in AL _) into var1 
    
    mov ah, 2   ; prepare for output function(((Dos intrrupt 21h, function: display a character)))
    mov dl, var ; load the value of var(which is 2) into DL
    int 21h     ; execute the interrupt to display the character stored in DL (ASCII value 2)
    mov dl, var1; load the user input (stored in var1) into DL
    int 21h     ;exe.................................. user input stored in DL
    
    exit:
    mov ah, 4ch
    int 21h
    
    main endp
 end main
     
ret
 ;   Takes a character input from the user.
;Displays the initialized character (var), which is ASCII 2 (a non-printable control character).
;Displays the user-input character (var1), which is the character entered by the user.
;Exits the program cleanly.



