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
	addi.d $sp, $sp, -1168
.mul_label_entry:
# %op9 = getelementptr float, float* %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op10 = load float, float* %op9
	ld.d $t0, $fp, -96
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -100
# %op11 = getelementptr float, float* %arg3, i32  0
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op12 = load float, float* %op11
	ld.d $t0, $fp, -112
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -116
# %op13 = fmul float %op10, %op12
	fld.s $ft0, $fp, -100
	fld.s $ft1, $fp, -116
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -120
# %op14 = getelementptr float, float* %arg0, i32  1
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op15 = load float, float* %op14
	ld.d $t0, $fp, -128
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -132
# %op16 = getelementptr float, float* %arg4, i32  0
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op17 = load float, float* %op16
	ld.d $t0, $fp, -144
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -148
# %op18 = fmul float %op15, %op17
	fld.s $ft0, $fp, -132
	fld.s $ft1, $fp, -148
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -152
# %op19 = fadd float %op13, %op18
	fld.s $ft0, $fp, -120
	fld.s $ft1, $fp, -152
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -156
# %op20 = getelementptr float, float* %arg0, i32  2
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op21 = load float, float* %op20
	ld.d $t0, $fp, -168
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -172
# %op22 = getelementptr float, float* %arg5, i32  0
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op23 = load float, float* %op22
	ld.d $t0, $fp, -184
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -188
# %op24 = fmul float %op21, %op23
	fld.s $ft0, $fp, -172
	fld.s $ft1, $fp, -188
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -192
# %op25 = fadd float %op19, %op24
	fld.s $ft0, $fp, -156
	fld.s $ft1, $fp, -192
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -196
# %op26 = getelementptr float, float* %arg6, i32  0
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store float %op25, float* %op26
	ld.d $t0, $fp, -208
	fld.s $ft0, $fp, -196
	fst.s $ft0, $t0, 0
# %op27 = getelementptr float, float* %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op28 = load float, float* %op27
	ld.d $t0, $fp, -216
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -220
# %op29 = getelementptr float, float* %arg3, i32  1
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op30 = load float, float* %op29
	ld.d $t0, $fp, -232
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -236
# %op31 = fmul float %op28, %op30
	fld.s $ft0, $fp, -220
	fld.s $ft1, $fp, -236
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -240
# %op32 = getelementptr float, float* %arg0, i32  1
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# %op33 = load float, float* %op32
	ld.d $t0, $fp, -248
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -252
# %op34 = getelementptr float, float* %arg4, i32  1
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op35 = load float, float* %op34
	ld.d $t0, $fp, -264
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -268
# %op36 = fmul float %op33, %op35
	fld.s $ft0, $fp, -252
	fld.s $ft1, $fp, -268
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -272
# %op37 = fadd float %op31, %op36
	fld.s $ft0, $fp, -240
	fld.s $ft1, $fp, -272
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -276
# %op38 = getelementptr float, float* %arg0, i32  2
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op39 = load float, float* %op38
	ld.d $t0, $fp, -288
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -292
# %op40 = getelementptr float, float* %arg5, i32  1
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op41 = load float, float* %op40
	ld.d $t0, $fp, -304
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -308
# %op42 = fmul float %op39, %op41
	fld.s $ft0, $fp, -292
	fld.s $ft1, $fp, -308
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -312
# %op43 = fadd float %op37, %op42
	fld.s $ft0, $fp, -276
	fld.s $ft1, $fp, -312
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -316
# %op44 = getelementptr float, float* %arg6, i32  1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# store float %op43, float* %op44
	ld.d $t0, $fp, -328
	fld.s $ft0, $fp, -316
	fst.s $ft0, $t0, 0
