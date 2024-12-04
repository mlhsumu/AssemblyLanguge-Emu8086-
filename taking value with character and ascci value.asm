
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack
.data

msg db 2
msg1 db ?

.code
main proc
    mov ax,@data  ;pass data to ax  ;ax=data er value gula ax e antese
  
    mov ds,ax   ; data segment e pass kore dibe value gulo ax register theke ni
                ; data sement e processor kaj kore
    
    mov ah,1
    int 21h
    mov msg1, al ; msg1 er value al nibo
    
                  ;msg1 er value user nibe
       ; msg,msg1 both i want to print in same moment so i am taking output mode in one time
    
    mov ah,2    ;output mode
    
    add msg,48    ; if exact 2 ante chai taile comment thakbe na "add msg,48" er age
    mov dl, msg ;
    int 21h
    
    
    mov dl, msg1
    int 21h
     
     
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    

ret
      ;console e output msg 2 value er jonno ascii value onujai emoji show kore
                        ;jodi exact 2 ante chai 48 add korte hobe and 48 theke 0 start hoise
                        
                        
                        
      ;console e out put 5 nile 5 show korbe
                    ;user character hishebe 5 nicche


