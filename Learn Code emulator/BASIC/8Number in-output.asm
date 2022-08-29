;The number Obviously less than 10
;sub '0',30,48 
 
.Model small
.stack 100h
.data
.code
  main proc
    
    mov ah,1                         ;function 1(INPUT DATA)
    int 21h                          ;execute    
    mov Bl,al                        ;mov input data for secure
    
    sub Bl,'0'                       ;The integer real number get as a input
    Add Bl,5                         ;Input number increase 5
        
    mov ah,2                         ;function 2 
    mov DL,0DH                       ;Carriage return
    int 21h                          ;execute  
    mov DL,0AH                       ;Line feed
    int 21h                          ;execute   
     
    Add Bl,'0'                       ;The integer real number get as a result

    mov ah,2                         ;function 2 
    mov DL,Bl                        ;display Bl
    int 21h                          ;execute  
     
    mov ah,4ch                       ;return0
    int 21h                          ;execute 
    
   main endp
end main    