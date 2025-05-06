.ORG 100h  

.DATA
A DB 11 ; Variable A got a BYTE value 11
B DW 500 ; Variable B got a WORD value 500
SUM DW ? ; Variable SUM is defined as a WORD variable without any value
DIFFERENCE DB ? ; Variable DIFFERENCE is defined as a BYTE variable without any value
MULTIPLICATION DW ?
DIVISION DB ? 

.code
main:
    mov ax, 30
    add ax, 15
    
    mov bx, 575
    sub bx, 225 
    
    mul bx  
    
    add ax, 210   

End main
