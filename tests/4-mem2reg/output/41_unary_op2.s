	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = sub i32  56, -4
	addi.w $t0, $zero, 56
	addi.w $t1, $zero, -4
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -20
# %op1 = add i32  %op0, 4
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# %op2 = icmp eq i32  %op1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -25
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op4 = icmp eq i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp eq i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -41
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op8 = sub i32  0, %op7
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -53
# br i1  %op9, label %label10, label %label11
	ld.b $t0, $fp, -53
	bnez $t0, .main_label10
	b .main_label11
.main_label10:
# br label %label13
	addi.w $t0, $zero, -1
	st.w $t0, $fp, -64
	b .main_label13
.main_label11:
# %op12 = add i32  0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label13
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -64
	b .main_label13
.main_label13:
# %op14 = phi i32  [ -1, %label10 ], [ %op12, %label11 ]
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -64
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
