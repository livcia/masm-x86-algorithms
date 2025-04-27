extrn ExitProcess: PROC
.code
Start PROC
    mov rax, 1000000000000000000  ; Ustawienie dużej wartości w RAX
    mov rbx, 20                    ; Ustawienie wartości rbx na 20
    mul rbx                         ; Mnożenie wartości w rbx przez rax

    xor rax, rax
    call ExitProcess
Start ENDP
End
