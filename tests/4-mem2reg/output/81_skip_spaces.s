	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -496
.main_label_entry:
# %op0 = alloca [100 x i32 ]
	addi.d $t1, $fp, -424
	st.d $t1, $fp, -24
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -428
	b .main_label1
.main_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op8, %label5 ]
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -432
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -433
# br i1  %op4, label %label5, label %label9
	ld.b $t0, $fp, -433
	bnez $t0, .main_label5
	b .main_label9
.main_label5:
# %op6 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -440
# %op7 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -428
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -448
# store i32  %op6, i32 * %op7
	ld.d $t0, $fp, -448
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# %op8 = add i32  %op2, 1
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -452
# br label %label1
	ld.w $t0, $fp, -452
	st.w $t0, $fp, -428
	b .main_label1
.main_label9:
# br label %label10
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -456
	ld.w $t0, $fp, -428
	st.w $t0, $fp, -460
	b .main_label10
.main_label10:
# %op11 = phi i32  [ 0, %label9 ], [ %op18, %label14 ]
# %op12 = phi i32  [ %op2, %label9 ], [ %op15, %label14 ]
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -461
# br i1  %op13, label %label14, label %label19
	ld.b $t0, $fp, -461
	bnez $t0, .main_label14
	b .main_label19
.main_label14:
# %op15 = sub i32  %op12, 1
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# %op16 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op15
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op17 = load i32 , i32 * %op16
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op18 = add i32  %op11, %op17
	ld.w $t0, $fp, -456
	ld.w $t1, $fp, -484
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# br label %label10
	ld.w $t0, $fp, -488
	st.w $t0, $fp, -456
	ld.w $t0, $fp, -468
	st.w $t0, $fp, -460
	b .main_label10
.main_label19:
# %op20 = srem i32  %op11, 79
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 79
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -492
# ret i32  %op20
	ld.w $a0, $fp, -492
	b main_ret
main_ret:
	addi.d $sp, $sp, 496
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
