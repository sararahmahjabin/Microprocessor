 
 
 
;9 times 5 print.  

;CX register use for loop .


.MODEL SMALL
.STACK 100H
.DATA

    VAR1 DB "1"                        ;VAR1 value is 1
    
.CODE

MAIN PROC
     
     MOV AX,@DATA                       ;load the data segment register into AX register
     MOV DS,AX                          ;Move the contene of AX into DS register
     
     MOV CX,5                           ;Loop for 5 times
     
FORLOOP:
     
     MOV DL,VAR1                        ;VAR1 mov DL register
     MOV AH,2                           ;function number 2
     INT 21H                            ;execute
     INC VAR1                           ;VAR1 increase 1
     
     MOV AH,2                           ;function 2  
     MOV DL,0DH                         ;Carriage return
     INT 21H                            ;execute
     MOV DL,0AH                         ;Line feed
     INT 21H                            ;execute
     
     LOOP FORLOOP                       ;It decrease CX value 1 and ceck CX=0 ,continue as long as CX=0
     
RETURN:
     
     MOV AH,4CH                         ;return0
     INT 21H                            ;execute
                                        
    MAIN ENDP
END MAIN
