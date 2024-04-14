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
	addi.d $sp, $sp, -512
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	ld.d $t0, $fp, 0
	st.d $t0, $fp, -88
.sub_label_entry:
# %op9 = alloca float*
	addi.d $t1, $fp, -104
	st.d $t1, $fp, -96
# store float* %arg0, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op10 = alloca float*
	addi.d $t1, $fp, -120
	st.d $t1, $fp, -112
# store float* %arg1, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op11 = alloca float*
	addi.d $t1, $fp, -136
	st.d $t1, $fp, -128
# store float* %arg2, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op12 = alloca float*
	addi.d $t1, $fp, -152
	st.d $t1, $fp, -144
# store float* %arg3, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $fp, -48
	st.d $t1, $t0, 0
# %op13 = alloca float*
	addi.d $t1, $fp, -168
	st.d $t1, $fp, -160
# store float* %arg4, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $fp, -56
	st.d $t1, $t0, 0
# %op14 = alloca float*
	addi.d $t1, $fp, -184
	st.d $t1, $fp, -176
# store float* %arg5, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $fp, -64
	st.d $t1, $t0, 0
# %op15 = alloca float*
	addi.d $t1, $fp, -200
	st.d $t1, $fp, -192
# store float* %arg6, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $fp, -72
	st.d $t1, $t0, 0
# %op16 = alloca float*
	addi.d $t1, $fp, -216
	st.d $t1, $fp, -208
# store float* %arg7, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $fp, -80
	st.d $t1, $t0, 0
# %op17 = alloca float*
	addi.d $t1, $fp, -232
	st.d $t1, $fp, -224
# store float* %arg8, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $fp, -88
	st.d $t1, $t0, 0
# %op18 = alloca i32 
	addi.d $t1, $fp, -244
	st.d $t1, $fp, -240
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label19
	b .sub_label19
.sub_label19:
# %op20 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op21 = icmp slt i32  %op20, 3
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -249
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -249
	st.w $t0, $fp, -256
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -257
# br i1  %op23, label %label24, label %label63
	ld.b $t0, $fp, -257
	bnez $t0, .sub_label24
	b .sub_label63
.sub_label24:
# %op25 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op26 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -272
# %op27 = getelementptr float, float* %op26, i32  %op25
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -264
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op28 = load float, float* %op27
	ld.d $t0, $fp, -280
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -284
# %op29 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op30 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -296
# %op31 = getelementptr float, float* %op30, i32  %op29
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -288
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op32 = load float, float* %op31
	ld.d $t0, $fp, -304
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -308
# %op33 = fsub float %op28, %op32
	fld.s $ft0, $fp, -284
	fld.s $ft1, $fp, -308
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -312
# %op34 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op35 = load float*, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -328
# %op36 = getelementptr float, float* %op35, i32  %op34
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -316
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# store float %op33, float* %op36
	ld.d $t0, $fp, -336
	fld.s $ft0, $fp, -312
	fst.s $ft0, $t0, 0
# %op37 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op38 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -352
# %op39 = getelementptr float, float* %op38, i32  %op37
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -340
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# %op40 = load float, float* %op39
	ld.d $t0, $fp, -360
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -364
# %op41 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op42 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -376
# %op43 = getelementptr float, float* %op42, i32  %op41
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -368
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# %op44 = load float, float* %op43
	ld.d $t0, $fp, -384
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -388
# %op45 = fsub float %op40, %op44
	fld.s $ft0, $fp, -364
	fld.s $ft1, $fp, -388
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -392
# %op46 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op47 = load float*, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -408
# %op48 = getelementptr float, float* %op47, i32  %op46
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -396
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -416
# store float %op45, float* %op48
	ld.d $t0, $fp, -416
	fld.s $ft0, $fp, -392
	fst.s $ft0, $t0, 0
