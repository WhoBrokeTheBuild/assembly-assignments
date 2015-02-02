section .data
	msg: 	db 	"The answer is: "
	msglen: equ $-msg

section .bss
	buf: resb 1

section .text
    global _start

_start:
	mov eax, 0x1 ; A = 1
	mov ebx, 0x2 ; B = 2
	mov ecx, 0x3 ; C = 4
	mov edx, 0x4 ; D = 5

	add eax, ebx ; A = A + B
	add ecx, edx ; C = C + D
	sub eax, ecx ; A = A - C
	add eax, 48  ; Convert to ASCII
	mov [buf], eax
	
	mov edx, msglen ; arg3, length
	mov ecx, msg,   ; arg2, string
	mov ebx, 1		; arg1, stdout
	mov eax, 4		; sysout command
	int 0x80		; System Interrupt

	mov edx, 1 		; arg3, length
	mov ecx, [buf],   ; arg2, string
	mov ebx, 1		; arg1, stdout
	mov eax, 4		; sysout command
	int 0x80		; System Interrupt	
	
	mov	ebx,0
	mov	eax,1
	int	0x80
