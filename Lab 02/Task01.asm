ORG 100h

MOV AH, 1         ; Read character
INT 21h           

;MOV BL, AL        

; Check even or odd
TEST AL, 1        
JZ EVEN           ; If result is zero, even

; Print 'O' for odd
MOV AH, 2
MOV DL, 'O'
INT 21h
JMP EXIT

EVEN:
MOV AH, 2
MOV DL, 'E'
INT 21h

EXIT:
MOV AH, 4Ch
INT 21h
