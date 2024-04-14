	.text
	.globl FourWhile
	.type FourWhile, @function
FourWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
.FourWhile_label_entry:
# br label %label0
	addi.w $t0, $zero, 5
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 7
	st.w $t0, $fp, -24
	addi.w $t0, $zero, 6
	st.w $t0, $fp, -28
	addi.w $t0, $zero, 10
	st.w $t0, $fp, -32
	b .FourWhile_label0
.FourWhile_label0:
# %op1 = phi i32  [ 5, %label_entry ], [ %op9, %label23 ]
# %op2 = phi i32  [ 7, %label_entry ], [ %op15, %label23 ]
# %op3 = phi i32  [ 6, %label_entry ], [ %op24, %label23 ]
# %op4 = phi i32  [ 10, %label_entry ], [ %op17, %label23 ]
# %op5 = icmp slt i32  %op1, 20
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -41
	bnez $t0, .FourWhile_label8
	b .FourWhile_label10
.FourWhile_label8:
# %op9 = add i32  %op1, 3
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# br label %label14
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -64
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -68
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -72
	b .FourWhile_label14
.FourWhile_label10:
# %op11 = add i32  %op3, %op4
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op12 = add i32  %op1, %op11
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op13 = add i32  %op12, %op2
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# ret i32  %op13
	ld.w $a0, $fp, -60
	b FourWhile_ret
.FourWhile_label14:
# %op15 = phi i32  [ %op2, %label8 ], [ %op34, %label33 ]
# %op16 = phi i32  [ %op3, %label8 ], [ %op22, %label33 ]
# %op17 = phi i32  [ %op4, %label8 ], [ %op27, %label33 ]
# %op18 = icmp slt i32  %op16, 10
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -73
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -81
# br i1  %op20, label %label21, label %label23
	ld.b $t0, $fp, -81
	bnez $t0, .FourWhile_label21
	b .FourWhile_label23
.FourWhile_label21:
# %op22 = add i32  %op16, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# br label %label25
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -96
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -100
	b .FourWhile_label25
.FourWhile_label23:
# %op24 = sub i32  %op16, 2
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# br label %label0
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -24
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -28
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -32
	b .FourWhile_label0
.FourWhile_label25:
# %op26 = phi i32  [ %op15, %label21 ], [ %op32, %label42 ]
# %op27 = phi i32  [ %op17, %label21 ], [ %op43, %label42 ]
# %op28 = icmp eq i32  %op26, 7
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 7
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -101
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -109
# br i1  %op30, label %label31, label %label33
	ld.b $t0, $fp, -109
	bnez $t0, .FourWhile_label31
	b .FourWhile_label33
.FourWhile_label31:
# %op32 = sub i32  %op26, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label35
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -124
	b .FourWhile_label35
.FourWhile_label33:
# %op34 = add i32  %op26, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# br label %label14
	ld.w $t0, $fp, -120
	st.w $t0, $fp, -64
	ld.w $t0, $fp, -88
	st.w $t0, $fp, -68
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -72
	b .FourWhile_label14
.FourWhile_label35:
# %op36 = phi i32  [ %op27, %label31 ], [ %op41, %label40 ]
# %op37 = icmp slt i32  %op36, 20
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -125
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -133
# br i1  %op39, label %label40, label %label42
	ld.b $t0, $fp, -133
	bnez $t0, .FourWhile_label40
	b .FourWhile_label42
.FourWhile_label40:
# %op41 = add i32  %op36, 3
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# br label %label35
	ld.w $t0, $fp, -140
	st.w $t0, $fp, -124
	b .FourWhile_label35
.FourWhile_label42:
# %op43 = sub i32  %op36, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# br label %label25
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -96
	ld.w $t0, $fp, -144
	st.w $t0, $fp, -100
	b .FourWhile_label25
FourWhile_ret:
	addi.d $sp, $sp, 144
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
# %op0 = call i32  @FourWhile()
	bl FourWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
