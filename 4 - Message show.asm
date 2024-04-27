.model small
.stack 100h
.data
mes db 'Dewan Nafiul Islam Noor $'

.code 

  main proc
    
 mov ax,@data
 mov ds,ax
    
    ;String output

    mov ah,9
    
    lea dx,mes
    int 21h 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main       