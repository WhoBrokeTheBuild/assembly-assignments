
section .text
	global add

add: 						; int add( int x, int y )
	push ebp 				; Save the base pointer
	mov ebp, esp 			; Change the base pointer to the current location
	push esi 				; Save the next instruction pointer

	mov eax, [ebp + 12] 	; Grab parameter y 
	mov ebx, [ebp + 8]		; Grab parameter x
	add eax, ebx			; Add them together

	pop esi					; Return the next instrunction pointer
	pop ebp					; Return the base pointer
	ret						; Return, the answer is in eax
