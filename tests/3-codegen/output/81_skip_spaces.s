	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -544
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = alloca [100 x i32 ]
	addi.d $t1, $fp, -456
	st.d $t1, $fp, -56
# br label %label3
	b .main_label3
.main_label3:
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -460
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -461
# br i1  %op5, label %label6, label %label12
	ld.b $t0, $fp, -461
	bnez $t0, .main_label6
	b .main_label12
.main_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -468
# %op8 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op9 = getelementptr [100 x i32 ], [100 x i32 ]* %op2, i32  0, i32  %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -472
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# store i32  %op7, i32 * %op9
	ld.d $t0, $fp, -480
	ld.w $t1, $fp, -468
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op11 = add i32  %op10, 1
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# store i32  %op11, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -488
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label12:
# br label %label13
	b .main_label13
.main_label13:
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -493
# br i1  %op15, label %label16, label %label24
	ld.b $t0, $fp, -493
	bnez $t0, .main_label16
	b .main_label24
.main_label16:
# %op17 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op18, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op20 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op21 = getelementptr [100 x i32 ], [100 x i32 ]* %op2, i32  0, i32  %op20
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -512
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -520
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op23 = add i32  %op19, %op22
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -524
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -528
# store i32  %op23, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -528
	st.w $t1, $t0, 0
# br label %label13
	b .main_label13
.main_label24:
# %op25 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op26 = srem i32  %op25, 79
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 79
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -536
# ret i32  %op26
	ld.w $a0, $fp, -536
	b main_ret
main_ret:
	addi.d $sp, $sp, 544
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
