	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = alloca float
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = sitofp i32  5 to float
	addi.w $t0, $zero, 5
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -32
# store float %op1, float* %op0
	ld.d $t0, $fp, -24
	fld.s $ft0, $fp, -32
	fst.s $ft0, $t0, 0
# %op2 = alloca float
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op3 = sitofp i32  5 to float
	addi.w $t0, $zero, 5
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -48
# store float %op3, float* %op2
	ld.d $t0, $fp, -40
	fld.s $ft0, $fp, -48
	fst.s $ft0, $t0, 0
# %op4 = load float, float* %op0
	ld.d $t0, $fp, -24
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -52
# %op5 = fptosi float %op4 to i32 
	fld.s $ft0, $fp, -52
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -56
# ret i32  %op5
	ld.w $a0, $fp, -56
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
