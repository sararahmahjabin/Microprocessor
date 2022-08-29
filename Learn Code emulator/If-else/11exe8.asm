 
;PRINT 10*10 "*".

.MODEL SMALL
.STACK 100H
.DATA
      
      MSG1 DB "*$"
      VAR1 DW ? 
      VAR2 DW ? 
                     
    
.CODE

MAIN PROC
     
     MOV AX,@DATA                       ;load the data segment register into AX register
     MOV DS,AX                          ;Move the contene of AX into DS register
     
     MOV BX,10                          ;value 10 mov BX register
     MOV VAR1,1                         ;VAR1 value start 1
                                       
OUTERFORLOOP:

     MOV VAR2,1                         ;VAR2 value start 2
     
     INNERFORLOOP:
         
         MOV AH,9                       ;function number 9
         LEA DX,MSG1                    ;Load offset address of MSG into DX register 
         INT 21H                        ;execute
         
          
         INC VAR2                       ;Increment VAR2 value 1
     
         CMP VAR2,BX                    ;Comapare VAR2 with BX
         JLE INNERFORLOOP               ;If VAR2 value less than and equal BX than it goes to INNERFORLOOP otherwise it goes to RETURN   
     

     
     MOV AH,2                           ;function 2  
     MOV DL,0DH                         ;Carriage return
     INT 21H                            ;execute
     MOV DL,0AH                         ;Line feed
     INT 21H                            ;execute
     
     INC VAR1                           ;Increment VAR1 value 1
     
     CMP VAR1,BX                        ;Comapare VAR1 with BX
     JLE OUTERFORLOOP                   ;If VAR1 value less than and equal BX than it goes to OUTERFORLOOP otherwise it goes to RETURN   
     
RETURN:
     
     MOV AH,4CH                         ;return0
     INT 21H                            ;execute
                                        
    MAIN ENDP
END MAIN
  
  
 
