.MODEL SMALL
.DATA
A DW 15
B DW 5
.CODE
MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,A
    MOV BX,B
    MOV CX,0
    
    WHILE:
    CMP AX,BX
    JGE L1
    JMP END
    
    L1:
    SUB AX,BX
    INC CX
    JMP WHILE
    
    END:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN