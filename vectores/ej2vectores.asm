.data

.text
.globl comenzar

comenzar:
	addi t0,zero,1
	lui t1,0x10010
	addi t2,zero,32

almacenar
	sw t0,(t1)
	slli t0,t0,1
	addi t2,t2,-1
	addi t1,t1,4
	beq t2,zero,fin_programa
	jal almacenar
	
	
fin_programa:
	addi a7,zero,10
	ecall
	