.data
	msg1: .asciiz "\nDigite quantas camisas P foram vendidas:  "
	msg2: .asciiz "\nDigite quantas camisas M foram vendidas:  "
	msg3: .asciiz "\nDigite quantas camisas G foram vendidas:  "
	msg4: .asciiz "\nTotal arrecadado: "
	
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
	
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 5
	syscall
	add $t2, $v0, 0

	li $t3, 10
	li $t4, 12
	li $t5, 15

	mul $t6, $t0, $t3
	mul $t7, $t1, $t4
	mul $s0, $t2, $t5
	
	add $s1, $t6, $t7
	add $s1, $t7, $s0
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	add $a0, $s1, 0
	li $v0, 1
	syscall