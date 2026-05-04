.data
	msg1: .asciiz "\nDigite quantas horas voce trabalhou: "
	msg2: .asciiz "\nDigite quantas horas extras voce fez: "
	msg3: .asciiz "\nSalario bruto: "
	msg4: .asciiz "\nSalario liquido (desconto 100r$): "
	
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
	
	li $t2, 10
	li $t3, 15
	li $t4, 100
	
	mul $t5, $t0, $t2
	mul $t6, $t1, $t3
	add $t7, $t5, $t6
	sub $s0, $t7, $t4
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	add $a0, $t7, 0
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	add $a0, $s0, 0
	li $v0, 1
	syscall
	