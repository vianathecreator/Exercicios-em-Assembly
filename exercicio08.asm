.data
	msg1: .asciiz "\nDigite um numero inteiro: "
	msg2: .asciiz "\nDobro: "
	msg3: .asciiz "\nTriplo: "
	
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0	
	
	bge $t0,0,positivo
	blt $t0,0,negativo
	
	positivo:
	mul $t1, $t0, 2
	move $a0, $t1
	li, $v0, 1
	syscall	
	j fim
	
	negativo:
	mul $t1, $t0, 3
	move $a0, $t1
	li, $v0, 1
	syscall	
	j fim
	
	fim: 
	li $v0, 10
	syscall