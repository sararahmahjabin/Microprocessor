.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,7
    MOV BX,6
    MOV CX,5

    
    CMP AX,BX
    JL LABEL
    CMP BX,CX
    JL LABEL

    
    MOV DX,1
    JMP EXIT

    
LABEL:
    MOV DX,0
    JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN