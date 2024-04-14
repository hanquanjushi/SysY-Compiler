	.text
	.globl ifWhile
	.type ifWhile, @function
ifWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.ifWhile_label_entry:
# %op0 = icmp eq i32  0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
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
# br i1  %op2, label %label3, label %label4
	ld.b $t0, $fp, -25
	bnez $t0, .ifWhile_label3
	b .ifWhile_label4
.ifWhile_label3:
# br label %label7
	addi.w $t0, $zero, 3
	st.w $t0, $fp, -36
	b .ifWhile_label7
.ifWhile_label4:
# br label %label16
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -60
	addi.w $t0, $zero, 3
	st.w $t0, $fp, -64
	b .ifWhile_label16
.ifWhile_label5:
# %op6 = phi i32  [ %op15, %label14 ], [ %op18, %label25 ]
# ret i32  %op6
	ld.w $a0, $fp, -32
	b ifWhile_ret
.ifWhile_label7:
# %op8 = phi i32  [ 3, %label3 ], [ %op13, %label12 ]
# %op9 = icmp eq i32  %op8, 2
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 2
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -37
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op11, label %label12, label %label14
	ld.b $t0, $fp, -45
	bnez $t0, .ifWhile_label12
	b .ifWhile_label14
.ifWhile_label12:
# %op13 = add i32  %op8, 2
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label7
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -36
	b .ifWhile_label7
.ifWhile_label14:
# %op15 = add i32  %op8, 25
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 25
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# br label %label5
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -32
	b .ifWhile_label5
.ifWhile_label16:
# %op17 = phi i32  [ 0, %label4 ], [ %op24, %label22 ]
# %op18 = phi i32  [ 3, %label4 ], [ %op23, %label22 ]
# %op19 = icmp slt i32  %op17, 5
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -73
# br i1  %op21, label %label22, label %label25
	ld.b $t0, $fp, -73
	bnez $t0, .ifWhile_label22
	b .ifWhile_label25
.ifWhile_label22:
# %op23 = mul i32  %op18, 2
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op24 = add i32  %op17, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label16
	ld.w $t0, $fp, -84
	st.w $t0, $fp, -60
	ld.w $t0, $fp, -80
	st.w $t0, $fp, -64
	b .ifWhile_label16
.ifWhile_label25:
# br label %label5
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -32
	b .ifWhile_label5
ifWhile_ret:
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
# %op0 = call i32  @ifWhile()
	bl ifWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
