,Z= (A+B)-(E+F)
,SOLVE AND ATTACH THE SOLUTION

.MODEL SMALL
.STACK 100H
.DATA

A DW 0004H
B DW 0006H

SUM1 DW '?'   

E DW 0002H
F DW 0004H

SUM2 DW '?'

RES DW '?'

.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    
     
      MOV AX,A ;AX=A
      ADD AX,B ;AX=AX+B
      
        MOV SUM1,AX 
        
      MOV AX,E ;AX=E
      ADD AX,F ;AX=AX+F
      
        MOV SUM2,AX 
        
      MOV AX,SUM1 ;AX=SUM1
      SUB AX,SUM2 ;AX=AX+SUM2 
        
        MOV RES,AX
        
    
  MAIN ENDP

END MAIN