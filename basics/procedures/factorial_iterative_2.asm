extrn ExitProcess: PROC

.data
liczba dq 4          ; Liczba, dla której obliczymy silnię (np. 4!)

.code
; początek procedury, liczącej silnię (rekursja)
Silnia PROC
    cmp rcx, 1       ; Porównaj rcx z 1
    JLE koniec       ; Jeśli rcx <= 1, zakończ rekurencję
    mul rcx          ; Pomnóż rax przez rcx
    dec rcx          ; Zmniejsz rcx o 1
    call Silnia      ; Wywołaj ponownie procedurę Silnia (rekursja)
    
koniec:
    ret              ; Zakończ procedurę
Silnia ENDP

; początek głównego programu
Start PROC
    mov rcx, liczba  ; Załaduj wartość liczby do rcx (np. 4)
    mov rax, 1       ; Inicjuj rax na 1 (suma wyników mnożenia)
    call Silnia      ; Wywołaj procedurę liczenia silni (rekursja)
    call ExitProcess ; Zakończenie programu
Start ENDP

End
