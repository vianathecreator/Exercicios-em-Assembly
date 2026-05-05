.data
	msg1: .asciiz "\nDigite o primeiro numero: "
	msg2: .asciiz "\nDigite o segundo numero: "
	msg3: .asciiz "\nO numero nao pode ser 0, digite outro: "
	
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beqz $t1, denovo
	bgtz $t1, conta
	
loop:
	denovo:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beqz $t1, loop
	bgtz $t1, conta
	
conta:
	div $t2, $t0, $t1
	move $a0, $t3
	li, $v0, 1
	syscall	
	j fim
	
fim:
	li $v0, 10
	syscall	
	
	
	