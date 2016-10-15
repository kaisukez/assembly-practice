section .data
	char db 'A'
	newLine db 10

section .bss
	num resb 1
	
section .text
	global _start

_start:
	mov rax, 0
	mov rdi, 0
	mov rsi, num
	mov rdx, 1
	syscall

	mov rcx, [num]
	sub rcx, 48
	push rcx

.Loop:
	mov rax, 1
	mov rdi, 1
	mov rsi, char 
	mov rdx, 1 
	syscall
	
	pop rcx
	dec rcx
	jz .newLine
	push rcx
	jmp .Loop

.newLine:
	mov rax, 1
	mov rdi, 1
	mov rsi, newLine
	mov rdx, 1
	syscall

.exit:
	mov rax, 60
	mov rdi, 0
	syscall
