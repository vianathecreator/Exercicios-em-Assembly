.data
	msg1: .asciiz "\nDigite o primeiro cateto: "
	msg2: .asciiz "\nDigite o segundo cateto: "
	msg3: .asciiz "\nHipotenusa: "
	
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
	
	mul $t2, $t0, $t0
	mul $t3, $t1, $t1
	
	add $t4, $t2, $t3

	move $t5, $t4
	
	loop:
		blez $t5, fim
		mul $t6, $t5, $t5
		beq $t6, $t4, encontrou
		addi $t5, $t5, -1
		j loop
		
	encontrou:
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	move $a0, $t5
	syscall
	
	fim:
		li $v0, 10
		syscall	