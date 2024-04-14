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
	addi.d $sp, $sp, -64
.main_label_entry:
# br label %label0
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	b .main_label0
.main_label0:
# %op1 = phi i32  [ 0, %label_entry ], [ %op9, %label6 ]
# %op2 = phi i32  [ 0, %label_entry ], [ %op10, %label6 ]
# %op3 = icmp slt i32  %op2, 6
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 6
	slt $t2, $t0, $t1
	st.b $t2, $fp, -25
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label11
.main_label6:
# %op7 = getelementptr [6 x i32 ], [6 x i32 ]* @arr, i32  0, i32  %op2
	la.local $t0, arr
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op9 = add i32  %op1, %op8
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op10 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label0
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -24
	b .main_label0
.main_label11:
# ret i32  %op1
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
