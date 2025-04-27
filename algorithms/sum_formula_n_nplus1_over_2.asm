extrn ExitProcess: PROC
; podanie liczby, której obliczymy sumę liczb od 1 do liczba
.data
liczba dw 5

; wykorzystanie wzoru na policzenie n(n+1)/2
.code
Start PROC
    xor rax, rax          ; Wyzerowanie rejestru rax (suma)
    
    mov ax, liczba        ; Załadowanie liczby do rejestru ax
    inc ax                 ; Zwiększenie liczby o 1 (liczba + 1)
    
    mul liczba            ; Mnożenie (ax * liczba), wynik w ax: n * (n+1)
    
    shr ax, 1             ; Przesunięcie w prawo o 1 bit (dzielenie przez 2)
    
    call ExitProcess      ; Zakończenie programu
Start ENDP
End
