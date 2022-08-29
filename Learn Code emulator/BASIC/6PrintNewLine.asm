 
.Model small
.stack 100h
.data
.code
main proc
    
    mov ah,2                   ;function 2 
    mov DL,'A'                 ;display A
    int 21h                    ;execute    
    
    mov ah,2                   ;function 2 
    mov DL,0DH                 ;Carriage return
    int 21h                    ;execute  
    mov DL,0AH                 ;Line feed
    int 21h                    ;execute   
    
    
    mov ah,2                   ;function 2 
    mov DL,'B'                 ;display B
    int 21h                    ;execute
       
    mov ah,4ch                 ;return0
    int 21h                    ;execute 
    
main endp
    

    


