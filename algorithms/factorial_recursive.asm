extrn ExitProcess: PROC

.data
liczba dq 4          ; Liczba, dla której obliczymy silnię (np. 4!)

.code
; początek procedury, liczącej silnię (rekursja)
Silnia PROC
    CMP rcx, 0       ; Porównaj rcx (liczba) z 0
    JE powrot        ; Jeśli rcx == 0, przejdź do powrotu (warunek bazowy)
    
    push rcx         ; Zapisz wartość rcx na stos
    dec rcx          ; Zmniejsz rcx o 1
    call Silnia      ; Wywołaj procedurę Silnia (rekursja)

    pop rcx          ; Pobierz wartość z powrotem ze stosu
    mul rcx          ; Pomnóż rax przez rcx (rekurencyjny wynik)
    ret              ; Zakończ procedurę

powrot:
    ret              ; Zakończenie, jeśli rcx == 0 (bazowy przypadek)
Silnia ENDP

; początek głównego programu
Start PROC
    mov rcx, liczba  ; Załaduj wartość liczby (np. 4) do rcx
    mov rax, 1       ; Inicjuj rax na 1 (suma wyników mnożenia)
    call Silnia      ; Wywołaj procedurę liczenia silni (rekursja)
    call ExitProcess ; Zakończenie programu
Start ENDP

End
