section .data
section .bss
	letter: resb 1
	r:      resd 1
	s:      resd 1
	t:      resd 1
	x:      resw 1
	y:      resw 1
	z:      resw 1

section .text
    global _start

_start:
	mov byte [letter], 0x77
	mov dword [r], 0x5
	mov dword [s], 0x2
	mov dword [x], 0xA
	mov dword [y], 0x4

	mov ax, word [x]
	add ax, word [y]
	mov word [z], ax

	mov ax, word [x]
	sub ax, word [y]
	mov word [z], ax

	mov edx, 0x0
	mov eax, dword [r]
	mov ecx, dword [s]
	div ecx
	mov dword [t], eax
	
	mov edx, 0x0
	mov eax, dword [r]
	mov ecx, dword [s]
	div ecx
	mov dword [t], edx
	
	mov	ebx,0
	mov	eax,1
	int	0x80
