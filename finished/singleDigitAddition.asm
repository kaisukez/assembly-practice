section .data
	msg1 db "Enter number [1]: "
	lenMsg1 equ $-msg1

	msg2 db "Enter number [2]: "
	lenMsg2 equ $-msg2

	msg3 db "Result: "
	lenMsg3 equ $-msg3

	newline db 10

section .bss
	num1 resb 1
	num2 resb 1
	res resb 1

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg1
	mov rdx, lenMsg1
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, num1
	mov rdx, 2
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msg2
	mov rdx, lenMsg2
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, num2
	mov rdx, 2
	syscall

	mov r8, [num1]
	mov r9, [num2]
	sub r8, 48
	sub r9, 48
	add r8, r9
	add r8, 48
	mov [res], r8 

	mov rax, 1
	mov rdi, 1
	mov rsi, msg3
	mov rdx, lenMsg3
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, res
	mov rdx, 1
	syscall

	jmp .newLine

.newLine:
	mov rax, 1
	mov rdi, 1
	mov rsi, newline
	mov rdx, 1
	syscall

.exit:
	mov rax, 60
	mov rdi, 0
	syscall
