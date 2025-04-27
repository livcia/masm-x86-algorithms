extrn ExitProcess: PROC

.data
liczba dq 4          ; Liczba, dla której obliczymy silnię (np. 4!)

.code
; początek procedury, liczącej silnię
Silnia PROC
    mov rax, 1       ; Zainicjuj rax na 1 (suma wyników mnożenia)
    
    ; pętla obliczająca wynik z wymnożenia wszystkich liczb n...1
petla:
    cmp rcx, 1       ; Porównaj rcx z 1
    JLE koniec       ; Jeśli rcx <= 1, zakończ pętlę
    mul rcx          ; Pomnóż rax przez rcx
    dec rcx          ; Zmniejsz rcx o 1
    JMP petla        ; Skok do początku pętli
    
koniec:
    ret              ; Zakończ procedurę
Silnia ENDP

; początek głównego programu
Start PROC
    mov rcx, liczba  ; Załaduj wartość liczby do rcx (np. 4)
    call Silnia      ; Wywołaj procedurę liczenia silni
    call ExitProcess ; Zakończenie programu
Start ENDP

End
