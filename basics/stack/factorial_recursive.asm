extrn ExitProcess: PROC

.data
liczba dq 4   ; Liczba, dla której obliczymy silnię

.code
Silnia PROC
    ; Sprawdzenie, czy liczba == 0
    CMP rcx, 0
    JE powrot            ; Jeśli liczba == 0, przejdź do 'powrot'

    ; Dodanie wartości liczby na stos
    push rcx

    ; Zmniejsz licznik
    dec rcx

    ; Wywołanie procedury rekurencyjnej dla (n-1)!
    call Silnia

    ; Pobranie wartości z powrotem ze stosu i wymnożenie przez rax
    pop rcx
    MUL rcx              ; rax = rax * rcx (mnożenie przez n)

    ret                  ; Powrót z funkcji
powrot:
    ret                  ; Przypadek bazowy: jeśli rcx == 0, kończymy rekurencję

Silnia ENDP

Start PROC
    mov rcx, liczba     ; Załaduj liczbe 4 do rcx
    mov rax, 1          ; Ustaw wynik na 1 (silnia 1 = 1)
    
    ; Wywołanie procedury Silnia
    call Silnia

    ; Zakończenie programu
    call ExitProcess
Start ENDP
End
