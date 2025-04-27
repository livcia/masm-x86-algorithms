extrn ExitProcess: PROC
.code
Start PROC
    ; Mnożenie bez znaku
    mov rax, 10              ; Ustawienie wartości rejestru rax na 10
    mov rbx, 20              ; Ustawienie wartości rejestru rbx na 20
    mul rbx                  ; Pomnożenie wartości w rbx przez rax (wynik: rax = 10 * 20 = 200, rdx = 0)

    ; Pierwszy sposób: IMUL z dwoma operandami (rejestry)
    mov rax, 10              ; Ustawienie wartości rejestru rax na 10
    mov rbx, 20              ; Ustawienie wartości rejestru rbx na 20
    imul rax, rbx            ; Pomnożenie wartości w rbx przez rax (wynik: rax = 10 * 20 = 200)

    ; Drugi sposób: IMUL z trzema operandami (rejestry i stała)
    mov rcx, 5               ; Ustawienie wartości rejestru rcx na 5
    imul rax, rcx, 3         ; Pomnożenie wartości w rcx przez 3 i zapisanie wyniku do rax (wynik: rax = 5 * 3 = 15)

    ; Trzeci sposób: IMUL z jednym operatorem (stała)
    mov rax, 7               ; Ustawienie wartości rejestru rax na 7
    imul rax, 6              ; Pomnożenie wartości w rax przez 6 (wynik: rax = 7 * 6 = 42)

    ; IMUL z wynikiem ujemnym
    mov rax, -7              ; Ustawienie wartości rejestru rax na -7
    imul rax, 6              ; Pomnożenie wartości w rax przez 6 (wynik: rax = -7 * 6 = -42)

    ; Wyzerowanie rejestru rax
    xor rax, rax

    ; Zakończenie programu
    call ExitProcess
Start ENDP
End
