	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op2 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op3 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# %op4 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  5, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  -2, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, -2
	st.w $t1, $t0, 0
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op6 = mul i32  %op5, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op7 = sdiv i32  %op6, 2
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op8 = icmp slt i32  %op7, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -105
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -113
# br i1  %op10, label %label11, label %label20
	ld.b $t0, $fp, -113
	bnez $t0, .main_label11
	b .main_label20
.main_label11:
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# call void @putint(i32  %op12)
	ld.w $a0, $fp, -120
	bl putint
# br label %label13
	b .main_label13
.main_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op15 = srem i32  %op14, 2
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op16 = add i32  %op15, 67
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op17 = icmp slt i32  %op16, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -141
# br i1  %op19, label %label34, label %label37
	ld.b $t0, $fp, -141
	bnez $t0, .main_label34
	b .main_label37
.main_label20:
# %op21 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op23 = sub i32  %op21, %op22
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -157
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -165
# br i1  %op26, label %label27, label %label13
	ld.b $t0, $fp, -165
	bnez $t0, .main_label27
	b .main_label13
.main_label27:
# %op28 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op29 = add i32  %op28, 3
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op30 = srem i32  %op29, 2
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -181
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -189
# br i1  %op33, label %label11, label %label13
	ld.b $t0, $fp, -189
	bnez $t0, .main_label11
	b .main_label13
.main_label34:
# store i32  4, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op35 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# call void @putint(i32  %op35)
	ld.w $a0, $fp, -196
	bl putint
# br label %label36
	b .main_label36
.main_label36:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label37:
# %op38 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op39 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op40 = sub i32  %op38, %op39
	ld.w $t0, $fp, -200
	ld.w $t1, $fp, -204
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -209
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -217
# br i1  %op43, label %label44, label %label36
	ld.b $t0, $fp, -217
	bnez $t0, .main_label44
	b .main_label36
.main_label44:
# %op45 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op46 = add i32  %op45, 2
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# %op47 = srem i32  %op46, 2
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -233
# %op49 = zext i1  %op48 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -241
# br i1  %op50, label %label34, label %label36
	ld.b $t0, $fp, -241
	bnez $t0, .main_label34
	b .main_label36
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