# %op45 = getelementptr float, float* %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op46 = load float, float* %op45
	ld.d $t0, $fp, -336
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -340
# %op47 = getelementptr float, float* %arg3, i32  2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op48 = load float, float* %op47
	ld.d $t0, $fp, -352
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -356
# %op49 = fmul float %op46, %op48
	fld.s $ft0, $fp, -340
	fld.s $ft1, $fp, -356
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -360
# %op50 = getelementptr float, float* %arg0, i32  1
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op51 = load float, float* %op50
	ld.d $t0, $fp, -368
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -372
# %op52 = getelementptr float, float* %arg4, i32  2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# %op53 = load float, float* %op52
	ld.d $t0, $fp, -384
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -388
# %op54 = fmul float %op51, %op53
	fld.s $ft0, $fp, -372
	fld.s $ft1, $fp, -388
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -392
# %op55 = fadd float %op49, %op54
	fld.s $ft0, $fp, -360
	fld.s $ft1, $fp, -392
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -396
# %op56 = getelementptr float, float* %arg0, i32  2
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# %op57 = load float, float* %op56
	ld.d $t0, $fp, -408
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -412
# %op58 = getelementptr float, float* %arg5, i32  2
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# %op59 = load float, float* %op58
	ld.d $t0, $fp, -424
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -428
# %op60 = fmul float %op57, %op59
	fld.s $ft0, $fp, -412
	fld.s $ft1, $fp, -428
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -432
# %op61 = fadd float %op55, %op60
	fld.s $ft0, $fp, -396
	fld.s $ft1, $fp, -432
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -436
# %op62 = getelementptr float, float* %arg6, i32  2
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -448
# store float %op61, float* %op62
	ld.d $t0, $fp, -448
	fld.s $ft0, $fp, -436
	fst.s $ft0, $t0, 0
# %op63 = getelementptr float, float* %arg1, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -456
# %op64 = load float, float* %op63
	ld.d $t0, $fp, -456
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -460
# %op65 = getelementptr float, float* %arg3, i32  0
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# %op66 = load float, float* %op65
	ld.d $t0, $fp, -472
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -476
# %op67 = fmul float %op64, %op66
	fld.s $ft0, $fp, -460
	fld.s $ft1, $fp, -476
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -480
# %op68 = getelementptr float, float* %arg1, i32  1
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -488
# %op69 = load float, float* %op68
	ld.d $t0, $fp, -488
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -492
# %op70 = getelementptr float, float* %arg4, i32  0
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op71 = load float, float* %op70
	ld.d $t0, $fp, -504
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -508
# %op72 = fmul float %op69, %op71
	fld.s $ft0, $fp, -492
	fld.s $ft1, $fp, -508
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -512
# %op73 = fadd float %op67, %op72
	fld.s $ft0, $fp, -480
	fld.s $ft1, $fp, -512
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -516
# %op74 = getelementptr float, float* %arg1, i32  2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -528
# %op75 = load float, float* %op74
	ld.d $t0, $fp, -528
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -532
# %op76 = getelementptr float, float* %arg5, i32  0
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op77 = load float, float* %op76
	ld.d $t0, $fp, -544
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -548
# %op78 = fmul float %op75, %op77
	fld.s $ft0, $fp, -532
	fld.s $ft1, $fp, -548
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -552
# %op79 = fadd float %op73, %op78
	fld.s $ft0, $fp, -516
	fld.s $ft1, $fp, -552
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -556
# %op80 = getelementptr float, float* %arg7, i32  0
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# store float %op79, float* %op80
	ld.d $t0, $fp, -568
	fld.s $ft0, $fp, -556
	fst.s $ft0, $t0, 0
# %op81 = getelementptr float, float* %arg1, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -576
# %op82 = load float, float* %op81
	ld.d $t0, $fp, -576
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -580
# %op83 = getelementptr float, float* %arg3, i32  1
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -592
# %op84 = load float, float* %op83
	ld.d $t0, $fp, -592
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -596
# %op85 = fmul float %op82, %op84
	fld.s $ft0, $fp, -580
	fld.s $ft1, $fp, -596
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -600
# %op86 = getelementptr float, float* %arg1, i32  1
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -608
# %op87 = load float, float* %op86
	ld.d $t0, $fp, -608
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -612
# %op88 = getelementptr float, float* %arg4, i32  1
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -624
# %op89 = load float, float* %op88
	ld.d $t0, $fp, -624
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -628
# %op90 = fmul float %op87, %op89
	fld.s $ft0, $fp, -612
	fld.s $ft1, $fp, -628
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -632
# %op91 = fadd float %op85, %op90
	fld.s $ft0, $fp, -600
	fld.s $ft1, $fp, -632
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -636
# %op92 = getelementptr float, float* %arg1, i32  2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -648
# %op93 = load float, float* %op92
	ld.d $t0, $fp, -648
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -652
# %op94 = getelementptr float, float* %arg5, i32  1
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -664
# %op95 = load float, float* %op94
	ld.d $t0, $fp, -664
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -668
# %op96 = fmul float %op93, %op95
	fld.s $ft0, $fp, -652
	fld.s $ft1, $fp, -668
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -672
# %op97 = fadd float %op91, %op96
	fld.s $ft0, $fp, -636
	fld.s $ft1, $fp, -672
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -676
# %op98 = getelementptr float, float* %arg7, i32  1
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -688
# store float %op97, float* %op98
	ld.d $t0, $fp, -688
	fld.s $ft0, $fp, -676
	fst.s $ft0, $t0, 0
