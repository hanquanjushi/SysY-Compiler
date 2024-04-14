	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
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
# %op2 = sub i32  5, 5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op3 = add i32  %op1, %op2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = add i32  1, 3
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = sub i32  0, %op4
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -36
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op6 = srem i32  %op5, 2
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op7 = sub i32  %op3, %op6
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -44
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# call void @putint(i32  %op7)
	ld.w $a0, $fp, -48
	bl putint
# %op8 = srem i32  -2, 2
	addi.w $t0, $zero, -2
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = add i32  %op8, 67
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op10 = sub i32  5, 5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op11 = sub i32  0, %op10
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -60
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op12 = add i32  %op9, %op11
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -64
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op13 = add i32  1, 2
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op14 = srem i32  %op13, 2
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op15 = sub i32  0, %op14
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -76
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op16 = sub i32  %op12, %op15
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -80
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op17 = add i32  %op16, 3
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -88
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
