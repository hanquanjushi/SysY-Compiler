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
# store i32  56, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 56
	st.w $t1, $t0, 0
# store i32  4, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = sub i32  %op2, -4
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, -4
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
# store i32  %op5, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = icmp eq i32  %op6, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -65
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op9 = icmp eq i32  %op8, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -73
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op11 = icmp eq i32  %op10, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -81
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op13 = sub i32  0, %op12
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -88
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op14, label %label15, label %label16
	ld.b $t0, $fp, -93
	bnez $t0, .main_label15
	b .main_label16
.main_label15:
# store i32  -1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label16:
# %op17 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op18 = add i32  0, %op17
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op18, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label19:
# %op20 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# call void @putint(i32  %op20)
	ld.w $a0, $fp, -108
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
