.MODEL SMALL
.STACK 100H
.DATA  
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    MOV AH,1  
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H 
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV CX,5
LABEL:
   MOV DL,'X'
   INT 21H
   LOOP LABEL
EXIT:
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN





