   
;Small to capital   
;;Sub 32 for capital character 


.Model small
.stack 100h
.data
.code
  main proc
    
    mov ah,1                          ;function 1
    int 21h                           ;execute    
    mov Bl,al                         ;mov input data for secure
    
    sub Bl,32                         ;for capital character
        
    mov ah,2                          ;function 2 
    mov DL,0DH                        ;Carriage return
    int 21h                           ;execute  
    mov DL,0AH                        ;Line feed
    int 21h                           ;execute   
     
    mov ah,2                          ;function 2 
    mov DL,Bl                         ;Display Bl
    int 21h                           ;execute  
    
    mov ah,4ch                        ;return0
    int 21h                           ;execute 
    
   main endp
end main    