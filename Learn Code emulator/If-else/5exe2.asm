;If AX contains a negative numbre,put -1 in BX
;if AX contains 0,put 0 in BX
;if AX contains a positive number,put 1 in BX. 


.Model Small
.Stack 100H
.Data
.Code
    Main Proc
       
        Mov AL,1                 ;Value 1 mov in registor AL
        Mov BL,2                 ;Value 2 mov in registor BL
        Mov CL,3                 ;Value 3 mov in registor CL
       
        
        
        CMP AL,BL                ;Compare AL with BL       
        JG  LEFT                 ;if AL is Greater than(JG)BL than it go to LEFT       
        
        CMP AL,CL                ;Compare AL with CL  
        JG RIGHTLEFT             ;if AL is Greater than(JG)CL than it go to RIGHTLEFT   
        
        Mov DL,AL                ;AL value mov DL
        JMP PRINT                ;Unconditional Jump PRINT       
        
     RIGHTLEFT:                  
        Mov DL,CL                ;CL value mov DL
        JMP PRINT                ;Unconditional Jump PRINT  
        
     LEFT:
        CMP BL,CL                ;Compare BL with CL
        JG LEFTLEFT              ;if BL is Greater than(JG)CL than it go to LEFTLEFT  
        
        MOV DL,BL                ;BL value mov DL
        JMP PRINT                ;Unconditional Jump PRINT
        
     LEFTLEFT:
        MOV DL,CL                ;CL value mov DL
        JMP PRINT                ;Unconditional Jump PRINT
        
     PRINT:
        ADD DL,'0'               ;add '0' for real integer number
        MOV AH,2                 ;show display
        INT 21H                  ;execute
        
        mov ah,4ch               ;return0
        int 21h                  ;execute 

        
        
           

      
   main endp
end main                                                            :;