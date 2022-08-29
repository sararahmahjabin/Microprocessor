 
;Without LOOP Instruction 
 
;9 times 5 print.  

;CX register use for loop .


.MODEL SMALL
.STACK 100H
.DATA

    MSG1 DB "Hello World$"                       
    
.CODE

MAIN PROC
     
     MOV AX,@DATA                       ;load the data segment register into AX register
     MOV DS,AX                          ;Move the contene of AX into DS register
     
     MOV BX,10                          ;Loop for 10 times
     MOV CX,1                           ;CX value start 1
                                        
FORLOOP:

     MOV AH,9                           ;function number 9
     LEA DX,MSG1                        ;Load offset address of MSG into DX register 
     INT 21H                            ;execute
   
     
     MOV AH,2                           ;function 2  
     MOV DL,0DH                         ;Carriage return
     INT 21H                            ;execute
     MOV DL,0AH                         ;Line feed
     INT 21H                            ;execute
     
     INC CX                             ;Increment CX value 1
     
     CMP CX,BX                          ;Comapare CX with BX
     JLE FORLOOP                        ;If CX value less than and equal BX than it goes to FORLOOP otherwise it goes to RETURN   
     
RETURN:
     
     MOV AH,4CH                         ;return0
     INT 21H                            ;execute
                                        
    MAIN ENDP
END MAIN
                                     