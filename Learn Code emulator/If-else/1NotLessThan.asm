.Model Small
.Stack 100H
.Data
.Code
    Main Proc
        Mov Ax,1                 ;Value 1 mov in registor Ax
        
        CMP Ax,0                 ;If AX>=0
        JNL L1                   ;if Ax is Not less than(JNL)0 than it go to L1 
        NEG AX                   ;if Ax is less than 0 than it go to Neg Ax
        
      L1:
        mov ah,4ch               ;return0
        int 21h                  ;execute 
    
   main endp
end main     