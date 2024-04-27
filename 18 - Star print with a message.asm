;print a message with some star and beep sound
.model small
.stack 100h
.data
a db '***********',10,13,'$'
b db '*****$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dl,'?'
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea dx,a
    mov ah,9
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h 
    
    
    mov ah,9
    lea dx,a
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h  
    
    mov ah,2
    mov dl,007
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
   end main
    
    