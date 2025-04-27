extrn ExitProcess: PROC
.code
Start PROC
    ; Ustawienie wartości rejestru rax
    mov rax, 11

    ; Dodawanie
    add rax, 72             ; Dodanie 72 do wartości w rax (wynik: rax = 11 + 72 = 83)

    ; Odejmowanie
    sub rax, 50             ; Odjęcie 50 od wartości w rax (wynik: rax = 83 - 50 = 33)

    ; Odejmowanie z wynikiem ujemnym
    sub rax, 100            ; Odjęcie 100 od wartości w rax (wynik: rax = 33 - 100 = -67)

    ; Wyzerowanie rejestru rax
    xor rax, rax

    ; Zakończenie programu
    call ExitProcess
Start ENDP
End
