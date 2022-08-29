 
;0 to 9 print without FORLOOP 
 
;9 times 5 print.  

;CX register use for loop .


.MODEL SMALL
.STACK 100H
.DATA

      VAR1 DB "0"                       ;VAR1 value is 0                    
    
.CODE

MAIN PROC
     
     MOV AX,@DATA                       ;load the data segment register into AX register
     MOV DS,AX                          ;Move the contene of AX into DS register
     
     MOV BX,10                          ;Loop for 10 times
     MOV CX,1                           ;CX value start 1
                                        
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
     
     INC CX                             ;Increment CX value 1
     
     CMP CX,BX                          ;Comapare CX with BX
     JLE FORLOOP                        ;If CX value less than and equal BX than it goes to FORLOOP otherwise it goes to RETURN   
     
RETURN:
     
     MOV AH,4CH                         ;return0
     INT 21H                            ;execute
                                        
    MAIN ENDP
END MAIN
  
  