	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
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
# store i32  10, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32  4, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  2, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  2, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op6 = add i32  %op4, %op5
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op7 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op9 = sub i32  %op7, %op8
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op10 = mul i32  %op6, %op9
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -100
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# ret i32  %op10
	ld.w $a0, $fp, -104
	b main_ret
main_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
