.model small
.stack 100h
.data
a db 'Enter your password $'
ok db 'Correct Password $'
notok db 'Wrong Password $'
pass db 'assembly $'
pass1 dw 8
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov cx,pass1
    mov bx,offset pass
    
    mov ah,9
    lea dx,a
    int 21h
    
    l1:
    mov ah,8
    int 21h
    
    cmp al,[bx]
    jne l2
    inc bx
    loop l1
    
    mov ah,9
    lea dx,ok
    int 21h
    jmp exit
    
    l2:
    mov ah,9 
    lea dx,notok
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
   end main
    