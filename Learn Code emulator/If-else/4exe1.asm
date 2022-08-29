;If AX contains a negative numbre,put -1 in BX
;if AX contains 0,put 0 in BX
;if AX contains a positive number,put 1 in BX. 


.Model Small
.Stack 100H
.Data
.Code
    Main Proc
        Mov AX,2                   ;Value 0 mov in registor AX
       
        
        CMP AX,0                     ;Compare Ax with 0
        JL  L1                       ;if Ax is less than(JL)0 than it go to L1 
        JG  L2                       ;if Ax is getar than(JG)0 than it go to L2
        JZ  L3                       ;if Ax is equal(JZ)0 than it go to L3 
        
    
        
     L1:                              
        mov BX,-1                    ;-1 mov BX
        JMP L4                       ;Unconditional Jump L4
     L2:                              
        mov BX,1                     ;1 mov BX
        JMP L4                       ;Unconditional Jump L4
     
     L3:                              
        mov BX,0                     ;0 mov BX
                          
     L4: 
        mov ah,4ch                   ;return0
        int 21h                      ;execute
      
   main endp
end main                                                            :;