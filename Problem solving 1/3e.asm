.MODEL SMALL

.STACK 100H

.DATA

.CODE

MAIN PROC    
    
    MOV BL,01100110B
    
    TEST BL,11111111B


    MOV AH,4CH

    INT 21H 

    MAIN ENDP

END MAIN