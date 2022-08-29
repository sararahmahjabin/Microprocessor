.model small

.data

a db 6h
b db 4h

gtr db '?'

.code
main proc
    
        mov ax,@data
        mov ds, ax
        
        
        mov al,a
        cmp al,b    ; compare al> b ?
     ;if   
        jg l
     
     ;else
       mov bl,b
       mov gtr, bl
            jmp exit
       
       l: mov gtr,al
       
       
     exit:  
       
       mov ah,4ch
       int 21h 


    
    main endp
end main