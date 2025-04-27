extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov al, 5                 ; Ustawienie wartości 5 w rejestrze al

checkCondition:
    cmp al, 0                 ; Porównanie wartości al z 0
    JE exitLoop               ; Skok, jeśli są równe (JE - Jump if Equal)

    dec al                    ; Decrementacja wartości al
    JMP checkCondition        ; Skok do sprawdzenia warunku

exitLoop:
    call ExitProcess          ; Zakończenie programu
Start ENDP
End
