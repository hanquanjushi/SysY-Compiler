	.text
	.globl doubleWhile
	.type doubleWhile, @function
doubleWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.doubleWhile_label_entry:
# br label %label0
	addi.w $t0, $zero, 5
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 7
	st.w $t0, $fp, -24
	b .doubleWhile_label0
.doubleWhile_label0:
# %op1 = phi i32  [ 5, %label_entry ], [ %op7, %label16 ]
# %op2 = phi i32  [ 7, %label_entry ], [ %op17, %label16 ]
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
# br i1  %op5, label %label6, label %label8
	ld.b $t0, $fp, -33
	bnez $t0, .doubleWhile_label6
	b .doubleWhile_label8
.doubleWhile_label6:
# %op7 = add i32  %op1, 30
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 30
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# br label %label9
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -44
	b .doubleWhile_label9
.doubleWhile_label8:
# ret i32  %op2
	ld.w $a0, $fp, -24
	b doubleWhile_ret
.doubleWhile_label9:
# %op10 = phi i32  [ %op2, %label6 ], [ %op15, %label14 ]
# %op11 = icmp slt i32  %op10, 100
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -45
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -53
# br i1  %op13, label %label14, label %label16
	ld.b $t0, $fp, -53
	bnez $t0, .doubleWhile_label14
	b .doubleWhile_label16
.doubleWhile_label14:
# %op15 = add i32  %op10, 6
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label9
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -44
	b .doubleWhile_label9
.doubleWhile_label16:
# %op17 = sub i32  %op10, 100
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 100
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label0
	ld.w $t0, $fp, -40
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -24
	b .doubleWhile_label0
doubleWhile_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @doubleWhile()
	bl doubleWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
