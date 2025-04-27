extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    xor rdx, rdx              ; Wyzerowanie rejestru rdx

    ; zastosowanie AND:
    ; Flagi które mogą się zmienić: AF, CF, OF, PF, SF, ZF
    mov ax, 214
    mov dx, 149
    and ax, dx                ; Wykonanie operacji AND (ax = ax & dx)

    ; zastosowanie OR
    ; Flagi które mogą się zmienić: CF, OF, PF, SF, ZF
    mov ax, 214
    or ax, dx                 ; Wykonanie operacji OR (ax = ax | dx)

    ; zastosowanie XOR
    ; Flagi które mogą się zmienić: CF, OF, PF, SF, ZF
    xor ax, dx                ; Wykonanie operacji XOR (ax = ax ^ dx)

    ; zastosowanie NOT
    ; Flagi nie powinny się zmienić
    not ax                    ; Wykonanie operacji NOT (ax = ~ax)

    ; Negacja z uzupełnieniem do 2 (OPERACJA ARYTMETYCZNA)
    ; Flagi które mogą się zmienić: AF, CF, OF, PF, SF, ZF
    mov ax, 214
    neg ax                    ; Wykonanie operacji negacji (ax = -ax)

    call ExitProcess          ; Zakończenie programu
Start ENDP
End
