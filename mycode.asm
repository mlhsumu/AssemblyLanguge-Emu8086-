.model small   ;64kilo byte rakhe
.stack  ;size declare kore normally 100h
.code  ;

main proc ; proc=procedure
    mov ah,1;ah mode thik korar jonno useing hoi ;ah input er kaj kore hexa decimal nite 1 nibo ;;;  al input nei,
    int 21h ;mode intrrupt kore waiting mode kore j ekta input nibe tar jonno intrrupt kore
            ;memory sharp rakhte hobe
    mov bl,al    ;;al input nite use hoi;; ;bh/bl register      ; bh er moddehe value nube 1st e and value ta input er majhe show er jonno ax er 8bit er al e nite hobe;; r ei al er value ta bl ni ashbe;; jokhon kno user input nibe al register e chole jabe;;
            ; dh/dl output show er jonno use kore ; 16bit dorkar hole dx use kore; r na drkr hole dl use kore


;; jei value ta nisi oita show korbo now, eta change er jonno ah er mode change kore output e ante hobe;; output mode 2;; output show er jonno dl value show kora lage
    mov ah,2
    mov dl,bl        ;; ekhane bl register e jei value nisi ta dl e ni show korabe
    int 21h        ;;;;output ashar por jate dekhte pare intrrupt kore
 
    mov ah,2
    mov dl,bl
    int 21h
 ;;;;end program
 ;;now need to show output end kore 
    exit: ;; eta return er moto kaj kore
    mov ah,4ch ;;; 4ch=hexadecimal value, jta ah e send kortese, jate bujhte pare command shesh and programe end korbe
    int 21h ;; jatte same vabe waiting zone e jai
    main endp ;; procedure er programe end
end main ;; main proc end    


