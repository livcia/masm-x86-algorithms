extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    mov ax, 52520             ; Ustawienie wartości 52520 w rejestrze ax

    ; zastosowanie rol
    rol ax, 3                 ; Obrót w lewo (ROL) rejestru ax o 3 bity

    ; zastosowanie ror
    ror ax, 2                 ; Obrót w prawo (ROR) rejestru ax o 2 bity

    ; zastosowanie rcl
    rcl ax, 3                 ; Obrót w lewo z przeniesieniem (RCL) rejestru ax o 3 bity

    ; zastosowanie rcr
    rcr ax, 2                 ; Obrót w prawo z przeniesieniem (RCR) rejestru ax o 2 bity

    call ExitProcess          ; Zakończenie programu
Start ENDP
End
