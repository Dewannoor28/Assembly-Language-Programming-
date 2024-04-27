.model small
.stack 100h
.data
a db 10,13, 'for and $'
b db 10,13, 'for or $'
c db 10,13, 'for xor $'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov bl,111b;op1
    and bl,101b;op2
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    or1:
    mov bl,101b
    or bl,101b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    xor: 
    ; 0 xor 0 = 0
    ;1 xor 1 = 0
    
    mov bl,111b
    xor bl,100b
    
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
   end main
    