;Suppose AL and BL contain extended ASCII characters.
;Display the one that comes first in the character sequence.


.Model Small
.Stack 100H
.Data
.Code
    Main Proc
        Mov AL,'1'                   ;Value 1 mov in registor AL
        Mov BL,'2'                   ;Value 2 mov in registor BL
        
        CMP AL,BL                    ;If AL>BL
        JG  L1                       ;if AL is getar than(JG)BL than it go to L1 
        
    
        mov ah,2                     ;function 2 
        mov DL,AL                    ;Display AL
        int 21h                      ;execute  
        JMP L2                       ;Skip L1 and go L2
        
     L1:                              
        mov DL,BL                    ;Display BL
        int 21h                      ;execute  
     
     L2: 
        mov ah,4ch                   ;return0
        int 21h                      ;execute
    
   main endp
end main     