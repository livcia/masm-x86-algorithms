extrn ExitProcess: PROC
extrn printf: PROC

.data
message db 'klasteryzacja', 0  ; Słowo do odwrócenia
dlugosc db 13                   ; Długość słowa (w tym przypadku 13)

.code
Start PROC
    xor rbx, rbx              ; Zerowanie rejestru rbx (licznik)
    sub rsp, 28h              ; Rezerwacja miejsca na stosie (28h = 40 bajtów)
    lea rcx, message          ; Załaduj adres 'message' do rcx
    
    ; Umieszczanie wartości na stosie (odczyt znaków)
naStos:
    mov al, [rcx]             ; Załaduj bajt z pamięci do rejestru al
    inc rcx                   ; Przejdź do następnego znaku
    push ax                    ; Zapisz zawartość ax (al) na stosie
    inc bl                     ; Zwiększ licznik
    cmp bl, dlugosc            ; Sprawdź, czy wszystkie znaki zostały zapisane
    JNE naStos                 ; Jeśli nie, wróć do 'naStos'
    
    ; Ponowne załadowanie adresu 'message' do rcx
    lea rcx, message

    ; Zdejmowanie ze stosu liter i zapis do 'message' (odwrócony ciąg)
zeStosu:
    pop ax                     ; Pobierz znak ze stosu
    mov [rcx], al              ; Zapisz znak w miejscu wskazywanym przez rcx
    inc rcx                    ; Przesuń wskaźnik na następne miejsce w 'message'
    dec bl                     ; Zmniejsz licznik
    cmp bl, 0                  ; Sprawdź, czy wszystkie znaki zostały zdjęte
    JNE zeStosu                ; Jeśli nie, wróć do 'zeStosu'

    ; Załadowanie adresu odwróconego ciągu i wypisanie go
    lea rcx, message
    call printf                ; Wywołanie funkcji printf, aby wyświetlić wynik

    call ExitProcess           ; Zakończenie programu

Start ENDP
End
