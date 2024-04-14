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
	.globl mul
	.type mul, @function
mul:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1840
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
.mul_label_entry:
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
# %op19 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op20 = getelementptr float, float* %op19, i32  0
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op21 = load float, float* %op20
	ld.d $t0, $fp, -264
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -268
# %op22 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op23 = getelementptr float, float* %op22, i32  0
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op24 = load float, float* %op23
	ld.d $t0, $fp, -288
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -292
# %op25 = fmul float %op21, %op24
	fld.s $ft0, $fp, -268
	fld.s $ft1, $fp, -292
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -296
# %op26 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op27 = getelementptr float, float* %op26, i32  1
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op28 = load float, float* %op27
	ld.d $t0, $fp, -312
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -316
# %op29 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -328
# %op30 = getelementptr float, float* %op29, i32  0
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op31 = load float, float* %op30
	ld.d $t0, $fp, -336
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -340
# %op32 = fmul float %op28, %op31
	fld.s $ft0, $fp, -316
	fld.s $ft1, $fp, -340
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -344
# %op33 = fadd float %op25, %op32
	fld.s $ft0, $fp, -296
	fld.s $ft1, $fp, -344
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -348
# %op34 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -360
# %op35 = getelementptr float, float* %op34, i32  2
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op36 = load float, float* %op35
	ld.d $t0, $fp, -368
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -372
# %op37 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -384
# %op38 = getelementptr float, float* %op37, i32  0
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -392
# %op39 = load float, float* %op38
	ld.d $t0, $fp, -392
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -396
# %op40 = fmul float %op36, %op39
	fld.s $ft0, $fp, -372
	fld.s $ft1, $fp, -396
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -400
# %op41 = fadd float %op33, %op40
	fld.s $ft0, $fp, -348
	fld.s $ft1, $fp, -400
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -404
# %op42 = load float*, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op43 = getelementptr float, float* %op42, i32  0
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store float %op41, float* %op43
	ld.d $t0, $fp, -424
	fld.s $ft0, $fp, -404
	fst.s $ft0, $t0, 0
# %op44 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -432
# %op45 = getelementptr float, float* %op44, i32  0
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op46 = load float, float* %op45
	ld.d $t0, $fp, -440
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -444
# %op47 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -456
# %op48 = getelementptr float, float* %op47, i32  1
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op49 = load float, float* %op48
	ld.d $t0, $fp, -464
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -468
# %op50 = fmul float %op46, %op49
	fld.s $ft0, $fp, -444
	fld.s $ft1, $fp, -468
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -472
# %op51 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -480
# %op52 = getelementptr float, float* %op51, i32  1
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -488
# %op53 = load float, float* %op52
	ld.d $t0, $fp, -488
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -492
# %op54 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -504
# %op55 = getelementptr float, float* %op54, i32  1
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -512
# %op56 = load float, float* %op55
	ld.d $t0, $fp, -512
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -516
# %op57 = fmul float %op53, %op56
	fld.s $ft0, $fp, -492
	fld.s $ft1, $fp, -516
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -520
# %op58 = fadd float %op50, %op57
	fld.s $ft0, $fp, -472
	fld.s $ft1, $fp, -520
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -524
# %op59 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -536
# %op60 = getelementptr float, float* %op59, i32  2
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op61 = load float, float* %op60
	ld.d $t0, $fp, -544
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -548
# %op62 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -560
# %op63 = getelementptr float, float* %op62, i32  1
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# %op64 = load float, float* %op63
	ld.d $t0, $fp, -568
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -572
# %op65 = fmul float %op61, %op64
	fld.s $ft0, $fp, -548
	fld.s $ft1, $fp, -572
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -576
# %op66 = fadd float %op58, %op65
	fld.s $ft0, $fp, -524
	fld.s $ft1, $fp, -576
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -580
# %op67 = load float*, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -592
# %op68 = getelementptr float, float* %op67, i32  1
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -600
# store float %op66, float* %op68
	ld.d $t0, $fp, -600
	fld.s $ft0, $fp, -580
	fst.s $ft0, $t0, 0
# %op69 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -608
# %op70 = getelementptr float, float* %op69, i32  0
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -616
# %op71 = load float, float* %op70
	ld.d $t0, $fp, -616
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -620
# %op72 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -632
# %op73 = getelementptr float, float* %op72, i32  2
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -640
# %op74 = load float, float* %op73
	ld.d $t0, $fp, -640
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -644
# %op75 = fmul float %op71, %op74
	fld.s $ft0, $fp, -620
	fld.s $ft1, $fp, -644
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -648
# %op76 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -656
# %op77 = getelementptr float, float* %op76, i32  1
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -664
# %op78 = load float, float* %op77
	ld.d $t0, $fp, -664
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -668
# %op79 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -680
# %op80 = getelementptr float, float* %op79, i32  2
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -688
# %op81 = load float, float* %op80
	ld.d $t0, $fp, -688
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -692
# %op82 = fmul float %op78, %op81
	fld.s $ft0, $fp, -668
	fld.s $ft1, $fp, -692
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -696
# %op83 = fadd float %op75, %op82
	fld.s $ft0, $fp, -648
	fld.s $ft1, $fp, -696
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -700
# %op84 = load float*, float** %op9
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -712
# %op85 = getelementptr float, float* %op84, i32  2
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -720
# %op86 = load float, float* %op85
	ld.d $t0, $fp, -720
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -724
# %op87 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -736
# %op88 = getelementptr float, float* %op87, i32  2
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -744
# %op89 = load float, float* %op88
	ld.d $t0, $fp, -744
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -748
# %op90 = fmul float %op86, %op89
	fld.s $ft0, $fp, -724
	fld.s $ft1, $fp, -748
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -752
# %op91 = fadd float %op83, %op90
	fld.s $ft0, $fp, -700
	fld.s $ft1, $fp, -752
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -756
# %op92 = load float*, float** %op15
	ld.d $t0, $fp, -192
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -768
# %op93 = getelementptr float, float* %op92, i32  2
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -776
# store float %op91, float* %op93
	ld.d $t0, $fp, -776
	fld.s $ft0, $fp, -756
	fst.s $ft0, $t0, 0
# %op94 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -784
# %op95 = getelementptr float, float* %op94, i32  0
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -792
# %op96 = load float, float* %op95
	ld.d $t0, $fp, -792
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -796
# %op97 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -808
# %op98 = getelementptr float, float* %op97, i32  0
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -816
# %op99 = load float, float* %op98
	ld.d $t0, $fp, -816
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -820
# %op100 = fmul float %op96, %op99
	fld.s $ft0, $fp, -796
	fld.s $ft1, $fp, -820
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -824
# %op101 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -832
# %op102 = getelementptr float, float* %op101, i32  1
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -840
# %op103 = load float, float* %op102
	ld.d $t0, $fp, -840
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -844
# %op104 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -856
# %op105 = getelementptr float, float* %op104, i32  0
	ld.d $t0, $fp, -856
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -864
# %op106 = load float, float* %op105
	ld.d $t0, $fp, -864
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -868
# %op107 = fmul float %op103, %op106
	fld.s $ft0, $fp, -844
	fld.s $ft1, $fp, -868
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -872
# %op108 = fadd float %op100, %op107
	fld.s $ft0, $fp, -824
	fld.s $ft1, $fp, -872
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -876
# %op109 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -888
# %op110 = getelementptr float, float* %op109, i32  2
	ld.d $t0, $fp, -888
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -896
# %op111 = load float, float* %op110
	ld.d $t0, $fp, -896
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -900
# %op112 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -912
# %op113 = getelementptr float, float* %op112, i32  0
	ld.d $t0, $fp, -912
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -920
# %op114 = load float, float* %op113
	ld.d $t0, $fp, -920
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -924
# %op115 = fmul float %op111, %op114
	fld.s $ft0, $fp, -900
	fld.s $ft1, $fp, -924
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -928
# %op116 = fadd float %op108, %op115
	fld.s $ft0, $fp, -876
	fld.s $ft1, $fp, -928
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -932
# %op117 = load float*, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -944
# %op118 = getelementptr float, float* %op117, i32  0
	ld.d $t0, $fp, -944
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# store float %op116, float* %op118
	ld.d $t0, $fp, -952
	fld.s $ft0, $fp, -932
	fst.s $ft0, $t0, 0
# %op119 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -960
# %op120 = getelementptr float, float* %op119, i32  0
	ld.d $t0, $fp, -960
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -968
# %op121 = load float, float* %op120
	ld.d $t0, $fp, -968
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -972
# %op122 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -984
# %op123 = getelementptr float, float* %op122, i32  1
	ld.d $t0, $fp, -984
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -992
# %op124 = load float, float* %op123
	ld.d $t0, $fp, -992
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -996
# %op125 = fmul float %op121, %op124
	fld.s $ft0, $fp, -972
	fld.s $ft1, $fp, -996
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1000
# %op126 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1008
# %op127 = getelementptr float, float* %op126, i32  1
	ld.d $t0, $fp, -1008
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1016
# %op128 = load float, float* %op127
	ld.d $t0, $fp, -1016
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1020
# %op129 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1032
# %op130 = getelementptr float, float* %op129, i32  1
	ld.d $t0, $fp, -1032
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1040
# %op131 = load float, float* %op130
	ld.d $t0, $fp, -1040
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1044
# %op132 = fmul float %op128, %op131
	fld.s $ft0, $fp, -1020
	fld.s $ft1, $fp, -1044
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1048
# %op133 = fadd float %op125, %op132
	fld.s $ft0, $fp, -1000
	fld.s $ft1, $fp, -1048
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1052
# %op134 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1064
# %op135 = getelementptr float, float* %op134, i32  2
	ld.d $t0, $fp, -1064
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1072
# %op136 = load float, float* %op135
	ld.d $t0, $fp, -1072
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1076
# %op137 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1088
# %op138 = getelementptr float, float* %op137, i32  1
	ld.d $t0, $fp, -1088
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1096
# %op139 = load float, float* %op138
	ld.d $t0, $fp, -1096
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1100
# %op140 = fmul float %op136, %op139
	fld.s $ft0, $fp, -1076
	fld.s $ft1, $fp, -1100
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1104
# %op141 = fadd float %op133, %op140
	fld.s $ft0, $fp, -1052
	fld.s $ft1, $fp, -1104
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1108
# %op142 = load float*, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1120
# %op143 = getelementptr float, float* %op142, i32  1
	ld.d $t0, $fp, -1120
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1128
# store float %op141, float* %op143
	ld.d $t0, $fp, -1128
	fld.s $ft0, $fp, -1108
	fst.s $ft0, $t0, 0
# %op144 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1136
# %op145 = getelementptr float, float* %op144, i32  0
	ld.d $t0, $fp, -1136
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1144
# %op146 = load float, float* %op145
	ld.d $t0, $fp, -1144
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1148
# %op147 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1160
# %op148 = getelementptr float, float* %op147, i32  2
	ld.d $t0, $fp, -1160
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1168
# %op149 = load float, float* %op148
	ld.d $t0, $fp, -1168
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1172
# %op150 = fmul float %op146, %op149
	fld.s $ft0, $fp, -1148
	fld.s $ft1, $fp, -1172
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1176
# %op151 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1184
# %op152 = getelementptr float, float* %op151, i32  1
	ld.d $t0, $fp, -1184
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1192
# %op153 = load float, float* %op152
	ld.d $t0, $fp, -1192
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1196
# %op154 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1208
# %op155 = getelementptr float, float* %op154, i32  2
	ld.d $t0, $fp, -1208
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1216
# %op156 = load float, float* %op155
	ld.d $t0, $fp, -1216
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1220
# %op157 = fmul float %op153, %op156
	fld.s $ft0, $fp, -1196
	fld.s $ft1, $fp, -1220
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1224
# %op158 = fadd float %op150, %op157
	fld.s $ft0, $fp, -1176
	fld.s $ft1, $fp, -1224
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1228
# %op159 = load float*, float** %op10
	ld.d $t0, $fp, -112
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1240
# %op160 = getelementptr float, float* %op159, i32  2
	ld.d $t0, $fp, -1240
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1248
# %op161 = load float, float* %op160
	ld.d $t0, $fp, -1248
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1252
# %op162 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1264
# %op163 = getelementptr float, float* %op162, i32  2
	ld.d $t0, $fp, -1264
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1272
# %op164 = load float, float* %op163
	ld.d $t0, $fp, -1272
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1276
# %op165 = fmul float %op161, %op164
	fld.s $ft0, $fp, -1252
	fld.s $ft1, $fp, -1276
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1280
# %op166 = fadd float %op158, %op165
	fld.s $ft0, $fp, -1228
	fld.s $ft1, $fp, -1280
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1284
# %op167 = load float*, float** %op16
	ld.d $t0, $fp, -208
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1296
# %op168 = getelementptr float, float* %op167, i32  2
	ld.d $t0, $fp, -1296
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1304
# store float %op166, float* %op168
	ld.d $t0, $fp, -1304
	fld.s $ft0, $fp, -1284
	fst.s $ft0, $t0, 0
# %op169 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1312
# %op170 = getelementptr float, float* %op169, i32  0
	ld.d $t0, $fp, -1312
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1320
# %op171 = load float, float* %op170
	ld.d $t0, $fp, -1320
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1324
# %op172 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1336
# %op173 = getelementptr float, float* %op172, i32  0
	ld.d $t0, $fp, -1336
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1344
# %op174 = load float, float* %op173
	ld.d $t0, $fp, -1344
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1348
# %op175 = fmul float %op171, %op174
	fld.s $ft0, $fp, -1324
	fld.s $ft1, $fp, -1348
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1352
# %op176 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1360
# %op177 = getelementptr float, float* %op176, i32  1
	ld.d $t0, $fp, -1360
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1368
# %op178 = load float, float* %op177
	ld.d $t0, $fp, -1368
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1372
# %op179 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1384
# %op180 = getelementptr float, float* %op179, i32  0
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1392
# %op181 = load float, float* %op180
	ld.d $t0, $fp, -1392
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1396
# %op182 = fmul float %op178, %op181
	fld.s $ft0, $fp, -1372
	fld.s $ft1, $fp, -1396
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1400
# %op183 = fadd float %op175, %op182
	fld.s $ft0, $fp, -1352
	fld.s $ft1, $fp, -1400
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1404
# %op184 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1416
# %op185 = getelementptr float, float* %op184, i32  2
	ld.d $t0, $fp, -1416
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1424
# %op186 = load float, float* %op185
	ld.d $t0, $fp, -1424
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1428
# %op187 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1440
# %op188 = getelementptr float, float* %op187, i32  0
	ld.d $t0, $fp, -1440
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1448
# %op189 = load float, float* %op188
	ld.d $t0, $fp, -1448
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1452
# %op190 = fmul float %op186, %op189
	fld.s $ft0, $fp, -1428
	fld.s $ft1, $fp, -1452
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1456
# %op191 = fadd float %op183, %op190
	fld.s $ft0, $fp, -1404
	fld.s $ft1, $fp, -1456
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1460
# %op192 = load float*, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1472
# %op193 = getelementptr float, float* %op192, i32  0
	ld.d $t0, $fp, -1472
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1480
# store float %op191, float* %op193
	ld.d $t0, $fp, -1480
	fld.s $ft0, $fp, -1460
	fst.s $ft0, $t0, 0
# %op194 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1488
# %op195 = getelementptr float, float* %op194, i32  0
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1496
# %op196 = load float, float* %op195
	ld.d $t0, $fp, -1496
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1500
# %op197 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1512
# %op198 = getelementptr float, float* %op197, i32  1
	ld.d $t0, $fp, -1512
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1520
# %op199 = load float, float* %op198
	ld.d $t0, $fp, -1520
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1524
# %op200 = fmul float %op196, %op199
	fld.s $ft0, $fp, -1500
	fld.s $ft1, $fp, -1524
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1528
# %op201 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1536
# %op202 = getelementptr float, float* %op201, i32  1
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1544
# %op203 = load float, float* %op202
	ld.d $t0, $fp, -1544
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1548
# %op204 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1560
# %op205 = getelementptr float, float* %op204, i32  1
	ld.d $t0, $fp, -1560
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1568
# %op206 = load float, float* %op205
	ld.d $t0, $fp, -1568
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1572
# %op207 = fmul float %op203, %op206
	fld.s $ft0, $fp, -1548
	fld.s $ft1, $fp, -1572
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1576
# %op208 = fadd float %op200, %op207
	fld.s $ft0, $fp, -1528
	fld.s $ft1, $fp, -1576
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1580
# %op209 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1592
# %op210 = getelementptr float, float* %op209, i32  2
	ld.d $t0, $fp, -1592
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1600
# %op211 = load float, float* %op210
	ld.d $t0, $fp, -1600
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1604
# %op212 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1616
# %op213 = getelementptr float, float* %op212, i32  1
	ld.d $t0, $fp, -1616
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1624
# %op214 = load float, float* %op213
	ld.d $t0, $fp, -1624
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1628
# %op215 = fmul float %op211, %op214
	fld.s $ft0, $fp, -1604
	fld.s $ft1, $fp, -1628
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1632
# %op216 = fadd float %op208, %op215
	fld.s $ft0, $fp, -1580
	fld.s $ft1, $fp, -1632
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1636
# %op217 = load float*, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1648
# %op218 = getelementptr float, float* %op217, i32  1
	ld.d $t0, $fp, -1648
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1656
# store float %op216, float* %op218
	ld.d $t0, $fp, -1656
	fld.s $ft0, $fp, -1636
	fst.s $ft0, $t0, 0
