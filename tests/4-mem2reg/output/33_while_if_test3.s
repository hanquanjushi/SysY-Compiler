	.text
	.globl deepWhileBr
	.type deepWhileBr, @function
deepWhileBr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.deepWhileBr_label_entry:
# %op2 = add i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# br label %label3
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -32
	b .deepWhileBr_label3
.deepWhileBr_label3:
# %op4 = phi i32  [ %op2, %label_entry ], [ %op19, %label18 ]
# %op5 = icmp slt i32  %op4, 75
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 75
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
# br i1  %op7, label %label8, label %label12
	ld.b $t0, $fp, -41
	bnez $t0, .deepWhileBr_label8
	b .deepWhileBr_label12
.deepWhileBr_label8:
# %op9 = icmp slt i32  %op4, 100
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -42
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -42
	st.w $t0, $fp, -48
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -49
# br i1  %op11, label %label13, label %label18
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -72
	ld.b $t0, $fp, -49
	bnez $t0, .deepWhileBr_label13
	b .deepWhileBr_label18
.deepWhileBr_label12:
# ret i32  %op4
	ld.w $a0, $fp, -32
	b deepWhileBr_ret
.deepWhileBr_label13:
# %op14 = add i32  %op4, 42
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 42
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op15 = icmp sgt i32  %op14, 99
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 99
	slt $t2, $t1, $t0
	st.b $t2, $fp, -57
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -65
# br i1  %op17, label %label20, label %label25
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -92
	ld.b $t0, $fp, -65
	bnez $t0, .deepWhileBr_label20
	b .deepWhileBr_label25
.deepWhileBr_label18:
# %op19 = phi i32  [ %op4, %label8 ], [ %op26, %label25 ]
# br label %label3
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -32
	b .deepWhileBr_label3
.deepWhileBr_label20:
# %op21 = mul i32  42, 2
	addi.w $t0, $zero, 42
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op22 = icmp eq i32  1, 1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -77
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -85
# br i1  %op24, label %label27, label %label29
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -100
	ld.b $t0, $fp, -85
	bnez $t0, .deepWhileBr_label27
	b .deepWhileBr_label29
.deepWhileBr_label25:
# %op26 = phi i32  [ %op14, %label13 ], [ %op30, %label29 ]
# br label %label18
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -72
	b .deepWhileBr_label18
.deepWhileBr_label27:
# %op28 = mul i32  %op21, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# br label %label29
	ld.w $t0, $fp, -96
	st.w $t0, $fp, -100
	b .deepWhileBr_label29
.deepWhileBr_label29:
# %op30 = phi i32  [ %op14, %label20 ], [ %op28, %label27 ]
# br label %label25
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -92
	b .deepWhileBr_label25
deepWhileBr_ret:
	addi.d $sp, $sp, 112
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
# %op0 = call i32  @deepWhileBr(i32  2, i32  2)
	addi.w $a0, $zero, 2
	addi.w $a1, $zero, 2
	bl deepWhileBr
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
