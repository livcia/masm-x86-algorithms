extrn ExitProcess: PROC
.code
Start PROC
	mov rdx, 20
	dec rdx
	sar rdx, 2
	inc rdx
	sal rdx, 3
	xor rdx, rdx
	call ExitProcess
Start ENDP
End