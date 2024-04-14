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
.add_label_entry:
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
	b .add_label19
.add_label19:
# %op20 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op21 = load i32 , i32 * @M
	la.local $t0, M
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -248
	ld.w $t1, $fp, -252
	slt $t2, $t0, $t1
	st.b $t2, $fp, -253
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -253
	st.w $t0, $fp, -260
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -261
# br i1  %op24, label %label25, label %label64
	ld.b $t0, $fp, -261
	bnez $t0, .add_label25
	b .add_label64
.add_label25:
# %op26 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op27 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op28 = getelementptr float, float* %op27, i32  %op26
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -268
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op29 = load float, float* %op28
	ld.d $t0, $fp, -288
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -292
# %op30 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op31 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op32 = getelementptr float, float* %op31, i32  %op30
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -296
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op33 = load float, float* %op32
	ld.d $t0, $fp, -312
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -316
# %op34 = fadd float %op29, %op33
	fld.s $ft0, $fp, -292
	fld.s $ft1, $fp, -316
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -320
# %op35 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op36 = load float*, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -336
# %op37 = getelementptr float, float* %op36, i32  %op35
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -324
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# store float %op34, float* %op37
	ld.d $t0, $fp, -344
	fld.s $ft0, $fp, -320
	fst.s $ft0, $t0, 0
# %op38 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op39 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -360
# %op40 = getelementptr float, float* %op39, i32  %op38
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -348
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op41 = load float, float* %op40
	ld.d $t0, $fp, -368
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -372
# %op42 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op43 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -384
# %op44 = getelementptr float, float* %op43, i32  %op42
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -376
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -392
# %op45 = load float, float* %op44
	ld.d $t0, $fp, -392
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -396
# %op46 = fadd float %op41, %op45
	fld.s $ft0, $fp, -372
	fld.s $ft1, $fp, -396
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -400
# %op47 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op48 = load float*, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op49 = getelementptr float, float* %op48, i32  %op47
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -404
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store float %op46, float* %op49
	ld.d $t0, $fp, -424
	fld.s $ft0, $fp, -400
	fst.s $ft0, $t0, 0
# %op50 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op51 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -440
# %op52 = getelementptr float, float* %op51, i32  %op50
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -428
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -448
# %op53 = load float, float* %op52
	ld.d $t0, $fp, -448
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -452
# %op54 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op55 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -464
# %op56 = getelementptr float, float* %op55, i32  %op54
	ld.d $t0, $fp, -464
	ld.w $t1, $fp, -456
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# %op57 = load float, float* %op56
	ld.d $t0, $fp, -472
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -476
# %op58 = fadd float %op53, %op57
	fld.s $ft0, $fp, -452
	fld.s $ft1, $fp, -476
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -480
# %op59 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op60 = load float*, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -496
# %op61 = getelementptr float, float* %op60, i32  %op59
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -484
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# store float %op58, float* %op61
	ld.d $t0, $fp, -504
	fld.s $ft0, $fp, -480
	fst.s $ft0, $t0, 0
# %op62 = load i32 , i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op63 = add i32  %op62, 1
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -512
# store i32  %op63, i32 * %op18
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -512
	st.w $t1, $t0, 0
# br label %label19
	b .add_label19
.add_label64:
# ret i32  0
	addi.w $a0, $zero, 0
	b add_ret
add_ret:
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
# %op12 = load i32 , i32 * @M
	la.local $t0, M
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op13 = icmp slt i32  %op11, %op12
	ld.w $t0, $fp, -256
	ld.w $t1, $fp, -260
	slt $t2, $t0, $t1
	st.b $t2, $fp, -261
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -269
# br i1  %op15, label %label16, label %label43
	ld.b $t0, $fp, -269
	bnez $t0, .main_label16
	b .main_label43
.main_label16:
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op18 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op19 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op18
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -280
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# %op20 = sitofp i32  %op17 to float
	ld.w $t0, $fp, -276
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -292
# store float %op20, float* %op19
	ld.d $t0, $fp, -288
	fld.s $ft0, $fp, -292
	fst.s $ft0, $t0, 0
# %op21 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op22 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op23 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op22
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -300
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op24 = sitofp i32  %op21 to float
	ld.w $t0, $fp, -296
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -316
# store float %op24, float* %op23
	ld.d $t0, $fp, -312
	fld.s $ft0, $fp, -316
	fst.s $ft0, $t0, 0
# %op25 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op26 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op27 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op26
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op28 = sitofp i32  %op25 to float
	ld.w $t0, $fp, -320
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -340
# store float %op28, float* %op27
	ld.d $t0, $fp, -336
	fld.s $ft0, $fp, -340
	fst.s $ft0, $t0, 0
# %op29 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op30 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op31 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op30
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -348
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op32 = sitofp i32  %op29 to float
	ld.w $t0, $fp, -344
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -364
# store float %op32, float* %op31
	ld.d $t0, $fp, -360
	fld.s $ft0, $fp, -364
	fst.s $ft0, $t0, 0
# %op33 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op34 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op35 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op34
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op36 = sitofp i32  %op33 to float
	ld.w $t0, $fp, -368
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -388
# store float %op36, float* %op35
	ld.d $t0, $fp, -384
	fld.s $ft0, $fp, -388
	fst.s $ft0, $t0, 0
