	.text
	.globl whileIf
	.type whileIf, @function
whileIf:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.whileIf_label_entry:
# br label %label0
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	b .whileIf_label0
.whileIf_label0:
# %op1 = phi i32  [ 0, %label_entry ], [ %op18, %label16 ]
# %op2 = phi i32  [ 0, %label_entry ], [ %op17, %label16 ]
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
	bnez $t0, .whileIf_label6
	b .whileIf_label10
.whileIf_label6:
# %op7 = icmp eq i32  %op1, 5
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 5
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
# br i1  %op9, label %label11, label %label12
	ld.b $t0, $fp, -41
	bnez $t0, .whileIf_label11
	b .whileIf_label12
.whileIf_label10:
# ret i32  %op2
	ld.w $a0, $fp, -24
	b whileIf_ret
.whileIf_label11:
# br label %label16
	addi.w $t0, $zero, 25
	st.w $t0, $fp, -56
	b .whileIf_label16
.whileIf_label12:
# %op13 = icmp eq i32  %op1, 10
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -42
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -42
	st.w $t0, $fp, -48
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -49
# br i1  %op15, label %label19, label %label20
	ld.b $t0, $fp, -49
	bnez $t0, .whileIf_label19
	b .whileIf_label20
.whileIf_label16:
# %op17 = phi i32  [ 25, %label11 ], [ %op23, %label22 ]
# %op18 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label0
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -24
	b .whileIf_label0
.whileIf_label19:
# br label %label22
	addi.w $t0, $zero, 42
	st.w $t0, $fp, -68
	b .whileIf_label22
.whileIf_label20:
# %op21 = mul i32  %op1, 2
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label22
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -68
	b .whileIf_label22
.whileIf_label22:
# %op23 = phi i32  [ 42, %label19 ], [ %op21, %label20 ]
# br label %label16
	ld.w $t0, $fp, -68
	st.w $t0, $fp, -56
	b .whileIf_label16
whileIf_ret:
	addi.d $sp, $sp, 80
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
# %op0 = call i32  @whileIf()
	bl whileIf
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
