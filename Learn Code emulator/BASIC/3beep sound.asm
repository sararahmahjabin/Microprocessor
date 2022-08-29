
 .Model small
.stack 100h
.data
.code
main proc
    
    mov ah,2                   ;function 2 
    mov DL,7h                  ;7h for beep sound
    int 21h                    ;execute    
    
    
    mov ah,4ch                 ;return0
    int 21h                    ;execute 
    
main endp
    


