# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl N
	.type N, @object
	.size N, 4
N:
	.space 4
	.globl M
	.type M, @object
	.size M, 4
M:
	.space 4
	.globl L
	.type L, @object
	.size L, 4
L:
	.space 4
	.text
	.globl sub
	.type sub, @function
sub:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
.sub_label_entry:
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	b .sub_label9
.sub_label9:
# %op10 = phi i32  [ 0, %label_entry ], [ %op33, %label14 ]
# %op11 = icmp slt i32  %op10, 3
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -93
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -101
# br i1  %op13, label %label14, label %label34
	ld.b $t0, $fp, -101
	bnez $t0, .sub_label14
	b .sub_label34
.sub_label14:
# %op15 = getelementptr float, float* %arg0, i32  %op10
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op16 = load float, float* %op15
	ld.d $t0, $fp, -112
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -116
# %op17 = getelementptr float, float* %arg3, i32  %op10
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op18 = load float, float* %op17
	ld.d $t0, $fp, -128
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -132
# %op19 = fsub float %op16, %op18
	fld.s $ft0, $fp, -116
	fld.s $ft1, $fp, -132
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -136
# %op20 = getelementptr float, float* %arg6, i32  %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store float %op19, float* %op20
	ld.d $t0, $fp, -144
	fld.s $ft0, $fp, -136
	fst.s $ft0, $t0, 0
# %op21 = getelementptr float, float* %arg1, i32  %op10
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op22 = load float, float* %op21
	ld.d $t0, $fp, -152
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -156
# %op23 = getelementptr float, float* %arg4, i32  %op10
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op24 = load float, float* %op23
	ld.d $t0, $fp, -168
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -172
# %op25 = fsub float %op22, %op24
	fld.s $ft0, $fp, -156
	fld.s $ft1, $fp, -172
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -176
# %op26 = getelementptr float, float* %arg7, i32  %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# store float %op25, float* %op26
	ld.d $t0, $fp, -184
	fld.s $ft0, $fp, -176
	fst.s $ft0, $t0, 0
# %op27 = getelementptr float, float* %arg2, i32  %op10
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op28 = load float, float* %op27
	ld.d $t0, $fp, -192
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -196
# %op29 = getelementptr float, float* %arg5, i32  %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op30 = load float, float* %op29
	ld.d $t0, $fp, -208
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -212
# %op31 = fsub float %op28, %op30
	fld.s $ft0, $fp, -196
	fld.s $ft1, $fp, -212
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -216
# %op32 = getelementptr float, float* %arg8, i32  %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store float %op31, float* %op32
	ld.d $t0, $fp, -224
	fld.s $ft0, $fp, -216
	fst.s $ft0, $t0, 0
# %op33 = add i32  %op10, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# br label %label9
	ld.w $t0, $fp, -228
	st.w $t0, $fp, -92
	b .sub_label9
.sub_label34:
# ret i32  0
	addi.w $a0, $zero, 0
	b sub_ret
sub_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -560
.main_label_entry:
# store i32  3, i32 * @N
	la.local $t0, N
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# store i32  3, i32 * @M
	la.local $t0, M
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# store i32  3, i32 * @L
	la.local $t0, L
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op0 = alloca [3 x float]
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -24
# %op1 = alloca [3 x float]
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -48
# %op2 = alloca [6 x float]
	addi.d $t1, $fp, -96
	st.d $t1, $fp, -72
# %op3 = alloca [3 x float]
	addi.d $t1, $fp, -116
	st.d $t1, $fp, -104
# %op4 = alloca [3 x float]
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -128
# %op5 = alloca [3 x float]
	addi.d $t1, $fp, -164
	st.d $t1, $fp, -152
# %op6 = alloca [3 x float]
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -176
# %op7 = alloca [3 x float]
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -200
# %op8 = alloca [3 x float]
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -224
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -240
	b .main_label9
.main_label9:
# %op10 = phi i32  [ 0, %label_entry ], [ %op27, %label14 ]
# %op11 = icmp slt i32  %op10, 3
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -249
# br i1  %op13, label %label14, label %label28
	ld.b $t0, $fp, -249
	bnez $t0, .main_label14
	b .main_label28
.main_label14:
# %op15 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op10
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op16 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -268
# store float %op16, float* %op15
	ld.d $t0, $fp, -264
	fld.s $ft0, $fp, -268
	fst.s $ft0, $t0, 0
# %op17 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op10
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op18 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -284
# store float %op18, float* %op17
	ld.d $t0, $fp, -280
	fld.s $ft0, $fp, -284
	fst.s $ft0, $t0, 0
# %op19 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op10
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# %op20 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -300
# store float %op20, float* %op19
	ld.d $t0, $fp, -296
	fld.s $ft0, $fp, -300
	fst.s $ft0, $t0, 0
# %op21 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op10
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op22 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -316
# store float %op22, float* %op21
	ld.d $t0, $fp, -312
	fld.s $ft0, $fp, -316
	fst.s $ft0, $t0, 0
# %op23 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op10
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op24 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -332
# store float %op24, float* %op23
	ld.d $t0, $fp, -328
	fld.s $ft0, $fp, -332
	fst.s $ft0, $t0, 0
# %op25 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# %op26 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -348
# store float %op26, float* %op25
	ld.d $t0, $fp, -344
	fld.s $ft0, $fp, -348
	fst.s $ft0, $t0, 0
# %op27 = add i32  %op10, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# br label %label9
	ld.w $t0, $fp, -352
	st.w $t0, $fp, -240
	b .main_label9
.main_label28:
# %op29 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -224
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -360
# %op30 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
	ld.d $t0, $fp, -200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -368
# %op31 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
	ld.d $t0, $fp, -176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -376
# %op32 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -384
# %op33 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -128
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -392
# %op34 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -400
# %op35 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -408
# %op36 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -48
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -416
# %op37 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -424
# %op38 = call i32  @sub(float* %op29, float* %op30, float* %op31, float* %op32, float* %op33, float* %op34, float* %op35, float* %op36, float* %op37)
# br label %label39
	ld.w $t0, $fp, -428
	st.w $t0, $fp, -432
	b .main_label39
.main_label39:
# %op40 = phi i32  [ %op38, %label28 ], [ %op48, %label44 ]
# %op41 = icmp slt i32  %op40, 3
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -433
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -433
	st.w $t0, $fp, -440
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -440
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -441
# br i1  %op43, label %label44, label %label49
	ld.b $t0, $fp, -441
	bnez $t0, .main_label44
	b .main_label49
.main_label44:
# %op45 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op40
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -432
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -456
# %op46 = load float, float* %op45
	ld.d $t0, $fp, -456
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -460
# %op47 = fptosi float %op46 to i32 
	fld.s $ft0, $fp, -460
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -464
# call void @putint(i32  %op47)
	ld.w $a0, $fp, -464
	bl putint
# %op48 = add i32  %op40, 1
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# br label %label39
	ld.w $t0, $fp, -468
	st.w $t0, $fp, -432
	b .main_label39
.main_label49:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label50
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -472
	b .main_label50
.main_label50:
# %op51 = phi i32  [ 0, %label49 ], [ %op59, %label55 ]
# %op52 = icmp slt i32  %op51, 3
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -473
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -473
	st.w $t0, $fp, -480
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -481
# br i1  %op54, label %label55, label %label60
	ld.b $t0, $fp, -481
	bnez $t0, .main_label55
	b .main_label60
.main_label55:
# %op56 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op51
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -472
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -496
# %op57 = load float, float* %op56
	ld.d $t0, $fp, -496
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -500
# %op58 = fptosi float %op57 to i32 
	fld.s $ft0, $fp, -500
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -504
# call void @putint(i32  %op58)
	ld.w $a0, $fp, -504
	bl putint
# %op59 = add i32  %op51, 1
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -508
# br label %label50
	ld.w $t0, $fp, -508
	st.w $t0, $fp, -472
	b .main_label50
.main_label60:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label61
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -512
	b .main_label61
.main_label61:
# %op62 = phi i32  [ 0, %label60 ], [ %op70, %label66 ]
# %op63 = icmp slt i32  %op62, 3
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -513
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -521
# br i1  %op65, label %label66, label %label71
	ld.b $t0, $fp, -521
	bnez $t0, .main_label66
	b .main_label71
.main_label66:
# %op67 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op62
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -512
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -536
# %op68 = load float, float* %op67
	ld.d $t0, $fp, -536
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -540
# %op69 = fptosi float %op68 to i32 
	fld.s $ft0, $fp, -540
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -544
# call void @putint(i32  %op69)
	ld.w $a0, $fp, -544
	bl putint
# %op70 = add i32  %op62, 1
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -548
# br label %label61
	ld.w $t0, $fp, -548
	st.w $t0, $fp, -512
	b .main_label61
.main_label71:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 560
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
