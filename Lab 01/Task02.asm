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
    mov ax, 0FFFh 
    mov bx, 10h
    mul bx 
    add ax, 1111b       

    ; 
