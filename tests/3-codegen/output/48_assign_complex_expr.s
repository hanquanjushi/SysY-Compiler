	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
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
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op10 = sub i32  %op8, %op9
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -112
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op11 = add i32  %op7, %op10
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op13 = add i32  %op12, 3
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op14 = sub i32  0, %op13
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -128
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op15 = srem i32  %op14, 2
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op16 = sub i32  %op11, %op15
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -136
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op16, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -144
	bl putint
# %op18 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op19 = srem i32  %op18, 2
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op20 = add i32  %op19, 67
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op21 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op23 = sub i32  %op21, %op22
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op24 = sub i32  0, %op23
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -168
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op25 = add i32  %op20, %op24
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -172
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op26 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op27 = add i32  %op26, 2
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op28 = srem i32  %op27, 2
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op29 = sub i32  0, %op28
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -188
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op30 = sub i32  %op25, %op29
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -192
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# store i32  %op30, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op31 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op32 = add i32  %op31, 3
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# store i32  %op32, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -204
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# call void @putint(i32  %op33)
	ld.w $a0, $fp, -208
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
