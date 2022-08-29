
;10 times Hello World print.  

;CX register use for loop .


.MODEL SMALL
.STACK 100H
.DATA

    MSG1 DB "Hello World$"
    
.CODE

MAIN PROC
     
     MOV AX,@DATA                       ;load the data segment register into AX register
     MOV DS,AX                          ;Move the contene of AX into DS register
     
     MOV CX,10                          ;Loop for 10 times
     
FORLOOP:
    
     MOV AH,9                           ;function number 9
     LEA DX,MSG1                        ;Load offset address of MSG into DX register 
     INT 21H                            ;execute
        
     
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
