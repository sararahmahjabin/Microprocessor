
;If AL contains 1 or 3,display "o"
;if AL contains 2 or 4,display "e"
 


.MODEL SMALL
.STACK 100H
.DATA
.CODE 

    MAIN PROC   
        
        MOV AL,1                 ;Value 1 mov in registor AL
        
        CMP AL,1                 ;Compare AL with 1 
        JE ODD                   ;if AL is equal(JE)1 than it go to ODD 
        CMP AL,3                 ;Compare AL with 3
        JE ODD                   ;if AL is equal(JE)3 than it go to ODD 
        
        CMP AL,2                 ;Compare AL with 2
        JE EVEN                  ;if AL is equal(JE)2 than it go to EVEN
        CMP AL,4                 ;Compare AL with 4
        JE EVEN                  ;if AL is equal(JE)4 than it go to EVEN
        JMP L4                   ;Unconditional Jump L4
        
    ODD:
        MOV DL,'e'               ;mov e DL
        MOV AH,2                 ;Function 2
        INT 21H                  ;execute
        JMP L4                   ;Unconditional Jump L4
        
        
    EVEN:
        MOV DL,'e'               ;mov e DL
        MOV AH,2                 ;Function 2
        INT 21H                  ;execute
        
        

    L4: 
        MOV AH,4CH               ;return0
        INT 21H                  ;execute
      
   MAIN ENDP
END MAIN  