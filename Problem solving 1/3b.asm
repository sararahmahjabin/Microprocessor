.MODEL SMALL

.STACK 100H

.DATA

.CODE

MAIN PROC    
    
    MOV BX,01101101B
    
    TEST BX,00000001B


    MOV AH,4CH

    INT 21H 

    MAIN ENDP

END MAIN