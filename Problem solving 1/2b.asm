.MODEL SMALL

.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV BL,00111100B
    
    
    OR BL,10000001B


    MOV AH,4CH

    INT 21H 

    MAIN ENDP

END MAIN