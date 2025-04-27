
.data
; przykładowa liczba, z której obliczona zostanie silnia
liczba dw 4

.code
Start PROC
    xor rax, rax            ; Wyzerowanie rejestru rax
    mov al, 1               ; Ustawienie wartości 1 w rejestrze al

    ; początek pętli while(liczba != 1)
petla:
    cmp liczba, 1           ; Porównanie liczby z 1
    JE koniec               ; Skok do końca, jeśli liczba == 1

    mul liczba              ; Mnożenie rax przez liczba (rax = rax * liczba)
    dec liczba              ; Dekrementacja liczby (liczba = liczba - 1)
    JMP petla               ; Skok do początku pętli

koniec:
    call ExitProcess        ; Zakończenie programu
Start ENDP
End
