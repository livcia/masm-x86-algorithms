extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov al, 5                 ; Ustawienie wartości 5 w rejestrze al

whileALnotEquals:
    dec al                    ; Decrementacja wartości al
    cmp al, 0                 ; Porównanie wartości al z 0
    JNZ whileALnotEquals      ; Skok, jeśli al nie jest równe 0 (JNZ - Jump if Not Zero)

    call ExitProcess          ; Zakończenie programu
Start ENDP
End
