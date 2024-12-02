
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small 
.stack 100h
.data
maliha db 3
binta db  ?
.code
main proc
    mov ax,@data
    mov ds,ax; data seg intial
    
    mov ah,2
    add maliha,48
    mov dl,maliha
    int 21h
    
    mov ah,1; initial nai user er theke nite hole 1 function use korte hbe
    int 21h
    mov binta,al ; al e shob variable set thake
                 
    mov ah,2 ; new line print
    mov dl,10
    int 21h
    mov dl,13; character return korbe
    int 21h
    
    mov ah, 2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2     ; binta show korbe
    mov dl,binta                  ; show korte gele msg dl e show kore
    int 21h
          
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
ret