# %op37 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op38 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op39 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op38
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op40 = sitofp i32  %op37 to float
	ld.w $t0, $fp, -392
	movgr2fr.w $ft0, $t0
	ffint.s.w $ft0, $ft0
	fst.s $ft0, $fp, -412
# store float %op40, float* %op39
	ld.d $t0, $fp, -408
	fld.s $ft0, $fp, -412
	fst.s $ft0, $t0, 0
# %op41 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -420
# store i32  %op42, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label43:
# %op44 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -224
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -432
# %op45 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
	ld.d $t0, $fp, -200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -440
# %op46 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
	ld.d $t0, $fp, -176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -448
# %op47 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -456
# %op48 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -128
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -464
# %op49 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -472
# %op50 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -480
# %op51 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -48
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -488
# %op52 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -496
# %op53 = call i32  @add(float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51, float* %op52)
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
	bl add
	st.w $a0, $fp, -500
	addi.d $sp, $sp, 8
# store i32  %op53, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -500
	st.w $t1, $t0, 0
# %op54 = alloca i32 
	addi.d $t1, $fp, -516
	st.d $t1, $fp, -512
# br label %label55
	b .main_label55
.main_label55:
# %op56 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op57 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op58 = icmp slt i32  %op56, %op57
	ld.w $t0, $fp, -520
	ld.w $t1, $fp, -524
	slt $t2, $t0, $t1
	st.b $t2, $fp, -525
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -525
	st.w $t0, $fp, -532
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -533
# br i1  %op60, label %label61, label %label69
	ld.b $t0, $fp, -533
	bnez $t0, .main_label61
	b .main_label69
.main_label61:
# %op62 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op63 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op62
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -540
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -552
# %op64 = load float, float* %op63
	ld.d $t0, $fp, -552
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -556
# %op65 = fptosi float %op64 to i32 
	fld.s $ft0, $fp, -556
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -560
# store i32  %op65, i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -560
	st.w $t1, $t0, 0
# %op66 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# call void @putint(i32  %op66)
	ld.w $a0, $fp, -564
	bl putint
# %op67 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op68 = add i32  %op67, 1
	ld.w $t0, $fp, -568
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -572
# store i32  %op68, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -572
	st.w $t1, $t0, 0
# br label %label55
	b .main_label55
.main_label69:
# store i32  10, i32 * %op54
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op70 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# call void @putch(i32  %op70)
	ld.w $a0, $fp, -576
	bl putch
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label71
	b .main_label71
.main_label71:
# %op72 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op73 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -584
# %op74 = icmp slt i32  %op72, %op73
	ld.w $t0, $fp, -580
	ld.w $t1, $fp, -584
	slt $t2, $t0, $t1
	st.b $t2, $fp, -585
# %op75 = zext i1  %op74 to i32 
	ld.b $t0, $fp, -585
	st.w $t0, $fp, -592
# %op76 = icmp ne i32  %op75, 0
	ld.w $t0, $fp, -592
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -593
# br i1  %op76, label %label77, label %label85
	ld.b $t0, $fp, -593
	bnez $t0, .main_label77
	b .main_label85
.main_label77:
# %op78 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -600
# %op79 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op78
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -600
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -608
# %op80 = load float, float* %op79
	ld.d $t0, $fp, -608
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -612
# %op81 = fptosi float %op80 to i32 
	fld.s $ft0, $fp, -612
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -616
# store i32  %op81, i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -616
	st.w $t1, $t0, 0
# %op82 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# call void @putint(i32  %op82)
	ld.w $a0, $fp, -620
	bl putint
# %op83 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op84 = add i32  %op83, 1
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -628
# store i32  %op84, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -628
	st.w $t1, $t0, 0
# br label %label71
	b .main_label71
.main_label85:
# store i32  10, i32 * %op54
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op86 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# call void @putch(i32  %op86)
	ld.w $a0, $fp, -632
	bl putch
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label87
	b .main_label87
.main_label87:
# %op88 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op89 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -640
# %op90 = icmp slt i32  %op88, %op89
	ld.w $t0, $fp, -636
	ld.w $t1, $fp, -640
	slt $t2, $t0, $t1
	st.b $t2, $fp, -641
# %op91 = zext i1  %op90 to i32 
	ld.b $t0, $fp, -641
	st.w $t0, $fp, -648
# %op92 = icmp ne i32  %op91, 0
	ld.w $t0, $fp, -648
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -649
# br i1  %op92, label %label93, label %label101
	ld.b $t0, $fp, -649
	bnez $t0, .main_label93
	b .main_label101
.main_label93:
# %op94 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op95 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op94
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -656
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -664
# %op96 = load float, float* %op95
	ld.d $t0, $fp, -664
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -668
# %op97 = fptosi float %op96 to i32 
	fld.s $ft0, $fp, -668
	ftintrz.w.s $ft0, $ft0
	fst.s $ft0, $fp, -672
# store i32  %op97, i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -672
	st.w $t1, $t0, 0
# %op98 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# call void @putint(i32  %op98)
	ld.w $a0, $fp, -676
	bl putint
# %op99 = load i32 , i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op100 = add i32  %op99, 1
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# store i32  %op100, i32 * %op9
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -684
	st.w $t1, $t0, 0
# br label %label87
	b .main_label87
.main_label101:
# store i32  10, i32 * %op54
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op102 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# call void @putch(i32  %op102)
	ld.w $a0, $fp, -688
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 688
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
