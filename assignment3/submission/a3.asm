section .data
	msg: 		db 		"The answer is: %d", 10, 0

section .bss

section .text
    global main
	extern printf

main:
	
	mov eax, 0x123 ; A = 1
	mov ebx, 0x456 ; B = 2
	mov ecx, 0x789 ; C = 4
	mov edx, 0x123 ; D = 5

	add eax, ebx ; A = A + B
	add ecx, edx ; C = C + D
	sub eax, ecx ; A = A - C
	
	push eax 
	push msg 
	call printf ; Call printf with the first arg as msg, and 
				; the second arg as the result of our calculations
	add esp, 8
	ret
	
	mov	ebx,0
	mov	eax,1
	int	0x80
	