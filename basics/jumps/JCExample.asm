extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov al, 250               ; Ustawienie wartości 250 w rejestrze al
    add al, 10                ; Dodanie 10 do wartości w rejestrze al

    JC carry_flag             ; Skok, jeśli nastąpił przeniesienie (flaga CF = 1)

    mov al, 123               ; Jeśli nie, ustaw al na 123
    JMP koniec                ; Skok do końca programu

carry_flag:
    mov al, 100               ; Jeśli wystąpiło przeniesienie, ustaw al na 100

koniec:
    call ExitProcess          ; Zakończenie programu
Start ENDP
End
