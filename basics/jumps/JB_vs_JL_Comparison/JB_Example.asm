extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov al, 5                 ; Ustawienie wartości 5 w rejestrze al
    mov ah, -6                ; Ustawienie wartości -6 w rejestrze ah

    cmp al, ah                ; Porównanie wartości al z ah
    JB below                  ; Skok, jeśli al < ah (JB - Jump if Below)

    mov al, 123               ; Jeśli nie, ustaw al na 123
    JMP koniec                ; Skok do końca programu

below:
    mov al, 100               ; Jeśli al < ah, ustaw al na 100

koniec:
    call ExitProcess          ; Zakończenie programu
Start ENDP
End
