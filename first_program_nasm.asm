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

    mov eax, 0
    ret


