	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = sub i32  10, -5
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, -5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -20
# %op1 = add i32  %op0, 30
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 30
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# %op2 = add i32  %op1, -5
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, -5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# ret i32  %op2
	ld.w $a0, $fp, -28
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
