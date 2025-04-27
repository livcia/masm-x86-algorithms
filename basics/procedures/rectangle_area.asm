extrn ExitProcess: PROC

.data
bok1 dq 9        ; Długość pierwszego boku (a)
bok2 dq 7        ; Długość drugiego boku (b)

.code
; początek procedury, liczącej pole prostokąta
; wynik zapisany zostanie w RAX
Prostokat PROC
    mov rax, rcx      ; Załaduj wartość pierwszego boku (a) do rax
    mul rdx           ; Mnożenie rax przez drugi bok (b), wynik w rax (pole)
    ret               ; Zakończenie procedury
Prostokat ENDP
; koniec procedury liczącej pole prostokąta

; początek głównego programu
Start PROC
    ; wyzerowanie rejestrów RAX, RCX, RDX
    xor rax, rax
    xor rcx, rcx
    xor rdx, rdx

    ; skopiowanie wartości bok1 i bok2 do argumentów procedury
    mov rcx, bok1      ; Załaduj pierwszy bok (a) do rcx
    mov rdx, bok2      ; Załaduj drugi bok (b) do rdx
    call Prostokat     ; Wywołanie procedury liczącej pole prostokąta

    call ExitProcess   ; Zakończenie programu
Start ENDP

End
