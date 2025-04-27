extrn ExitProcess: PROC
; podanie liczby, której obliczymy sumę liczb od 1 do liczba
.data
liczba dw 5

; kod sprawdzający, czy liczba jest równa 0
; jeżeli nie, to dodajemy liczbę do rejestru ax,
; potem dekrementujemy liczbę i wracamy do początku pętli,
; aby sprawdzić warunek
.code
Start PROC
    xor rax, rax          ; Wyzerowanie rejestru rax (suma)
    
petla:
    cmp liczba, 0         ; Porównanie liczby z 0
    JE koniec             ; Skok do końca, jeśli liczba = 0

    add ax, liczba        ; Dodanie wartości liczba do rax (sumowanie)
    dec liczba            ; Dekrementacja liczby (liczba -= 1)
    JMP petla             ; Skok do początku pętli, jeśli liczba != 0

koniec:
    call ExitProcess      ; Zakończenie programu
Start ENDP
End
