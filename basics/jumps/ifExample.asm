extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov al, 82                ; Ustawienie wartości 82 w rejestrze al
    cmp al, 10                ; Porównanie wartości al z 10
    JE isEquals               ; Skok, jeśli są równe (JE - Jump if Equal)

    mov al, 32                ; Ustawienie wartości 32 w rejestrze al
    JMP dalszaCzesc           ; Skok do dalszej części kodu

isEquals:
    mov al, 23                ; Ustawienie wartości 23 w rejestrze al

dalszaCzesc:
    call ExitProcess          ; Zakończenie programu
Start ENDP
End
