	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = sitofp i32  5 to float
	addi.w $t0, $zero, 5
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -20
# %op1 = fptosi float %op0 to i32 
	fld.s $ft0, $fp, -20
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
