.MODEL SMALL
.STACK 100H
.DATA  
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,19 ;COUNTER FOR LOOP 
    MOV AX,100  ;ADDS THE SUM OF SERIES AND STORE THE RESULT
    MOV BX,100 ;USED TO MOVE THE SERIES 3 STEPS FORWARD 
 LABEL:
   ADD AX,BX
   SUB BX,3
   LOOP LABEL
EXIT:
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN