# Global variables
	.text
	.section .bss, "aw", @nobits
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
	.globl N
	.type N, @object
	.size N, 4
N:
	.space 4
	.text
	.globl add
	.type add, @function
add:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
.add_label_entry:
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	b .add_label9
.add_label9:
# %op10 = phi i32  [ 0, %label_entry ], [ %op34, %label15 ]
# %op11 = load i32 , i32 * @M
	la.local $t0, M
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op12 = icmp slt i32  %op10, %op11
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	slt $t2, $t0, $t1
	st.b $t2, $fp, -97
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -105
# br i1  %op14, label %label15, label %label35
	ld.b $t0, $fp, -105
	bnez $t0, .add_label15
	b .add_label35
.add_label15:
# %op16 = getelementptr float, float* %arg0, i32  %op10
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op17 = load float, float* %op16
	ld.d $t0, $fp, -120
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -124
# %op18 = getelementptr float, float* %arg3, i32  %op10
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op19 = load float, float* %op18
	ld.d $t0, $fp, -136
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -140
# %op20 = fadd float %op17, %op19
	fld.s $ft0, $fp, -124
	fld.s $ft1, $fp, -140
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -144
# %op21 = getelementptr float, float* %arg6, i32  %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# store float %op20, float* %op21
	ld.d $t0, $fp, -152
	fld.s $ft0, $fp, -144
	fst.s $ft0, $t0, 0
# %op22 = getelementptr float, float* %arg1, i32  %op10
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op23 = load float, float* %op22
	ld.d $t0, $fp, -160
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -164
# %op24 = getelementptr float, float* %arg4, i32  %op10
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op25 = load float, float* %op24
	ld.d $t0, $fp, -176
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -180
# %op26 = fadd float %op23, %op25
	fld.s $ft0, $fp, -164
	fld.s $ft1, $fp, -180
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -184
# %op27 = getelementptr float, float* %arg7, i32  %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# store float %op26, float* %op27
	ld.d $t0, $fp, -192
	fld.s $ft0, $fp, -184
	fst.s $ft0, $t0, 0
# %op28 = getelementptr float, float* %arg2, i32  %op10
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# %op29 = load float, float* %op28
	ld.d $t0, $fp, -200
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -204
# %op30 = getelementptr float, float* %arg5, i32  %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op31 = load float, float* %op30
	ld.d $t0, $fp, -216
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -220
# %op32 = fadd float %op29, %op31
	fld.s $ft0, $fp, -204
	fld.s $ft1, $fp, -220
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -224
# %op33 = getelementptr float, float* %arg8, i32  %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -92
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# store float %op32, float* %op33
	ld.d $t0, $fp, -232
	fld.s $ft0, $fp, -224
	fst.s $ft0, $t0, 0
# %op34 = add i32  %op10, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# br label %label9
	ld.w $t0, $fp, -236
	st.w $t0, $fp, -92
	b .add_label9
.add_label35:
# ret i32  0
	addi.w $a0, $zero, 0
	b add_ret
add_ret:
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
# %op10 = phi i32  [ 0, %label_entry ], [ %op28, %label15 ]
# %op11 = load i32 , i32 * @M
	la.local $t0, M
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op12 = icmp slt i32  %op10, %op11
	ld.w $t0, $fp, -240
	ld.w $t1, $fp, -244
	slt $t2, $t0, $t1
	st.b $t2, $fp, -245
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -245
	st.w $t0, $fp, -252
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -253
# br i1  %op14, label %label15, label %label29
	ld.b $t0, $fp, -253
	bnez $t0, .main_label15
	b .main_label29
.main_label15:
# %op16 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op10
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op17 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -268
# store float %op17, float* %op16
	ld.d $t0, $fp, -264
	fld.s $ft0, $fp, -268
	fst.s $ft0, $t0, 0
# %op18 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op10
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op19 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -284
# store float %op19, float* %op18
	ld.d $t0, $fp, -280
	fld.s $ft0, $fp, -284
	fst.s $ft0, $t0, 0
# %op20 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op10
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# %op21 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -300
# store float %op21, float* %op20
	ld.d $t0, $fp, -296
	fld.s $ft0, $fp, -300
	fst.s $ft0, $t0, 0
# %op22 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op10
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op23 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -316
# store float %op23, float* %op22
	ld.d $t0, $fp, -312
	fld.s $ft0, $fp, -316
	fst.s $ft0, $t0, 0
# %op24 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op10
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op25 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -332
# store float %op25, float* %op24
	ld.d $t0, $fp, -328
	fld.s $ft0, $fp, -332
	fst.s $ft0, $t0, 0
