       
       
.MODEL SMALL
.STACK 100H

.DATA
A DB 'ENTER A NUMBER:$'
B DB 'ZERO$'
C DB 'THIS NUMBER IS NEGATIVE$'
D DB 'THIS NUMBER IS POSITIVE$'
RES DB ?
    
.CODE
  
  MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,A
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H  
    
    MOV RES,AL  
      
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    MOV DL,0AH
    INT 21H
    
    CMP RES,30H
    
    JL NEGETIVE
    JG POSITIVE
    JE ZERO
    
    ZERO:  
    LEA DX,B
    MOV AH,9
    INT 21H 
    JMP EXIT
    
    
    
    NEGETIVE: 
    LEA DX,C
    MOV AH,9
    INT 21H 
    JMP EXIT
    
    POSITIVE:
 
    LEA DX,D
    MOV AH,9
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP
  END MAIN
