section .data

section .bss

section .text
    global _asmMain

_asmMain:
	
	mov	ebx,0
	mov	eax,1
	int	0x80
	