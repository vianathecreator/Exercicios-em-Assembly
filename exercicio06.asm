.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nMultiplicado: "
	msg4: .asciiz "\nSomado: "
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
	move $t1 $v0

	beq $t0, $t1, soma
	bne $t0, $t1, multi
	
	soma:
	add $t2, $t0, $t1
	li $v0, 4
	la $a0, msg4
	syscall

	move $a0, $t2
	li, $v0, 1
	syscall	
	
	j fim
	
	multi:
	mul $t3, $t0, $t1
	li $v0, 4
	la $a0, msg3
	syscall
	
	move $a0, $t3
	li, $v0, 1
	syscall	
	j fim
	
	fim:
	li $v0, 10
	syscall