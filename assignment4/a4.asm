section .data

msg:	db		"%d", 10, 0
arr:	dw		1, 2, 3, 4, 5, 6

section .bss

section .text
    global main
	global printf
	
main:

	
	
	push eax 
	push msg 
	call printf ; Call printf with the first arg as msg, and 
				; the second arg as the result of our calculations
	add esp, 8
	
	mov	ebx,0
	mov	eax,1
	int	0x80
	