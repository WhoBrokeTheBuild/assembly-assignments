
section .text
	global asmMain
	extern getGrade
	extern printGrade

asmMain:
	push ebp 				; Save the base pointer
	mov ebp, esp 			; Change the base pointer to the current location
	push esi 				; Save the next instruction pointer

	call getGrade
	cmp eax, 90
	jge gradeA
	cmp eax, 80
	jge gradeB
	cmp eax, 70
	jge gradeC
	cmp eax, 60
	jge gradeD
	jmp gradeF
		
gradeA:
	mov eax, 'A'
	push eax
	call printGrade
	add esp, 4
	jmp done

gradeB:
	mov eax, 'B'
	push eax
	call printGrade
	add esp, 4
	jmp done

gradeC:
	mov eax, 'C'
	push eax
	call printGrade
	add esp, 4
	jmp done

gradeD:
	mov eax, 'D'
	push eax
	call printGrade
	add esp, 4
	jmp done

gradeF:
	mov eax, 'F'
	push eax
	call printGrade
	add esp, 4

done:

	pop esi					; Return the next construction pointer
	pop ebp					; Return the base pointer
	ret
