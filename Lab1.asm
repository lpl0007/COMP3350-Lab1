.data
A: .word 7, 42, 0, 27, 16, 8, 4, 15, 31, 45  
n: .word 3     
m: .word 6                                

.text
.globl main

# Lab:
# Swap 2 elements A[n], A[m] in the array
# Please complete the code and record your observations with screenshots in a pdf
main:
	la $a0, A					# Load address of array A to $a0
	lw $a1, n					# Load word n
	lw $a2, m					# Load word m into $a2
    
    
	# shift left logical
	sll $t1, $a1, 2					# Calculate offset for array index n
	add $t1, $a0, $t1				# Calculate address of array index n
	sll $t2, $a2, 2					# Calculate offset for array index m
	add $t2, $a0, $t2				# Calculate address of array index m
    
	lw $t0, 0($t1)					# Load value at array index n to $t0
	lw $t3, 0($t2)					# Load value at array index m to $t3
    
	sw $t0, 4($t1)					# Store $t0 at array index m
	sw $t3, 4($t2)					# Store $t3 at array index n
