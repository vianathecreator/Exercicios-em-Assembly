.data
	msg1: .asciiz "\nDigite a largura: "
	msg2: .asciiz "\nDigite a altura: "
	
.text
main:

	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 5
	syscall
	add $t1, $v0, 0

	mul $t2, $t0, $t1