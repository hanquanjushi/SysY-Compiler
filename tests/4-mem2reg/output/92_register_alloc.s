# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a1
	.data
	.type a1, @object
	.size a1, 4
a1:
	.word 1
	.globl a2
	.data
	.type a2, @object
	.size a2, 4
a2:
	.word 2
	.globl a3
	.data
	.type a3, @object
	.size a3, 4
a3:
	.word 3
	.globl a4
	.data
	.type a4, @object
	.size a4, 4
a4:
	.word 4
	.globl a5
	.data
	.type a5, @object
	.size a5, 4
a5:
	.word 5
	.globl a6
	.data
	.type a6, @object
	.size a6, 4
a6:
	.word 6
	.globl a7
	.data
	.type a7, @object
	.size a7, 4
a7:
	.word 7
	.globl a8
	.data
	.type a8, @object
	.size a8, 4
a8:
	.word 8
	.globl a9
	.data
	.type a9, @object
	.size a9, 4
a9:
	.word 9
	.globl a10
	.data
	.type a10, @object
	.size a10, 4
a10:
	.word 10
	.globl a11
	.data
	.type a11, @object
	.size a11, 4
a11:
	.word 11
	.globl a12
	.data
	.type a12, @object
	.size a12, 4
a12:
	.word 12
	.globl a13
	.data
	.type a13, @object
	.size a13, 4
a13:
	.word 13
	.globl a14
	.data
	.type a14, @object
	.size a14, 4
a14:
	.word 14
	.globl a15
	.data
	.type a15, @object
	.size a15, 4
a15:
	.word 15
	.globl a16
	.data
	.type a16, @object
	.size a16, 4
a16:
	.word 16
	.globl a17
	.data
	.type a17, @object
	.size a17, 4
a17:
	.word 1
	.globl a18
	.data
	.type a18, @object
	.size a18, 4
a18:
	.word 2
	.globl a19
	.data
	.type a19, @object
	.size a19, 4
a19:
	.word 3
	.globl a20
	.data
	.type a20, @object
	.size a20, 4
a20:
	.word 4
	.globl a21
	.data
	.type a21, @object
	.size a21, 4
a21:
	.word 5
	.globl a22
	.data
	.type a22, @object
	.size a22, 4
a22:
	.word 6
	.globl a23
	.data
	.type a23, @object
	.size a23, 4
a23:
	.word 7
	.globl a24
	.data
	.type a24, @object
	.size a24, 4
a24:
	.word 8
	.globl a25
	.data
	.type a25, @object
	.size a25, 4
a25:
	.word 9
	.globl a26
	.data
	.type a26, @object
	.size a26, 4
a26:
	.word 10
	.globl a27
	.data
	.type a27, @object
	.size a27, 4
a27:
	.word 11
	.globl a28
	.data
	.type a28, @object
	.size a28, 4
a28:
	.word 12
	.globl a29
	.data
	.type a29, @object
	.size a29, 4
a29:
	.word 13
	.globl a30
	.data
	.type a30, @object
	.size a30, 4
a30:
	.word 14
	.globl a31
	.data
	.type a31, @object
	.size a31, 4
a31:
	.word 15
	.globl a32
	.data
	.type a32, @object
	.size a32, 4
a32:
	.word 16
	.text
	.globl func
	.type func, @function
func:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1168
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func_label_entry:
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -28
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# %op6 = add i32  1, %op2
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op7 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op8 = add i32  %op6, %op7
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -48
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = add i32  2, %op3
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -32
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op10 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = add i32  %op9, %op10
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op12 = add i32  3, %op4
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op13 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op14 = add i32  %op12, %op13
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -72
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op15 = add i32  4, %op5
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -40
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op16 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op17 = add i32  %op15, %op16
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op18 = add i32  1, %op8
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op19 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op20 = add i32  %op18, %op19
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op21 = add i32  2, %op11
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -64
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op22 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op23 = add i32  %op21, %op22
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -108
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op24 = add i32  3, %op14
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op25 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op26 = add i32  %op24, %op25
	ld.w $t0, $fp, -116
	ld.w $t1, $fp, -120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op27 = add i32  4, %op17
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -88
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op28 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op29 = add i32  %op27, %op28
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -132
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op30 = add i32  1, %op20
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op31 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op32 = add i32  %op30, %op31
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op33 = add i32  2, %op23
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op34 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op35 = add i32  %op33, %op34
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op36 = add i32  3, %op26
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op37 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op38 = add i32  %op36, %op37
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op39 = add i32  4, %op29
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op40 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op41 = add i32  %op39, %op40
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op42 = add i32  1, %op32
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op43 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op44 = add i32  %op42, %op43
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -192
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op45 = add i32  2, %op35
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -160
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# %op46 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op47 = add i32  %op45, %op46
	ld.w $t0, $fp, -200
	ld.w $t1, $fp, -204
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op48 = add i32  3, %op38
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -172
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op49 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op50 = add i32  %op48, %op49
	ld.w $t0, $fp, -212
	ld.w $t1, $fp, -216
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op51 = add i32  4, %op41
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -184
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# %op52 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op53 = add i32  %op51, %op52
	ld.w $t0, $fp, -224
	ld.w $t1, $fp, -228
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op54 = add i32  1, %op44
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# %op55 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op56 = add i32  %op54, %op55
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -240
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# %op57 = add i32  2, %op47
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -208
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op58 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op59 = add i32  %op57, %op58
	ld.w $t0, $fp, -248
	ld.w $t1, $fp, -252
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# %op60 = add i32  3, %op50
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -220
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# %op61 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op62 = add i32  %op60, %op61
	ld.w $t0, $fp, -260
	ld.w $t1, $fp, -264
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# %op63 = add i32  4, %op53
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -232
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op64 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op65 = add i32  %op63, %op64
	ld.w $t0, $fp, -272
	ld.w $t1, $fp, -276
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# %op66 = add i32  1, %op56
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -244
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# %op67 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op68 = add i32  %op66, %op67
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -288
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op69 = add i32  2, %op59
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -256
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# %op70 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op71 = add i32  %op69, %op70
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op72 = add i32  3, %op62
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -268
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -308
# %op73 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op74 = add i32  %op72, %op73
	ld.w $t0, $fp, -308
	ld.w $t1, $fp, -312
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# %op75 = add i32  4, %op65
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -280
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op76 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op77 = add i32  %op75, %op76
	ld.w $t0, $fp, -320
	ld.w $t1, $fp, -324
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op78 = add i32  1, %op68
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -332
# %op79 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op80 = add i32  %op78, %op79
	ld.w $t0, $fp, -332
	ld.w $t1, $fp, -336
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op81 = add i32  2, %op71
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -304
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# %op82 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op83 = add i32  %op81, %op82
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op84 = add i32  3, %op74
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -356
# %op85 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op86 = add i32  %op84, %op85
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -360
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op87 = add i32  4, %op77
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -328
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op88 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op89 = add i32  %op87, %op88
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op90 = sub i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# %op91 = add i32  %op90, 10
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 10
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op92 = add i32  1, %op80
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -340
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -388
# %op93 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op94 = add i32  %op92, %op93
	ld.w $t0, $fp, -388
	ld.w $t1, $fp, -392
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -396
# %op95 = add i32  2, %op83
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -352
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op96 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op97 = add i32  %op95, %op96
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op98 = add i32  3, %op86
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -412
# %op99 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op100 = add i32  %op98, %op99
	ld.w $t0, $fp, -412
	ld.w $t1, $fp, -416
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -420
# %op101 = add i32  4, %op89
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -376
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# %op102 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op103 = add i32  %op101, %op102
	ld.w $t0, $fp, -424
	ld.w $t1, $fp, -428
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op104 = add i32  1, %op68
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -436
# %op105 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op106 = add i32  %op104, %op105
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -440
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -444
# %op107 = add i32  2, %op71
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -304
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op108 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op109 = add i32  %op107, %op108
	ld.w $t0, $fp, -448
	ld.w $t1, $fp, -452
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# %op110 = add i32  3, %op74
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -460
# %op111 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op112 = add i32  %op110, %op111
	ld.w $t0, $fp, -460
	ld.w $t1, $fp, -464
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# %op113 = add i32  4, %op77
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -328
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -472
# %op114 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op115 = add i32  %op113, %op114
	ld.w $t0, $fp, -472
	ld.w $t1, $fp, -476
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# %op116 = add i32  1, %op56
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -244
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -484
# %op117 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op118 = add i32  %op116, %op117
	ld.w $t0, $fp, -484
	ld.w $t1, $fp, -488
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -492
# %op119 = add i32  2, %op59
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -256
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -496
# %op120 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op121 = add i32  %op119, %op120
	ld.w $t0, $fp, -496
	ld.w $t1, $fp, -500
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# %op122 = add i32  3, %op62
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -268
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -508
# %op123 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op124 = add i32  %op122, %op123
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -512
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# %op125 = add i32  4, %op65
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -280
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -520
# %op126 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op127 = add i32  %op125, %op126
	ld.w $t0, $fp, -520
	ld.w $t1, $fp, -524
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -528
# %op128 = add i32  1, %op44
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -532
# %op129 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op130 = add i32  %op128, %op129
	ld.w $t0, $fp, -532
	ld.w $t1, $fp, -536
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# %op131 = add i32  2, %op47
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -208
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -544
# %op132 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op133 = add i32  %op131, %op132
	ld.w $t0, $fp, -544
	ld.w $t1, $fp, -548
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -552
# %op134 = add i32  3, %op50
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -220
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -556
# %op135 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op136 = add i32  %op134, %op135
	ld.w $t0, $fp, -556
	ld.w $t1, $fp, -560
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -564
# %op137 = add i32  4, %op53
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -232
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -568
# %op138 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op139 = add i32  %op137, %op138
	ld.w $t0, $fp, -568
	ld.w $t1, $fp, -572
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# %op140 = add i32  1, %op32
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -580
# %op141 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -584
# %op142 = add i32  %op140, %op141
	ld.w $t0, $fp, -580
	ld.w $t1, $fp, -584
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -588
# %op143 = add i32  2, %op35
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -160
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -592
# %op144 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op145 = add i32  %op143, %op144
	ld.w $t0, $fp, -592
	ld.w $t1, $fp, -596
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -600
# %op146 = add i32  3, %op38
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -172
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -604
# %op147 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op148 = add i32  %op146, %op147
	ld.w $t0, $fp, -604
	ld.w $t1, $fp, -608
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -612
# %op149 = add i32  4, %op41
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -184
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# %op150 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op151 = add i32  %op149, %op150
	ld.w $t0, $fp, -616
	ld.w $t1, $fp, -620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op152 = add i32  1, %op20
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -628
# %op153 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op154 = add i32  %op152, %op153
	ld.w $t0, $fp, -628
	ld.w $t1, $fp, -632
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -636
# %op155 = add i32  2, %op23
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op156 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op157 = add i32  %op155, %op156
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -644
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# %op158 = add i32  3, %op26
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -652
# %op159 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op160 = add i32  %op158, %op159
	ld.w $t0, $fp, -652
	ld.w $t1, $fp, -656
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -660
# %op161 = add i32  4, %op29
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# %op162 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op163 = add i32  %op161, %op162
	ld.w $t0, $fp, -664
	ld.w $t1, $fp, -668
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# %op164 = add i32  1, %op8
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -676
# %op165 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op166 = add i32  %op164, %op165
	ld.w $t0, $fp, -676
	ld.w $t1, $fp, -680
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# %op167 = add i32  2, %op11
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -64
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -688
# %op168 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op169 = add i32  %op167, %op168
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op170 = add i32  3, %op14
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -700
# %op171 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -704
# %op172 = add i32  %op170, %op171
	ld.w $t0, $fp, -700
	ld.w $t1, $fp, -704
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -708
# %op173 = add i32  4, %op17
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -88
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# %op174 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op175 = add i32  %op173, %op174
	ld.w $t0, $fp, -712
	ld.w $t1, $fp, -716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# %op176 = add i32  1, %op2
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -724
# %op177 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -728
# %op178 = add i32  %op176, %op177
	ld.w $t0, $fp, -724
	ld.w $t1, $fp, -728
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -732
# %op179 = add i32  2, %op3
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -32
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# %op180 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op181 = add i32  %op179, %op180
	ld.w $t0, $fp, -736
	ld.w $t1, $fp, -740
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# %op182 = add i32  3, %op4
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -748
# %op183 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op184 = add i32  %op182, %op183
	ld.w $t0, $fp, -748
	ld.w $t1, $fp, -752
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# %op185 = add i32  4, %op5
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -40
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -760
# %op186 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op187 = add i32  %op185, %op186
	ld.w $t0, $fp, -760
	ld.w $t1, $fp, -764
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# %op188 = add i32  %op91, %op2
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -772
# %op189 = add i32  %op188, %op3
	ld.w $t0, $fp, -772
	ld.w $t1, $fp, -32
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -776
# %op190 = add i32  %op189, %op4
	ld.w $t0, $fp, -776
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -780
# %op191 = add i32  %op190, %op5
	ld.w $t0, $fp, -780
	ld.w $t1, $fp, -40
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -784
# %op192 = sub i32  %op191, %op178
	ld.w $t0, $fp, -784
	ld.w $t1, $fp, -732
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -788
# %op193 = sub i32  %op192, %op181
	ld.w $t0, $fp, -788
	ld.w $t1, $fp, -744
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -792
# %op194 = sub i32  %op193, %op184
	ld.w $t0, $fp, -792
	ld.w $t1, $fp, -756
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -796
# %op195 = sub i32  %op194, %op187
	ld.w $t0, $fp, -796
	ld.w $t1, $fp, -768
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op196 = add i32  %op195, %op166
	ld.w $t0, $fp, -800
	ld.w $t1, $fp, -684
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -804
# %op197 = add i32  %op196, %op169
	ld.w $t0, $fp, -804
	ld.w $t1, $fp, -696
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -808
# %op198 = add i32  %op197, %op172
	ld.w $t0, $fp, -808
	ld.w $t1, $fp, -708
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -812
# %op199 = add i32  %op198, %op175
	ld.w $t0, $fp, -812
	ld.w $t1, $fp, -720
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -816
# %op200 = sub i32  %op199, %op154
	ld.w $t0, $fp, -816
	ld.w $t1, $fp, -636
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -820
# %op201 = sub i32  %op200, %op157
	ld.w $t0, $fp, -820
	ld.w $t1, $fp, -648
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -824
# %op202 = sub i32  %op201, %op160
	ld.w $t0, $fp, -824
	ld.w $t1, $fp, -660
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -828
# %op203 = sub i32  %op202, %op163
	ld.w $t0, $fp, -828
	ld.w $t1, $fp, -672
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -832
# %op204 = add i32  %op203, %op142
	ld.w $t0, $fp, -832
	ld.w $t1, $fp, -588
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -836
# %op205 = add i32  %op204, %op145
	ld.w $t0, $fp, -836
	ld.w $t1, $fp, -600
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -840
# %op206 = add i32  %op205, %op148
	ld.w $t0, $fp, -840
	ld.w $t1, $fp, -612
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -844
# %op207 = add i32  %op206, %op151
	ld.w $t0, $fp, -844
	ld.w $t1, $fp, -624
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -848
# %op208 = sub i32  %op207, %op130
	ld.w $t0, $fp, -848
	ld.w $t1, $fp, -540
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -852
# %op209 = sub i32  %op208, %op133
	ld.w $t0, $fp, -852
	ld.w $t1, $fp, -552
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -856
# %op210 = sub i32  %op209, %op136
	ld.w $t0, $fp, -856
	ld.w $t1, $fp, -564
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# %op211 = sub i32  %op210, %op139
	ld.w $t0, $fp, -860
	ld.w $t1, $fp, -576
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -864
# %op212 = add i32  %op211, %op118
	ld.w $t0, $fp, -864
	ld.w $t1, $fp, -492
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -868
# %op213 = add i32  %op212, %op121
	ld.w $t0, $fp, -868
	ld.w $t1, $fp, -504
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -872
# %op214 = add i32  %op213, %op124
	ld.w $t0, $fp, -872
	ld.w $t1, $fp, -516
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -876
# %op215 = add i32  %op214, %op127
	ld.w $t0, $fp, -876
	ld.w $t1, $fp, -528
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -880
# %op216 = sub i32  %op215, %op106
	ld.w $t0, $fp, -880
	ld.w $t1, $fp, -444
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -884
# %op217 = sub i32  %op216, %op109
	ld.w $t0, $fp, -884
	ld.w $t1, $fp, -456
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -888
# %op218 = sub i32  %op217, %op112
	ld.w $t0, $fp, -888
	ld.w $t1, $fp, -468
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -892
# %op219 = sub i32  %op218, %op115
	ld.w $t0, $fp, -892
	ld.w $t1, $fp, -480
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -896
# %op220 = add i32  %op219, %op94
	ld.w $t0, $fp, -896
	ld.w $t1, $fp, -396
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# %op221 = add i32  %op220, %op97
	ld.w $t0, $fp, -900
	ld.w $t1, $fp, -408
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# %op222 = add i32  %op221, %op100
	ld.w $t0, $fp, -904
	ld.w $t1, $fp, -420
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -908
# %op223 = add i32  %op222, %op103
	ld.w $t0, $fp, -908
	ld.w $t1, $fp, -432
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -912
# %op224 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -916
# %op225 = add i32  %op223, %op224
	ld.w $t0, $fp, -912
	ld.w $t1, $fp, -916
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -920
# %op226 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op227 = sub i32  %op225, %op226
	ld.w $t0, $fp, -920
	ld.w $t1, $fp, -924
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -928
# %op228 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op229 = add i32  %op227, %op228
	ld.w $t0, $fp, -928
	ld.w $t1, $fp, -932
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# %op230 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op231 = sub i32  %op229, %op230
	ld.w $t0, $fp, -936
	ld.w $t1, $fp, -940
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -944
# %op232 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -948
# %op233 = add i32  %op231, %op232
	ld.w $t0, $fp, -944
	ld.w $t1, $fp, -948
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -952
# %op234 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op235 = sub i32  %op233, %op234
	ld.w $t0, $fp, -952
	ld.w $t1, $fp, -956
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -960
# %op236 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op237 = add i32  %op235, %op236
	ld.w $t0, $fp, -960
	ld.w $t1, $fp, -964
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -968
# %op238 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op239 = sub i32  %op237, %op238
	ld.w $t0, $fp, -968
	ld.w $t1, $fp, -972
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# %op240 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# %op241 = add i32  %op239, %op240
	ld.w $t0, $fp, -976
	ld.w $t1, $fp, -980
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -984
# %op242 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op243 = sub i32  %op241, %op242
	ld.w $t0, $fp, -984
	ld.w $t1, $fp, -988
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -992
# %op244 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op245 = add i32  %op243, %op244
	ld.w $t0, $fp, -992
	ld.w $t1, $fp, -996
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1000
# %op246 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op247 = sub i32  %op245, %op246
	ld.w $t0, $fp, -1000
	ld.w $t1, $fp, -1004
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1008
# %op248 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op249 = add i32  %op247, %op248
	ld.w $t0, $fp, -1008
	ld.w $t1, $fp, -1012
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1016
# %op250 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op251 = sub i32  %op249, %op250
	ld.w $t0, $fp, -1016
	ld.w $t1, $fp, -1020
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1024
# %op252 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op253 = add i32  %op251, %op252
	ld.w $t0, $fp, -1024
	ld.w $t1, $fp, -1028
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1032
# %op254 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1036
# %op255 = sub i32  %op253, %op254
	ld.w $t0, $fp, -1032
	ld.w $t1, $fp, -1036
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1040
# %op256 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1044
# %op257 = add i32  %op255, %op256
	ld.w $t0, $fp, -1040
	ld.w $t1, $fp, -1044
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1048
# %op258 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op259 = sub i32  %op257, %op258
	ld.w $t0, $fp, -1048
	ld.w $t1, $fp, -1052
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1056
# %op260 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1060
# %op261 = add i32  %op259, %op260
	ld.w $t0, $fp, -1056
	ld.w $t1, $fp, -1060
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1064
# %op262 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op263 = sub i32  %op261, %op262
	ld.w $t0, $fp, -1064
	ld.w $t1, $fp, -1068
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1072
# %op264 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1076
# %op265 = add i32  %op263, %op264
	ld.w $t0, $fp, -1072
	ld.w $t1, $fp, -1076
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1080
# %op266 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op267 = sub i32  %op265, %op266
	ld.w $t0, $fp, -1080
	ld.w $t1, $fp, -1084
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1088
# %op268 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1092
# %op269 = add i32  %op267, %op268
	ld.w $t0, $fp, -1088
	ld.w $t1, $fp, -1092
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1096
# %op270 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1100
# %op271 = sub i32  %op269, %op270
	ld.w $t0, $fp, -1096
	ld.w $t1, $fp, -1100
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1104
# %op272 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1108
# %op273 = add i32  %op271, %op272
	ld.w $t0, $fp, -1104
	ld.w $t1, $fp, -1108
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1112
# %op274 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# %op275 = sub i32  %op273, %op274
	ld.w $t0, $fp, -1112
	ld.w $t1, $fp, -1116
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1120
# %op276 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1124
# %op277 = add i32  %op275, %op276
	ld.w $t0, $fp, -1120
	ld.w $t1, $fp, -1124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1128
# %op278 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op279 = sub i32  %op277, %op278
	ld.w $t0, $fp, -1128
	ld.w $t1, $fp, -1132
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1136
# %op280 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1140
# %op281 = add i32  %op279, %op280
	ld.w $t0, $fp, -1136
	ld.w $t1, $fp, -1140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1144
# %op282 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op283 = sub i32  %op281, %op282
	ld.w $t0, $fp, -1144
	ld.w $t1, $fp, -1148
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1152
# %op284 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1156
# %op285 = add i32  %op283, %op284
	ld.w $t0, $fp, -1152
	ld.w $t1, $fp, -1156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1160
# %op286 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1164
# %op287 = sub i32  %op285, %op286
	ld.w $t0, $fp, -1160
	ld.w $t1, $fp, -1164
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1168
# ret i32  %op287
	ld.w $a0, $fp, -1168
	b func_ret
func_ret:
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
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# %op1 = add i32  %op0, 18
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 18
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# %op2 = call i32  @func(i32  %op0, i32  %op1)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	bl func
	st.w $a0, $fp, -28
# call void @putint(i32  %op2)
	ld.w $a0, $fp, -28
	bl putint
# ret i32  %op2
	ld.w $a0, $fp, -28
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
