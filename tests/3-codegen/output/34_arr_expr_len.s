# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl N
	.data
	.type N, @object
	.size N, 4
N:
	.word -1
	.globl arr
	.data
	.type arr, @object
	.size arr, 24
arr:
	.word  1
	.word  2
	.word  33
	.word  4
	.word  5
	.word  6
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op4 = icmp slt i32  %op3, 6
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 6
	slt $t2, $t0, $t1
	st.b $t2, $fp, -49
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op6, label %label7, label %label15
	ld.b $t0, $fp, -57
	bnez $t0, .main_label7
	b .main_label15
.main_label7:
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op10 = getelementptr [6 x i32 ], [6 x i32 ]* @arr, i32  0, i32  %op9
	la.local $t0, arr
	ld.w $t1, $fp, -68
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op12 = add i32  %op8, %op11
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# store i32  %op12, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op14 = add i32  %op13, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op14, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label15:
# %op16 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# ret i32  %op16
	ld.w $a0, $fp, -100
	b main_ret
main_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
