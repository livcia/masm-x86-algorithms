extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    xor rdx, rdx              ; Wyzerowanie rejestru rdx

    ; zastosowanie SHL
    mov ax, 27                ; Ustawienie wartości 27 w rejestrze ax
    shl ax, 2                 ; Przesunięcie w lewo ax o 2 bity
    shl ax, 4                 ; Przesunięcie w lewo ax o 4 bity

    ; zastosowanie SHR
    shr ax, 2                 ; Przesunięcie w prawo ax o 2 bity
    shr ax, 4                 ; Przesunięcie w prawo ax o 4 bity

    ; zastosowanie SHRD
    mov dx, 93                ; Ustawienie wartości 93 w rejestrze dx
    shrd ax, dx, 3            ; Przesunięcie w prawo z podwójnym rejestrem (dx, ax) o 3 bity

    ; zastosowanie SHLD
    mov dh, 47                ; Ustawienie wartości 47 w rejestrze dh
    shld ax, dx, 3            ; Przesunięcie w lewo z podwójnym rejestrem (dx, ax) o 3 bity

    call ExitProcess          ; Zakończenie programu
Start ENDP
End
