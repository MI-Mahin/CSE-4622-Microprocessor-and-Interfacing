org 100h

.DATA
message db 'Enter value of N (2-9): $'
newline db 0Dh, 0Ah, '$'
RESULT db 0

.CODE
MAIN PROC
    mov ax, @DATA
    mov ds, ax

    mov dx, OFFSET message
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 48         
    mov cl, al         

    xor si, si         
    xor bx, bx         

next_square:
    inc si             
    mov ax, si         
    mul si             
    add bx, ax         
    loop next_square   

    mov [RESULT], bl

    mov dx, OFFSET newline
    mov ah, 09h
    int 21h

    mov dx, OFFSET newline 
    mov ah, 09h
    int 21h

    mov ax, bx
    call PrintNumber

    mov ah, 4Ch
    int 21h
MAIN ENDP


PrintNumber PROC
    
    push ax
    push bx
    push cx
    push dx

    mov cx, 0         

    mov bx, 10

next_digit:
    xor dx, dx
    div bx            
    push dx           
    inc cx
    test ax, ax
    jnz next_digit

print_loop:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop print_loop

    pop dx
    pop cx
    pop bx
    pop ax
    ret
PrintNumber ENDP

END MAIN
    mov ah, 4Ch
    int 21h
MAIN ENDP

; ------------ Subroutine to Print Number in AX ------------

PrintNumber PROC
    ; Print AX in decimal
    push ax
    push bx
    push cx
    push dx

    mov cx, 0         ; Digit counter

    mov bx, 10

next_digit:
    xor dx, dx
    div bx            ; AX ÷ 10, remainder in DX, quotient in AX
    push dx           ; Store remainder (digit)
    inc cx
    test ax, ax
    jnz next_digit

print_loop:
    pop dx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop print_loop

    pop dx
    pop cx
    pop bx
    pop ax
    ret
PrintNumber ENDP

END MAIN
