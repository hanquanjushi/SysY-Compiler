	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
.main_label_entry:
# %op0 = mul i32  -2, 1
	addi.w $t0, $zero, -2
	addi.w $t1, $zero, 1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -20
# %op1 = sdiv i32  %op0, 2
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# %op2 = icmp slt i32  %op1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -25
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op4, label %label5, label %label12
	ld.b $t0, $fp, -33
	bnez $t0, .main_label5
	b .main_label12
.main_label5:
# call void @putint(i32  2)
	addi.w $a0, $zero, 2
	bl putint
# br label %label6
	b .main_label6
.main_label6:
# %op7 = srem i32  -2, 2
	addi.w $t0, $zero, -2
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op8 = add i32  %op7, 67
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op9 = icmp slt i32  %op8, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -45
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -53
# br i1  %op11, label %label23, label %label25
	ld.b $t0, $fp, -53
	bnez $t0, .main_label23
	b .main_label25
.main_label12:
# %op13 = sub i32  5, 5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -61
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -69
# br i1  %op16, label %label17, label %label6
	ld.b $t0, $fp, -69
	bnez $t0, .main_label17
	b .main_label6
.main_label17:
# %op18 = add i32  1, 3
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op19 = srem i32  %op18, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -89
# br i1  %op22, label %label5, label %label6
	ld.b $t0, $fp, -89
	bnez $t0, .main_label5
	b .main_label6
.main_label23:
# call void @putint(i32  4)
	addi.w $a0, $zero, 4
	bl putint
# br label %label24
	b .main_label24
.main_label24:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label25:
# %op26 = sub i32  5, 5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -97
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -105
# br i1  %op29, label %label30, label %label24
	ld.b $t0, $fp, -105
	bnez $t0, .main_label30
	b .main_label24
.main_label30:
# %op31 = add i32  1, 2
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op32 = srem i32  %op31, 2
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -117
# %op34 = zext i1  %op33 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op35 = icmp ne i32  %op34, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -125
# br i1  %op35, label %label23, label %label24
	ld.b $t0, $fp, -125
	bnez $t0, .main_label23
	b .main_label24
main_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