# %op99 = getelementptr float, float* %arg1, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -696
# %op100 = load float, float* %op99
	ld.d $t0, $fp, -696
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -700
# %op101 = getelementptr float, float* %arg3, i32  2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -712
# %op102 = load float, float* %op101
	ld.d $t0, $fp, -712
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -716
# %op103 = fmul float %op100, %op102
	fld.s $ft0, $fp, -700
	fld.s $ft1, $fp, -716
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -720
# %op104 = getelementptr float, float* %arg1, i32  1
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -728
# %op105 = load float, float* %op104
	ld.d $t0, $fp, -728
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -732
# %op106 = getelementptr float, float* %arg4, i32  2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -744
# %op107 = load float, float* %op106
	ld.d $t0, $fp, -744
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -748
# %op108 = fmul float %op105, %op107
	fld.s $ft0, $fp, -732
	fld.s $ft1, $fp, -748
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -752
# %op109 = fadd float %op103, %op108
	fld.s $ft0, $fp, -720
	fld.s $ft1, $fp, -752
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -756
# %op110 = getelementptr float, float* %arg1, i32  2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -768
# %op111 = load float, float* %op110
	ld.d $t0, $fp, -768
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -772
# %op112 = getelementptr float, float* %arg5, i32  2
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -784
# %op113 = load float, float* %op112
	ld.d $t0, $fp, -784
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -788
# %op114 = fmul float %op111, %op113
	fld.s $ft0, $fp, -772
	fld.s $ft1, $fp, -788
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -792
# %op115 = fadd float %op109, %op114
	fld.s $ft0, $fp, -756
	fld.s $ft1, $fp, -792
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -796
# %op116 = getelementptr float, float* %arg7, i32  2
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -808
# store float %op115, float* %op116
	ld.d $t0, $fp, -808
	fld.s $ft0, $fp, -796
	fst.s $ft0, $t0, 0
# %op117 = getelementptr float, float* %arg2, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -816
# %op118 = load float, float* %op117
	ld.d $t0, $fp, -816
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -820
# %op119 = getelementptr float, float* %arg3, i32  0
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -832
# %op120 = load float, float* %op119
	ld.d $t0, $fp, -832
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -836
# %op121 = fmul float %op118, %op120
	fld.s $ft0, $fp, -820
	fld.s $ft1, $fp, -836
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -840
# %op122 = getelementptr float, float* %arg2, i32  1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -848
# %op123 = load float, float* %op122
	ld.d $t0, $fp, -848
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -852
# %op124 = getelementptr float, float* %arg4, i32  0
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -864
# %op125 = load float, float* %op124
	ld.d $t0, $fp, -864
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -868
# %op126 = fmul float %op123, %op125
	fld.s $ft0, $fp, -852
	fld.s $ft1, $fp, -868
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -872
# %op127 = fadd float %op121, %op126
	fld.s $ft0, $fp, -840
	fld.s $ft1, $fp, -872
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -876
# %op128 = getelementptr float, float* %arg2, i32  2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -888
# %op129 = load float, float* %op128
	ld.d $t0, $fp, -888
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -892
# %op130 = getelementptr float, float* %arg5, i32  0
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -904
# %op131 = load float, float* %op130
	ld.d $t0, $fp, -904
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -908
# %op132 = fmul float %op129, %op131
	fld.s $ft0, $fp, -892
	fld.s $ft1, $fp, -908
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -912
# %op133 = fadd float %op127, %op132
	fld.s $ft0, $fp, -876
	fld.s $ft1, $fp, -912
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -916
# %op134 = getelementptr float, float* %arg8, i32  0
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -928
# store float %op133, float* %op134
	ld.d $t0, $fp, -928
	fld.s $ft0, $fp, -916
	fst.s $ft0, $t0, 0
