.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nResto: "
	
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
	
	bgt $t0, $t1, zero
	bgt $t1, $t0, um
	
	zero:
	div $t2, $t0, $t1
	#resto = dividendo - (quociente x divisor)
	mul $t3, $t2, $t1
	sub $t4, $t0, $t3
	li $v0, 4
	la $a0, msg3
	syscall
	move $a0, $t4
	li $v0, 1
	syscall
	j fim
	
	um:
	div $t2, $t1, $t0
	mul $t3, $t2, $t0
	sub $t4, $t1, $t3
	li $v0, 4
	la $a0, msg3
	syscall
	move $a0, $t4
	li $v0, 1
	syscall
	j fim
	
	fim:
	li $v0, 10
	syscall