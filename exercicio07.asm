.data
	msg1: .asciiz "\nDigite um numero inteiro: "
	msg2: .asciiz "\nImpar "
	msg3: .asciiz "\nPar "
	
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	rem $t1, $t0, 2
	
	beq $t1,1,impar
	bne $t1,1,par
	
	impar:
	li $v0, 4
	la $a0, msg2
	syscall
	j fim
	
	par:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
	
	fim:
	li $v0, 10
	syscall