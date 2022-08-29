 ;Load effective address=LEA
 ;Use function 9
 ;The string must end with a '$'character 
 
 ;Offset address 16 bit that's why we take DX
 
.Model small
.stack 100h
.data  
    msg db 'Hello World!$'
.code
main proc    
    
    MOV Ax,@data                  ;load the data segment register into AX register
    MOV DS,AX                     ;Move the contene of AX into DS register
    
    mov ah,9                      ;function number 9
    LEA DX,MSG                    ;Load offset address of MSG into DX register 
    int 21h                       ;execute    

    
    mov ah,4ch                    ;return0
    int 21h                       ;execute 
    
main endp