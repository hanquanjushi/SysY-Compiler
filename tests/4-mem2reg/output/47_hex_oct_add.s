	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = add i32  15, 12
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 12
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -20
# %op1 = add i32  %op0, 61
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 61
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
