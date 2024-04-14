	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  10, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32  30, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 30
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = sub i32  %op2, -5
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, -5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = add i32  %op3, %op4
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -56
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op6 = add i32  %op5, -5
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, -5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# ret i32  %op6
	ld.w $a0, $fp, -64
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
