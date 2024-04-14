	.text
	.globl get_one
	.type get_one, @function
get_one:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.get_one_label_entry:
# ret i32  1
	addi.w $a0, $zero, 1
	b get_one_ret
get_one_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
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
# br i1  %op17, label %label20, label %label26
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -96
	ld.b $t0, $fp, -65
	bnez $t0, .deepWhileBr_label20
	b .deepWhileBr_label26
.deepWhileBr_label18:
# %op19 = phi i32  [ %op4, %label8 ], [ %op27, %label26 ]
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
# %op22 = call i32  @get_one(i32  0)
	addi.w $a0, $zero, 0
	bl get_one
	st.w $a0, $fp, -80
# %op23 = icmp eq i32  %op22, 1
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -89
# br i1  %op25, label %label28, label %label30
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -104
	ld.b $t0, $fp, -89
	bnez $t0, .deepWhileBr_label28
	b .deepWhileBr_label30
.deepWhileBr_label26:
# %op27 = phi i32  [ %op14, %label13 ], [ %op31, %label30 ]
# br label %label18
	ld.w $t0, $fp, -96
	st.w $t0, $fp, -72
	b .deepWhileBr_label18
.deepWhileBr_label28:
# %op29 = mul i32  %op21, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# br label %label30
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -104
	b .deepWhileBr_label30
.deepWhileBr_label30:
# %op31 = phi i32  [ %op14, %label20 ], [ %op29, %label28 ]
# br label %label26
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -96
	b .deepWhileBr_label26
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
