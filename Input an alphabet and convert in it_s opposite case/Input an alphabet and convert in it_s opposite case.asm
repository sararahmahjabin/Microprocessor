

.MODEL SMALL
.STACK 100H
.DATA
 
A DB "Enter a lower case alphabate:$"
B DB "$"
.CODE 

MAIN PROC
    
  MOV AX,@DATA 
  MOV DS,AX 
    
  MOV AH,9
  LEA DX,A       
  INT 21H 
    
  MOV AH,1       
  INT 21H             
  MOV BL,AL 
  
  MOV AH,2 
  MOV DL,0AH     
  INT 21H      
  MOV DL,0DH    
  INT 21H  
  
  MOV AH,2 
  SUB BL,20H     
  MOV DL,BL
  INT 21H 
    
  MOV AH,4CH
  INT 21H
    
  MAIN ENDP
END MAIN



