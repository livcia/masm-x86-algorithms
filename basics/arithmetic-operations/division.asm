extrn ExitProcess: PROC

.code
Start PROC
    mov rax, 25         ; Ustawienie wartości rax na 25
    mov rbx, 4          ; Ustawienie wartości rbx na 4
    xor rdx, rdx
    div rbx

    mov rax, 20         ; Ustawienie wartości rax na 20
    mov rbx, 4          ; Ustawienie wartości rbx na 4
    xor rdx, rdx
    div rbx

    mov rax, 25         ; Ustawienie wartości rax na 25
    mov rbx, 4          ; Ustawienie wartości rbx na 4
    xor rdx, rdx
    idiv rbx

    mov rax, 20         ; Ustawienie wartości rax na 20
    mov rbx, 4          ; Ustawienie wartości rbx na 4
    xor rdx, rdx
    idiv rbx

    mov rax, 25         ; Ustawienie wartości rax na 25
    mov rbx, -4         ; Ustawienie wartości rbx na -4
    xor rdx, rdx
    idiv rbx

    xor rax, rax
    call ExitProcess
Start ENDP
End
