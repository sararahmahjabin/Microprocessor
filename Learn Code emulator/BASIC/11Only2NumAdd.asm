;Only 2 num add  
;Result less than 10

.Model small
.stack 100h
.data

   MSG1 DB 'Enter the 1st Number  : ' , '$'   
   MSG2 DB 'Enter the 2nd Number  : ' , '$'
   Sum DB 'The Result is  : ' , '$' 
.code
  main proc
    
    
    MOV Ax,@data              ;load the data segment register into AX register
    MOV DS,AX                 ;Move the contene of AX into DS register
    mov ah,9                  ;function number 9
    LEA DX,MSG1               ;Load offset address of MSG into DX register 
    int 21h                   ;execute    

    
    mov ah,1                  ;function 1
    int 21h                   ;execute    
    mov Bl,al                 ;mov input data for secure
    

        
    mov ah,2                  ;function 2 
    mov DL,0DH                ;Carriage return
    int 21h                   ;execute  
    mov DL,0AH                ;Line feed
    int 21h                   ;execute     
                          
                          
    MOV Ax,@data              ;load the data segment register into AX register
    MOV DS,AX                 ;Move the contene of AX into DS register
    mov ah,9                  ;function number 9
    LEA DX,MSG2               ;Load offset address of MSG into DX register 
    int 21h                   ;execute    

    
    mov ah,1                  ;function 1
    int 21h                   ;execute    
    mov Cl,al                 ;mov input data for secure
    
    
        
    mov ah,2                  ;function 2 
    mov DL,0DH                ;Carriage return
    int 21h                   ;execute  
    mov DL,0AH                ;Line feed
    int 21h                   ;execute     
    
    MOV Ax,@data              ;load the data segment register into AX register
    MOV DS,AX                 ;Move the contene of AX into DS register
    mov ah,9                  ;function number 9
    LEA DX,Sum                ;Load offset address of Sum into DX register 
    int 21h                   ;execute    
    
    Add Bl,Cl                 ;Add Numbers
    Sub Bl,'0'                ;The Integer real number get as a result 
     
    mov ah,2                  ;function 2 
    mov DL,Bl                 ;display Bl
    int 21h                   ;execute  
    
    mov ah,4ch                ;return0
    int 21h                   ;execute 
    
   main endp
end main    