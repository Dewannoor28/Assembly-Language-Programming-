.model small
.stack 100h
.data
msg db 3     ; ascii value print korte hole 3+48=51 
             ;dite hobe na hole 3 te love print hobe
msg1 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,msg
    int 21h 
    
    mov ah,1
    int 21h
    mov msg1,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,msg1
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main