# %op135 = getelementptr float, float* %arg2, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -936
# %op136 = load float, float* %op135
	ld.d $t0, $fp, -936
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -940
# %op137 = getelementptr float, float* %arg3, i32  1
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# %op138 = load float, float* %op137
	ld.d $t0, $fp, -952
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -956
# %op139 = fmul float %op136, %op138
	fld.s $ft0, $fp, -940
	fld.s $ft1, $fp, -956
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -960
# %op140 = getelementptr float, float* %arg2, i32  1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -968
# %op141 = load float, float* %op140
	ld.d $t0, $fp, -968
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -972
# %op142 = getelementptr float, float* %arg4, i32  1
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -984
# %op143 = load float, float* %op142
	ld.d $t0, $fp, -984
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -988
# %op144 = fmul float %op141, %op143
	fld.s $ft0, $fp, -972
	fld.s $ft1, $fp, -988
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -992
# %op145 = fadd float %op139, %op144
	fld.s $ft0, $fp, -960
	fld.s $ft1, $fp, -992
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -996
# %op146 = getelementptr float, float* %arg2, i32  2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1008
# %op147 = load float, float* %op146
	ld.d $t0, $fp, -1008
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1012
# %op148 = getelementptr float, float* %arg5, i32  1
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1024
# %op149 = load float, float* %op148
	ld.d $t0, $fp, -1024
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1028
# %op150 = fmul float %op147, %op149
	fld.s $ft0, $fp, -1012
	fld.s $ft1, $fp, -1028
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1032
# %op151 = fadd float %op145, %op150
	fld.s $ft0, $fp, -996
	fld.s $ft1, $fp, -1032
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1036
# %op152 = getelementptr float, float* %arg8, i32  1
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1048
# store float %op151, float* %op152
	ld.d $t0, $fp, -1048
	fld.s $ft0, $fp, -1036
	fst.s $ft0, $t0, 0
# %op153 = getelementptr float, float* %arg2, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1056
# %op154 = load float, float* %op153
	ld.d $t0, $fp, -1056
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1060
# %op155 = getelementptr float, float* %arg3, i32  2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1072
# %op156 = load float, float* %op155
	ld.d $t0, $fp, -1072
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1076
# %op157 = fmul float %op154, %op156
	fld.s $ft0, $fp, -1060
	fld.s $ft1, $fp, -1076
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1080
# %op158 = getelementptr float, float* %arg2, i32  1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1088
# %op159 = load float, float* %op158
	ld.d $t0, $fp, -1088
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1092
# %op160 = getelementptr float, float* %arg4, i32  2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1104
# %op161 = load float, float* %op160
	ld.d $t0, $fp, -1104
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1108
# %op162 = fmul float %op159, %op161
	fld.s $ft0, $fp, -1092
	fld.s $ft1, $fp, -1108
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1112
# %op163 = fadd float %op157, %op162
	fld.s $ft0, $fp, -1080
	fld.s $ft1, $fp, -1112
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1116
# %op164 = getelementptr float, float* %arg2, i32  2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1128
# %op165 = load float, float* %op164
	ld.d $t0, $fp, -1128
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1132
# %op166 = getelementptr float, float* %arg5, i32  2
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1144
# %op167 = load float, float* %op166
	ld.d $t0, $fp, -1144
	fld.s $ft0, $t0, 0
	fst.s $ft0, $fp, -1148
# %op168 = fmul float %op165, %op167
	fld.s $ft0, $fp, -1132
	fld.s $ft1, $fp, -1148
	fmul.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1152
# %op169 = fadd float %op163, %op168
	fld.s $ft0, $fp, -1116
	fld.s $ft1, $fp, -1152
	fadd.s $ft2, $ft0, $ft1
	fst.s $ft2, $fp, -1156
# %op170 = getelementptr float, float* %arg8, i32  2
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 2
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1168
# store float %op169, float* %op170
	ld.d $t0, $fp, -1168
	fld.s $ft0, $fp, -1156
	fst.s $ft0, $t0, 0
# ret i32  0
	addi.w $a0, $zero, 0
	b mul_ret
mul_ret:
	addi.d $sp, $sp, 1168
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
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
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
# %op39 = call i32  @mul(float* %op30, float* %op31, float* %op32, float* %op33, float* %op34, float* %op35, float* %op36, float* %op37, float* %op38)
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
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
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
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
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
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
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
