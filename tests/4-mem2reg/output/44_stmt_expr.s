# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl k
	.type k, @object
	.size k, 4
k:
	.space 4
	.globl n
	.data
	.type n, @object
	.size n, 4
n:
	.word 10
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# store i32  1, i32 * @k
	la.local $t0, k
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label0
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -20
	b .main_label0
.main_label0:
# %op1 = phi i32  [ 0, %label_entry ], [ %op8, %label7 ]
# %op2 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op3 = sub i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op4 = icmp sle i32  %op1, %op3
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -28
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -29
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op6, label %label7, label %label12
	ld.b $t0, $fp, -37
	bnez $t0, .main_label7
	b .main_label12
.main_label7:
# %op8 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op9 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op10 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op11 = add i32  %op9, %op10
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# store i32  %op11, i32 * @k
	la.local $t0, k
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# br label %label0
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -20
	b .main_label0
.main_label12:
# %op13 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -60
	bl putint
# %op14 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# ret i32  %op14
	ld.w $a0, $fp, -64
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
