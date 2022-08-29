 
;If AX contains a negative numbre,put -1 in BX
;if AX contains 0,put 0 in BX
;if AX contains a positive number,put 1 in BX. 


.Model Small
.Stack 100H
.Data
.Code 

    MAIN PROC
        MOV AX,2                   ;Value 0 mov in registor AX
        
        CMP AX,0                   ;Compare Ax with 0
        JL L1                      ;if Ax is less than(JL)0 than it go to L1 
        
        MOV BX,1                   ;1 mov BX
        JMP L3                     ;Unconditional Jump L3
        
      L1:
        CMP AX,0                   ;0 mov BX
        JZ L2                      ;Unconditional Jump L2
        
        MOV BX,-1                  ;-1 mov BX
        JMP L3                     ;Unconditional Jump L3
        
      L2:
        MOV BX,0                   ;0 mov BX
        

     L3: 
        mov ah,4ch                 ;return0
        int 21h                    ;execute
      
   main endp
end main  