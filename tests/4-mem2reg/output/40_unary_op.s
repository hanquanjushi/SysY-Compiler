	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = icmp eq i32  10, 0
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -17
# %op1 = zext i1  %op0 to i32 
	ld.b $t0, $fp, -17
	st.w $t0, $fp, -24
# %op2 = icmp eq i32  %op1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -25
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op4 = icmp eq i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = sub i32  0, %op5
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -40
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op7, label %label8, label %label9
	ld.b $t0, $fp, -45
	bnez $t0, .main_label8
	b .main_label9
.main_label8:
# br label %label10
	addi.w $t0, $zero, -1
	st.w $t0, $fp, -52
	b .main_label10
.main_label9:
# br label %label10
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	b .main_label10
.main_label10:
# %op11 = phi i32  [ -1, %label8 ], [ 0, %label9 ]
# ret i32  %op11
	ld.w $a0, $fp, -52
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