# %op49 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op50 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -432
# %op51 = getelementptr float, float* %op50, i32  %op49
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -420
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op52 = load float, float* %op51
	ld.d $t0, $fp, -440
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -444
# %op53 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op54 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -456
# %op55 = getelementptr float, float* %op54, i32  %op53
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -448
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op56 = load float, float* %op55
	ld.d $t0, $fp, -464
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -468
# %op57 = fsub float %op52, %op56
	fld.s $ft0, $fp, -444
	fld.s $ft1, $fp, -468
	fsub.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -472
# %op58 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op59 = load float*, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -488
# %op60 = getelementptr float, float* %op59, i32  %op58
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -476
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# store float %op57, float* %op60
	ld.d $t0, $fp, -496
	fld.s $ft0, $fp, -472
	fst.s $ft0, $t0, 0
# %op61 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op62 = add i32  %op61, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op62, i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# br label %label19
	b .sub_label19
.sub_label63:
# ret i32  0
	addi.w $a0, $zero, 0
	b sub_ret
sub_ret:
	addi.d $sp, $sp, 512
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -688
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
# %op9 = alloca i32 
	addi.d $t1, $fp, -252
	st.d $t1, $fp, -248
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label10:
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op12 = icmp slt i32  %op11, 3
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -257
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -257
	st.w $t0, $fp, -264
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -265
# br i1  %op14, label %label15, label %label42
	ld.b $t0, $fp, -265
	bnez $t0, .main_label15
	b .main_label42
.main_label15:
# %op16 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op18 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op17
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# %op19 = sitofp i32  %op16 to float
	ld.w $t0, $fp, -272
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -292
# store float %op19, float* %op18
	ld.d $t0, $fp, -288
	fld.s $ft0, $fp, -292
	fst.s $ft0, $t0, 0
# %op20 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op21 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op22 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op21
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -300
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op23 = sitofp i32  %op20 to float
	ld.w $t0, $fp, -296
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -316
# store float %op23, float* %op22
	ld.d $t0, $fp, -312
	fld.s $ft0, $fp, -316
	fst.s $ft0, $t0, 0
# %op24 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op25 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op26 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op25
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op27 = sitofp i32  %op24 to float
	ld.w $t0, $fp, -320
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -340
# store float %op27, float* %op26
	ld.d $t0, $fp, -336
	fld.s $ft0, $fp, -340
	fst.s $ft0, $t0, 0
# %op28 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op29 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op30 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op29
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -348
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op31 = sitofp i32  %op28 to float
	ld.w $t0, $fp, -344
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -364
# store float %op31, float* %op30
	ld.d $t0, $fp, -360
	fld.s $ft0, $fp, -364
	fst.s $ft0, $t0, 0
# %op32 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op33 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op34 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op33
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op35 = sitofp i32  %op32 to float
	ld.w $t0, $fp, -368
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -388
# store float %op35, float* %op34
	ld.d $t0, $fp, -384
	fld.s $ft0, $fp, -388
	fst.s $ft0, $t0, 0
# %op36 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op37 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op38 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op37
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op39 = sitofp i32  %op36 to float
	ld.w $t0, $fp, -392
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -412
# store float %op39, float* %op38
	ld.d $t0, $fp, -408
	fld.s $ft0, $fp, -412
	fst.s $ft0, $t0, 0
# %op40 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -420
# store i32  %op41, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label42:
# %op43 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -224
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -432
# %op44 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
	ld.d $t0, $fp, -200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -440
# %op45 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
	ld.d $t0, $fp, -176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -448
# %op46 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -456
# %op47 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -128
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -464
# %op48 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -472
# %op49 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -480
# %op50 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -48
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -488
# %op51 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -496
# %op52 = call i32  @sub(float* %op43, float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51)
	addi.d $sp, $sp, -8
	ld.d $t0, $fp, -496
	st.d $t0, $sp, 0
	ld.d $a7, $fp, -488
	ld.d $a6, $fp, -480
	ld.d $a5, $fp, -472
	ld.d $a4, $fp, -464
	ld.d $a3, $fp, -456
	ld.d $a2, $fp, -448
	ld.d $a1, $fp, -440
	ld.d $a0, $fp, -432
	bl sub
	st.w $a0, $fp, -500
	addi.d $sp, $sp, 8
# store i32  %op52, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -500
	st.w $t1, $t0, 0
# %op53 = alloca i32 
	addi.d $t1, $fp, -516
	st.d $t1, $fp, -512
# br label %label54
	b .main_label54
.main_label54:
# %op55 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op56 = icmp slt i32  %op55, 3
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -521
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -521
	st.w $t0, $fp, -528
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -528
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -529
# br i1  %op58, label %label59, label %label67
	ld.b $t0, $fp, -529
	bnez $t0, .main_label59
	b .main_label67
.main_label59:
# %op60 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op61 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op60
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -536
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -544
# %op62 = load float, float* %op61
	ld.d $t0, $fp, -544
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -548
# %op63 = fptosi float %op62 to i32 
	fld.s $ft0, $fp, -548
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -552
# store i32  %op63, i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -552
	st.w $t1, $t0, 0
# %op64 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# call void @putint(i32  %op64)
	ld.w $a0, $fp, -556
	bl putint
# %op65 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op66 = add i32  %op65, 1
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -564
# store i32  %op66, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -564
	st.w $t1, $t0, 0
# br label %label54
	b .main_label54
.main_label67:
# store i32  10, i32 * %op53
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# call void @putch(i32  %op68)
	ld.w $a0, $fp, -568
	bl putch
# br label %label69
	b .main_label69
.main_label69:
# %op70 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op71 = icmp slt i32  %op70, 3
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -573
# %op72 = zext i1  %op71 to i32 
	ld.b $t0, $fp, -573
	st.w $t0, $fp, -580
# %op73 = icmp ne i32  %op72, 0
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -581
# br i1  %op73, label %label74, label %label82
	ld.b $t0, $fp, -581
	bnez $t0, .main_label74
	b .main_label82
.main_label74:
# %op75 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op76 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op75
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -588
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -600
# %op77 = load float, float* %op76
	ld.d $t0, $fp, -600
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -604
# %op78 = fptosi float %op77 to i32 
	fld.s $ft0, $fp, -604
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -608
# store i32  %op78, i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -608
	st.w $t1, $t0, 0
# %op79 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# call void @putint(i32  %op79)
	ld.w $a0, $fp, -612
	bl putint
# %op80 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op81 = add i32  %op80, 1
	ld.w $t0, $fp, -616
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -620
# store i32  %op81, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -620
	st.w $t1, $t0, 0
# br label %label69
	b .main_label69
.main_label82:
# store i32  10, i32 * %op53
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op83 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# call void @putch(i32  %op83)
	ld.w $a0, $fp, -624
	bl putch
# br label %label84
	b .main_label84
.main_label84:
# %op85 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op86 = icmp slt i32  %op85, 3
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -629
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -629
	st.w $t0, $fp, -636
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -637
# br i1  %op88, label %label89, label %label97
	ld.b $t0, $fp, -637
	bnez $t0, .main_label89
	b .main_label97
.main_label89:
# %op90 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op91 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op90
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -644
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -656
# %op92 = load float, float* %op91
	ld.d $t0, $fp, -656
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -660
# %op93 = fptosi float %op92 to i32 
	fld.s $ft0, $fp, -660
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -664
# store i32  %op93, i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# %op94 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# call void @putint(i32  %op94)
	ld.w $a0, $fp, -668
	bl putint
# %op95 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op96 = add i32  %op95, 1
	ld.w $t0, $fp, -672
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -676
# store i32  %op96, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -676
	st.w $t1, $t0, 0
# br label %label84
	b .main_label84
.main_label97:
# store i32  10, i32 * %op53
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op98 = load i32 , i32 * %op53
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# call void @putch(i32  %op98)
	ld.w $a0, $fp, -680
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 688
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
