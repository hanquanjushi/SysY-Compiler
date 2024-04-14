	.text
	.globl ifElseIf
	.type ifElseIf, @function
ifElseIf:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.ifElseIf_label_entry:
# %op0 = icmp eq i32  5, 6
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 6
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
# %op2 = icmp ne i32  %op1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -25
# br i1  %op2, label %label3, label %label9
	ld.b $t0, $fp, -25
	bnez $t0, .ifElseIf_label3
	b .ifElseIf_label9
.ifElseIf_label3:
# ret i32  5
	addi.w $a0, $zero, 5
	b ifElseIf_ret
.ifElseIf_label4:
# %op5 = icmp eq i32  10, 10
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -26
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -26
	st.w $t0, $fp, -32
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -33
# br i1  %op7, label %label20, label %label14
	ld.b $t0, $fp, -33
	bnez $t0, .ifElseIf_label20
	b .ifElseIf_label14
.ifElseIf_label8:
# ret i32  %op19
	ld.w $a0, $fp, -56
	b ifElseIf_ret
.ifElseIf_label9:
# %op10 = icmp eq i32  10, 11
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, 11
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -34
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -34
	st.w $t0, $fp, -40
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -41
# br i1  %op12, label %label3, label %label4
	ld.b $t0, $fp, -41
	bnez $t0, .ifElseIf_label3
	b .ifElseIf_label4
.ifElseIf_label13:
# br label %label18
	addi.w $t0, $zero, 25
	st.w $t0, $fp, -56
	b .ifElseIf_label18
.ifElseIf_label14:
# %op15 = icmp eq i32  10, 10
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -42
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -42
	st.w $t0, $fp, -48
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -49
# br i1  %op17, label %label30, label %label26
	ld.b $t0, $fp, -49
	bnez $t0, .ifElseIf_label30
	b .ifElseIf_label26
.ifElseIf_label18:
# %op19 = phi i32  [ %op29, %label28 ], [ 25, %label13 ]
# br label %label8
	b .ifElseIf_label8
.ifElseIf_label20:
# %op21 = icmp eq i32  5, 1
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -57
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -65
# br i1  %op23, label %label13, label %label14
	ld.b $t0, $fp, -65
	bnez $t0, .ifElseIf_label13
	b .ifElseIf_label14
.ifElseIf_label24:
# %op25 = add i32  5, 15
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 15
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# br label %label28
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -80
	b .ifElseIf_label28
.ifElseIf_label26:
# %op27 = sub i32  0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# br label %label28
	ld.w $t0, $fp, -76
	st.w $t0, $fp, -80
	b .ifElseIf_label28
.ifElseIf_label28:
# %op29 = phi i32  [ %op27, %label26 ], [ %op25, %label24 ]
# br label %label18
	ld.w $t0, $fp, -80
	st.w $t0, $fp, -56
	b .ifElseIf_label18
.ifElseIf_label30:
# %op31 = icmp eq i32  5, -5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, -5
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -81
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -89
# br i1  %op33, label %label24, label %label26
	ld.b $t0, $fp, -89
	bnez $t0, .ifElseIf_label24
	b .ifElseIf_label26
ifElseIf_ret:
	addi.d $sp, $sp, 96
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
# %op0 = call i32  @ifElseIf()
	bl ifElseIf
	st.w $a0, $fp, -20
# call void @putint(i32  %op0)
	ld.w $a0, $fp, -20
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
