;enter 2 number and display maximum number


.Model Small
.Stack 100H
.Data 
     msg1 db 'Enter first number  : $'
     msg2 db 'Enter second number  : $' 
     msg3 db 'Maximum value is  : $'
.Code
    Main Proc  
         
        MOV Ax,@data                  ;load the data segment register into AX register
        MOV DS,AX                     ;Move the contene of AX into DS register     
        
        
            
        mov ah,9                      ;function number 9
        LEA DX,msg1                   ;Load offset address of MSG1 into DX register 
        int 21h                       ;execute       
    
        mov ah,1                  ;function 1
        int 21h                   ;execute    
        mov bl,al                 ;mov input data bl for secure    
    
    
        
        mov ah,2                   ;function 2 
        mov DL,0DH                 ;Carriage return
        int 21h                    ;execute
        mov DL,0AH                 ;Line feed
        int 21h                    ;execute
    
    
        mov ah,9                      ;function number 9
        LEA DX,msg2                   ;Load offset address of MSG2 into DX register 
        int 21h                       ;execute   
    
        mov ah,1                  ;function 1
        int 21h                   ;execute    
        mov cl,al                 ;mov input data cl for secure  
        
        mov ah,2                   ;function 2 
        mov DL,0DH                 ;Carriage return
        int 21h                    ;execute
        mov DL,0AH                 ;Line feed
        int 21h                    ;execute
         
        mov ah,9                      ;function number 9
        LEA DX,msg3                   ;Load offset address of MSG3 into DX register 
        int 21h                       ;execute   
        
        CMP bL,cL                    ;compare bl with cl
        JG  L1                       ;if bL is getar than(JG)cL than it go to L1 
        
    
        mov ah,2                     ;function 2 
        mov DL,cL                    ;Display cL
        int 21h                      ;execute  
        JMP L2                       ;Skip L1 and go L2
        
     L1:                              
        mov ah,2                     ;function 2 
        mov DL,bL                    ;Display bL
        int 21h                      ;execute  
       
     
     L2: 
        mov ah,4ch                   ;return0
        int 21h                      ;execute
    
   main endp
end main     