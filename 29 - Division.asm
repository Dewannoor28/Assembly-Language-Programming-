;div ->unsigned
;div ->signed
;div/idiv divisor

.model small
.stack 100h
.data
a dw ?
b dw ?
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al    ; ei line e vul ase may b
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    mov ax,a
    div b 
    
    mov ah,2
    mov dl,ax
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
   end main