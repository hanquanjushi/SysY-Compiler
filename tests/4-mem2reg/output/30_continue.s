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
# %op1 = phi i32  [ 0, %label_entry ], [ %op12, %label11 ], [ %op15, %label13 ]
# %op2 = phi i32  [ 0, %label_entry ], [ %op2, %label11 ], [ %op14, %label13 ]
# %op3 = icmp slt i32  %op1, 100
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 100
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
# br i1  %op5, label %label6, label %label10
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label10
.main_label6:
# %op7 = icmp eq i32  %op1, 50
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 50
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -34
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -34
	st.w $t0, $fp, -40
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -41
# br i1  %op9, label %label11, label %label13
	ld.b $t0, $fp, -41
	bnez $t0, .main_label11
	b .main_label13
.main_label10:
# ret i32  %op2
	ld.w $a0, $fp, -24
	b main_ret
.main_label11:
# %op12 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# br label %label0
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -24
	b .main_label0
.main_label13:
# %op14 = add i32  %op2, %op1
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op15 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# br label %label0
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -24
	b .main_label0
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
