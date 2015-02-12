section .data
	msg:	db		"%d", 10, 0
	arr:	dw		1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	len:	equ 	$-arr

section .bss

section .text
    global main
	extern printf
	
main:

	mov esi, arr ; Beginning of array
	mov edi, esi ; Copy to edi
	add edi, len ; End of array

reverse_array:
	mov ax, word [esi] ; Get the first element we want to switch
	mov bx, word [edi] ; Get the last element we want to switch
	mov [edi], ax ; Put the first element in the last spot
	mov [esi], bx ; Put the last element in the first spot
	add esi, 2 ; Increment by one word
	sub edi, 2 ; Decrement by one word
	cmp esi, edi ; Do they point to the same position?
	jb reverse_array ; If not, keep going
	
	mov	ebx,0 ; Exit code
	mov	eax,1 ; Function to call (exit)
	int	0x80 ; Kernel interrupt, call the exit function
	
