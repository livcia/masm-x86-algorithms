extrn ExitProcess: PROC
.code
Start PROC
    xor rax, rax              ; Wyzerowanie rejestru rax
    xor rdx, rdx              ; Wyzerowanie rejestru rdx

    mov ax, 194               ; Ustawienie wartości 194 w rejestrze ax
    mov dx, 211               ; Ustawienie wartości 211 w rejestrze dx
    test ax, dx               ; Wykonanie operacji test (ax & dx)

    mov ax, 223               ; Ustawienie wartości 223 w rejestrze ax
    mov dx, 32                ; Ustawienie wartości 32 w rejestrze dx
    test ax, dx               ; Wykonanie operacji test (ax & dx)

    call ExitProcess          ; Zakończenie programu
Start ENDP
End
