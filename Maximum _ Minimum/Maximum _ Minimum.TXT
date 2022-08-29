
;Input for integer values x,y,c from user
;where 0<=x, y<=9 and c=0 or 1
;If c=0 print the minimum of x,y and
;and if c=1 print the maximum of x,y in the console.
 


.MODEL SMALL
.STACK 100H
.DATA   
    
    X DB ?
    Y DB ?
    C DB ?
    
    MSG1 DB "ENTER X: $"
    MSG2 DB "ENTER Y: $"
    MSG3 DB "PLEASE ENTER FOR MAX 1 & FOR MIN 0: $"
    MSG4 DB "MIN: $"   
    MSG5 DB "MAX: $"
    
.CODE 

    MAIN PROC 
        
        MOV AX,@DATA                   ;load the data segment register into AX register
        MOV DS,AX                      ;Move the contene of AX into DS register
        
        MOV AH,9                       ;function number 9
        LEA DX,MSG1                    ;Load offset address of MSG into DX register 
        INT 21H                        ;execute
        
        MOV AH,1                       ;function 1(INPUT DATA)
        INT 21H                        ;execute 
        SUB AL,'0'                     ;The integer real number get as a input
        MOV X,AL                       ;mov AL value X
        
        MOV AH,2                       ;function 2      
        MOV DL,0DH                     ;Carriage return
        INT 21H                        ;execute
        MOV DL,0AH                     ;Line feed
        INT 21H                        ;execute
        
        MOV AH,9                       ;function number 9
        LEA DX,MSG2                    ;Load offset address of MSG into DX register
        INT 21H                        ;execute
        
        MOV AH,1                       ;function 1(INPUT DATA)
        INT 21H                        ;execute
        SUB AL,'0'                     ;The integer real number get as a input
        MOV Y,AL                       ;mov AL value Y
        
        MOV AH,2                       ;function 2 
        MOV DL,0DH                     ;Carriage return
        INT 21H                        ;execute
        MOV DL,0AH                     ;Line feed
        INT 21H                        ;execute
        
        MOV AH,9                       ;function number 9
        LEA DX,MSG3                    ;Load offset address of MSG into DX register
        INT 21H                        ;execute
        
        MOV AH,1                       ;function 1(INPUT DATA)
        INT 21H                        ;execute
        SUB AL,'0'                     ;The integer real number get as a input
        MOV C,AL                       ;mov AL value C
        
        MOV AH,2                       ;function 2
        MOV DL,0DH                     ;Carriage return
        INT 21H                        ;execute
        MOV DL,0AH                     ;Line feed
        INT 21H                        ;execute
        
        
        CMP C,0                        ;Compare C with 0 
        JE MIN                         ;if C is equal(JE)0 than it go to MIN
        CMP C,1                        ;Compare C with 1
        JE MAX                         ;if C is equal(JE)0 than it go to MAX
        JMP RETURN                     ;Unconditional Jump RETURN
        
     MIN:
     
        MOV AH,9                       ;function number 9
        LEA DX,MSG4                    ;Load offset address of MSG
        INT 21H                        ;execute
        
        MOV AL,Y                       ;Y regiter Value mov in registor AL
        CMP X,AL                       ;X regiter Value compare with AL registor value
        JGE PRINTY                     ;if X is Greater than & equal(JGE)AL than it go to PRINTY 
        JMP PRINTX                     ;Unconditional Jump PRINTX
            
     MAX:
     
        MOV AH,9                       ;function number 9
        LEA DX,MSG5                    ;Load offset address of MSG
        INT 21H                        ;execute
        
        MOV AL,Y                       ;X regiter Value mov in registor AL
        CMP X,AL                       ;X regiter Value compare with AL registor value
        JGE PRINTX                     ;if X is Greater than & equal(JGE)AL than it go to PRINTX 
        JMP PRINTY                     ;Unconditional Jump PRINTY     
        
    PRINTX:
        
        MOV DL,X                       ;X regiter Value mov in registor DL                           
        ADD DL,'0'                     ;add '0' for real integer number
        MOV AH,2                       ;function 2
        INT 21H                        ;execute
        JMP RETURN                     ;Unconditional Jump RETURN
    
    PRINTY:
        
        MOV DL,Y                       ;Y regiter Value mov in registor DL                           
        ADD DL,'0'                     ;add '0' for real integer number
        MOV AH,2                       ;function 2
        INT 21H                        ;execute
       

    RETURN: 
        MOV AH,4CH                     ;return0
        INT 21H                        ;execute
      
   MAIN ENDP            
END MAIN  