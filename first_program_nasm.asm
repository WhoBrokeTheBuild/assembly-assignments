; CSI 370
; First Program

section .data
num: dd 80

section .bss
sum: resd 1

section .text
global _start
_start:
    mov eax, num
    add eax, 20
    mov [sum], eax
	
	mov	ebx,0
	mov	eax,1
	int	0x80
    ret


