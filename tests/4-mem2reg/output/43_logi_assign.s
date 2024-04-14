# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.type a, @object
	.size a, 4
a:
	.space 4
	.globl b
	.type b, @object
	.size b, 4
b:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = icmp eq i32  %op2, %op3
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op6, label %label11, label %label8
	ld.b $t0, $fp, -41
	bnez $t0, .main_label11
	b .main_label8
.main_label7:
# br label %label9
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -48
	b .main_label9
.main_label8:
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -48
	b .main_label9
.main_label9:
# %op10 = phi i32  [ 0, %label8 ], [ 1, %label7 ]
# ret i32  %op10
	ld.w $a0, $fp, -48
	b main_ret
.main_label11:
# %op12 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op13 = icmp ne i32  %op12, 3
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 3
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -53
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -61
# br i1  %op15, label %label7, label %label8
	ld.b $t0, $fp, -61
	bnez $t0, .main_label7
	b .main_label8
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