# %op26 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -240
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# %op27 = sitofp i32  %op10 to float
	ld.w $t0, $fp, -240
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -348
# store float %op27, float* %op26
	ld.d $t0, $fp, -344
	fld.s $ft0, $fp, -348
	fst.s $ft0, $t0, 0
# %op28 = add i32  %op10, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# br label %label9
	ld.w $t0, $fp, -352
	st.w $t0, $fp, -240
	b .main_label9
.main_label29:
# %op30 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -224
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -360
# %op31 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
	ld.d $t0, $fp, -200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -368
# %op32 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
	ld.d $t0, $fp, -176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -376
# %op33 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -384
# %op34 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -128
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -392
# %op35 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -400
# %op36 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -408
# %op37 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -48
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -416
# %op38 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -424
# %op39 = call i32  @add(float* %op30, float* %op31, float* %op32, float* %op33, float* %op34, float* %op35, float* %op36, float* %op37, float* %op38)
# br label %label40
	ld.w $t0, $fp, -428
	st.w $t0, $fp, -432
	b .main_label40
.main_label40:
# %op41 = phi i32  [ %op39, %label29 ], [ %op50, %label46 ]
# %op42 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op43 = icmp slt i32  %op41, %op42
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -436
	slt $t2, $t0, $t1
	st.b $t2, $fp, -437
# %op44 = zext i1  %op43 to i32 
	ld.b $t0, $fp, -437
	st.w $t0, $fp, -444
# %op45 = icmp ne i32  %op44, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -445
# br i1  %op45, label %label46, label %label51
	ld.b $t0, $fp, -445
	bnez $t0, .main_label46
	b .main_label51
.main_label46:
# %op47 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op41
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -432
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -456
# %op48 = load float, float* %op47
	ld.d $t0, $fp, -456
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -460
# %op49 = fptosi float %op48 to i32 
	fld.s $ft0, $fp, -460
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -464
# call void @putint(i32  %op49)
	ld.w $a0, $fp, -464
	bl putint
# %op50 = add i32  %op41, 1
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# br label %label40
	ld.w $t0, $fp, -468
	st.w $t0, $fp, -432
	b .main_label40
.main_label51:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label52
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -472
	b .main_label52
.main_label52:
# %op53 = phi i32  [ 0, %label51 ], [ %op62, %label58 ]
# %op54 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op55 = icmp slt i32  %op53, %op54
	ld.w $t0, $fp, -472
	ld.w $t1, $fp, -476
	slt $t2, $t0, $t1
	st.b $t2, $fp, -477
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -477
	st.w $t0, $fp, -484
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -485
# br i1  %op57, label %label58, label %label63
	ld.b $t0, $fp, -485
	bnez $t0, .main_label58
	b .main_label63
.main_label58:
# %op59 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op53
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -472
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -496
# %op60 = load float, float* %op59
	ld.d $t0, $fp, -496
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -500
# %op61 = fptosi float %op60 to i32 
	fld.s $ft0, $fp, -500
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -504
# call void @putint(i32  %op61)
	ld.w $a0, $fp, -504
	bl putint
# %op62 = add i32  %op53, 1
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -508
# br label %label52
	ld.w $t0, $fp, -508
	st.w $t0, $fp, -472
	b .main_label52
.main_label63:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label64
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -512
	b .main_label64
.main_label64:
# %op65 = phi i32  [ 0, %label63 ], [ %op74, %label70 ]
# %op66 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op67 = icmp slt i32  %op65, %op66
	ld.w $t0, $fp, -512
	ld.w $t1, $fp, -516
	slt $t2, $t0, $t1
	st.b $t2, $fp, -517
# %op68 = zext i1  %op67 to i32 
	ld.b $t0, $fp, -517
	st.w $t0, $fp, -524
# %op69 = icmp ne i32  %op68, 0
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -525
# br i1  %op69, label %label70, label %label75
	ld.b $t0, $fp, -525
	bnez $t0, .main_label70
	b .main_label75
.main_label70:
# %op71 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op65
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -512
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 3
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -536
# %op72 = load float, float* %op71
	ld.d $t0, $fp, -536
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -540
# %op73 = fptosi float %op72 to i32 
	fld.s $ft0, $fp, -540
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -544
# call void @putint(i32  %op73)
	ld.w $a0, $fp, -544
	bl putint
# %op74 = add i32  %op65, 1
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -548
# br label %label64
	ld.w $t0, $fp, -548
	st.w $t0, $fp, -512
	b .main_label64
.main_label75:
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
