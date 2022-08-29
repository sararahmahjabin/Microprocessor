
.Model small
.stack 100h
.data
.code
main proc
    
    mov ah,1                  ;function 1
    int 21h                   ;execute    
    mov Bl,al                 ;mov input data for secure
    
    mov ah,4ch                ;return0
    int 21h                   ;execute 
    
main endp
    
    