# %op219 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1664
# %op220 = getelementptr float, float* %op219, i32  0
	ld.d $t0, $fp, -1664
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1672
# %op221 = load float, float* %op220
	ld.d $t0, $fp, -1672
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1676
# %op222 = load float*, float** %op12
	ld.d $t0, $fp, -144
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1688
# %op223 = getelementptr float, float* %op222, i32  2
	ld.d $t0, $fp, -1688
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1696
# %op224 = load float, float* %op223
	ld.d $t0, $fp, -1696
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1700
# %op225 = fmul float %op221, %op224
	fld.s $ft0, $fp, -1676
	fld.s $ft1, $fp, -1700
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1704
# %op226 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1712
# %op227 = getelementptr float, float* %op226, i32  1
	ld.d $t0, $fp, -1712
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1720
# %op228 = load float, float* %op227
	ld.d $t0, $fp, -1720
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1724
# %op229 = load float*, float** %op13
	ld.d $t0, $fp, -160
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1736
# %op230 = getelementptr float, float* %op229, i32  2
	ld.d $t0, $fp, -1736
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1744
# %op231 = load float, float* %op230
	ld.d $t0, $fp, -1744
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1748
# %op232 = fmul float %op228, %op231
	fld.s $ft0, $fp, -1724
	fld.s $ft1, $fp, -1748
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1752
# %op233 = fadd float %op225, %op232
	fld.s $ft0, $fp, -1704
	fld.s $ft1, $fp, -1752
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1756
# %op234 = load float*, float** %op11
	ld.d $t0, $fp, -128
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1768
# %op235 = getelementptr float, float* %op234, i32  2
	ld.d $t0, $fp, -1768
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1776
# %op236 = load float, float* %op235
	ld.d $t0, $fp, -1776
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1780
# %op237 = load float*, float** %op14
	ld.d $t0, $fp, -176
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1792
# %op238 = getelementptr float, float* %op237, i32  2
	ld.d $t0, $fp, -1792
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1800
# %op239 = load float, float* %op238
	ld.d $t0, $fp, -1800
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1804
# %op240 = fmul float %op236, %op239
	fld.s $ft0, $fp, -1780
	fld.s $ft1, $fp, -1804
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1808
# %op241 = fadd float %op233, %op240
	fld.s $ft0, $fp, -1756
	fld.s $ft1, $fp, -1808
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1812
# %op242 = load float*, float** %op17
	ld.d $t0, $fp, -224
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1824
# %op243 = getelementptr float, float* %op242, i32  2
	ld.d $t0, $fp, -1824
	addi.w $t1, $zero, 2
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1832
# store float %op241, float* %op243
	ld.d $t0, $fp, -1832
	fld.s $ft0, $fp, -1812
	fst.s $ft0, $t0, 0
# ret i32  0
	addi.w $a0, $zero, 0
	b mul_ret
mul_ret:
	addi.d $sp, $sp, 1840
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
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
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
# %op53 = call i32  @mul(float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51, float* %op52)
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
	bl mul
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
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
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
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# call void @putch(i32  %op70)
	ld.w $a0, $fp, -576
	bl putch
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
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
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
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op86 = load i32 , i32 * %op54
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# call void @putch(i32  %op86)
	ld.w $a0, $fp, -632
	bl putch
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
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
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
