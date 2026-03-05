# 1º Desarrolla un programa en ensamblador RV32I que almacene en el registro s0 el número de
# posiciones de un vector cuyo valor almacenado es par. El vector comienza en la posición 
# 0x10010000 y finaliza en la posición 0x100101FF.

.data
mem: .word 1,2,3

.text
.global start

start:
	lui t1,0x10010
	lui t3,0x10010	
	addi t2,t2,0x1ff

bucle:
	lw t0,(t1)
	jal check_par
	beq a0,zero,impar
	addi s0,s0,1
	

impar:
	addi t1,t1,4
	beq t1,t3, fin_programa
	jal bucle

fin_programa:
	addi a7,zero,10
	ecall

check_par:
	andi t2,t0,1
	beqz t2,es_par
	addi a0,zero,0
	jal zero,fin
	
es_par:
	addi a0,zero,1
	
fin:
	jalr zero,0(ra)
	
	
	
	

