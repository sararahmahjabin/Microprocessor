;Input Two numbers from console and display the total value


.model small

.data

str1 db "Enter the first number : $"
str2 db "Enter the second number :$ "
str3 db "The Total value : $"

a db '?'
b db '?'
sum db '?'

.code

main proc
    
mov ax,@data
mov ds,ax

mov ah,9         ;display str1
lea dx, str1
int 21h    

mov ah,1
int 21h  

sub al, 30h  
mov a,al            ; read a


mov ah,2
mov dl, 0ah         ; new linw
int 21h


mov dl, 0dh        ;carriage return
int 21h

mov ah,9         ;display str2
lea dx, str2
int 21h    

mov ah,1
int 21h  
                  ; read b
sub al, 30h  
mov b,al 
 
 mov bl,a
 add bl,b
 mov sum,bl       ; evaluate sum
 add sum, 30h

mov ah,2
mov dl, 0ah         ; new linw
int 21h


mov dl, 0dh        ;carriage return
int 21h

 
mov ah,9         ;display str3
lea dx, str3
int 21h    
 
 
 mov ah,2
 
 mov dl,sum
 int 21h          ; print sum
 
 
 
 
 
 
    
    
        mov ah, 4ch         ; return to DOS
        int 21h
    
    main endp
end main



