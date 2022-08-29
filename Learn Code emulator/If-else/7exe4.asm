
;Input three integer values x,y,z from user
;where 0<=x, y<=4, x>y and z=0 or 1
;If z=0 print x+y
;and if z=1 print x-y in the console.
 


.MODEL SMALL
.STACK 100H
.DATA   
    
    X DB ?
    Y DB ?
    Z DB ?
    
    MSG1 DB "ENTER X: $"
    MSG2 DB "ENTER Y: $"
    MSG3 DB "ENTER Z: $"
    MSG4 DB "X+Y: $"   
    MSG5 DB "X-Y: $"
    
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
        MOV Z,AL                       ;mov AL value Z
        
        MOV AH,2                       ;function 2
        MOV DL,0DH                     ;Carriage return
        INT 21H                        ;execute
        MOV DL,0AH                     ;Line feed
        INT 21H                        ;execute
        
        
        CMP Z,0                        ;Compare Z with 0 
        JE ADD                         ;if Z is equal(JE)0 than it go to ADD
        CMP Z,1                        ;Compare Z with 1
        JE SUB                         ;if Z is equal(JE)0 than it go to SUD
        JMP RETURN                     ;Unconditional Jump RETURN
        
     ADD:
     
        MOV AH,9                       ;function number 9
        LEA DX,MSG4                    ;Load offset address of MSG
        INT 21H                        ;execute
        
        MOV DL,X                       ;X regiter Value mov in registor DL
        ADD DL,Y                       ;Add Y register value with DL register value
        ADD DL,'0'                     ;add '0' for real integer number
        MOV AH,2                       ;function 2
        INT 21H                        ;execute
        JMP RETURN                     ;Unconditional Jump RETURN
        
        
     SUB:
       
        MOV AH,9                       ;function number 9
        LEA DX,MSG5                    ;Load offset address of MSG
        INT 21H                        ;execute
        
        MOV DL,X                       ;X regiter Value mov in registor DL
        SUB DL,Y                       ;Y regiter Value mov in registor DL
        ADD DL,'0'                     ;add '0' for real integer number
        MOV AH,2                       ;function 2
        INT 21H                        ;execute
        JMP RETURN                     ;Unconditional Jump RETURN

    RETURN: 
        MOV AH,4CH                     ;return0
        INT 21H                        ;execute
      
   MAIN ENDP            
END MAIN  