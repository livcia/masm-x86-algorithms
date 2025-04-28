extrn ExitProcess: PROC

.data
   liczby db 12,13,14,2,4,1,5,2,9
   ktoryStopien dq 3
   licznik1 dq 0
   licznik2 dq 0
   pomModulo dq 0
.code

Start PROC
;czesc dodawania
lea rbx, liczby
xor rcx, rcx
whileDodawanie:
	cmp licznik1, 3
		jnb przedStartemOdejmij
	mov licznik2, 0
	mov r10, 1
whileWewnDodawanie:
	cmp licznik2, 3
		jnb przedPowrotemDodaj
	;obliczenie modulo (licznik1 + licznik2) % 3
	xor rdx, rdx
	mov rax, licznik1
	add rax, licznik2
	div ktoryStopien
	mov pomModulo, rdx
	;obliczenie indexu -> 3*licznik2 + modulo
	mov rax, licznik2
	mul ktoryStopien
	add rax, pomModulo
	;mnoznik = mnoznik * macierz[3*licznik2 + modulo]
	xor rdx, rdx
	add rbx, rax
	mov dl, [rbx]
	sub rbx, rax
	imul r10, rdx
	inc licznik2
	jmp whileWewnDodawanie
przedPowrotemDodaj:
	add rcx, r10
	inc licznik1
	jmp whileDodawanie
przedPowrotemOdejmij:
	inc licznik1
	jmp whileOdejmowanie
przedStartemOdejmij:
	lea rbx, liczby
	mov licznik1, 0
	xor r11, r11
whileOdejmowanie:
	sub rcx, r11
	mov r11, 1
	cmp licznik1, 3
		jnb koniec
	mov licznik2, 0
whileWewnOdejmowanie:
	cmp licznik2, 3
		jnb przedPowrotemOdejmij
	xor r9, r9
	xor rax, rax
	mov r9, licznik1
	sub r9, licznik2
	cmp r9, 0
		jl liczbaUjemna
kontynuacja:
	mov rax, 3
	mul licznik2
	add rax, r9
	xor rdx, rdx
	add rbx, rax
	mov dl, [rbx]
	sub rbx, rax
	imul r11, rdx
	inc licznik2
	jmp whileWewnOdejmowanie
koniec:
	call ExitProcess

liczbaUjemna:
	neg r9
	mov rax, 3
	sub rax, r9
	mov r9, rax
	jmp kontynuacja

Start ENDP
End
