# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl maxn
	.data
	.type maxn, @object
	.size maxn, 4
maxn:
	.word 18
	.globl mod
	.data
	.type mod, @object
	.size mod, 4
mod:
	.word 1000000007
	.globl dp
	.type dp, @object
	.size dp, 52907904
dp:
	.space 52907904
	.globl list
	.type list, @object
	.size list, 800
list:
	.space 800
	.globl cns
	.type cns, @object
	.size cns, 80
cns:
	.space 80
	.text
	.globl equal
	.type equal, @function
equal:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.equal_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp eq i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label10
	ld.b $t0, $fp, -69
	bnez $t0, .equal_label9
	b .equal_label10
.equal_label9:
# ret i32  1
	addi.w $a0, $zero, 1
	b equal_ret
.equal_label10:
# ret i32  0
	addi.w $a0, $zero, 0
	b equal_ret
equal_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -976
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
.dfs_label_entry:
# %op6 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg0, i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  %arg1, i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# store i32  %arg2, i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op9 = alloca i32 
	addi.d $t1, $fp, -100
	st.d $t1, $fp, -96
# store i32  %arg3, i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	addi.d $t1, $fp, -116
	st.d $t1, $fp, -112
# store i32  %arg4, i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -132
	st.d $t1, $fp, -128
# store i32  %arg5, i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op13 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op12
	la.local $t0, dp
	ld.w $t1, $fp, -136
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# %op14 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op15 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op13, i32  0, i32  %op14
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -148
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op16 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op17 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op15, i32  0, i32  %op16
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -164
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op18 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op19 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op17, i32  0, i32  %op18
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op20 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op21 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op19, i32  0, i32  %op20
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op22 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op23 = getelementptr [7 x i32 ], [7 x i32 ]* %op21, i32  0, i32  %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op25 = icmp ne i32  %op24, -1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -229
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -229
	st.w $t0, $fp, -236
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -237
# br i1  %op27, label %label28, label %label42
	ld.b $t0, $fp, -237
	bnez $t0, .dfs_label28
	b .dfs_label42
.dfs_label28:
# %op29 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op30 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op29
	la.local $t0, dp
	ld.w $t1, $fp, -244
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op31 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op32 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op30, i32  0, i32  %op31
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -260
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# %op33 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op34 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op32, i32  0, i32  %op33
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -276
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# %op35 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op36 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op34, i32  0, i32  %op35
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# %op37 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op38 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op36, i32  0, i32  %op37
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -308
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op39 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op40 = getelementptr [7 x i32 ], [7 x i32 ]* %op38, i32  0, i32  %op39
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# ret i32  %op41
	ld.w $a0, $fp, -340
	b dfs_ret
.dfs_label42:
# %op43 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op44 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op45 = add i32  %op43, %op44
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op46 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op47 = add i32  %op45, %op46
	ld.w $t0, $fp, -352
	ld.w $t1, $fp, -356
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op48 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op49 = add i32  %op47, %op48
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op50 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op51 = add i32  %op49, %op50
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op52 = icmp eq i32  %op51, 0
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -377
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -377
	st.w $t0, $fp, -384
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -385
# br i1  %op54, label %label55, label %label56
	ld.b $t0, $fp, -385
	bnez $t0, .dfs_label55
	b .dfs_label56
.dfs_label55:
# ret i32  1
	addi.w $a0, $zero, 1
	b dfs_ret
.dfs_label56:
# %op57 = alloca i32 
	addi.d $t1, $fp, -404
	st.d $t1, $fp, -400
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op59 = icmp ne i32  %op58, 0
	ld.w $t0, $fp, -408
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -409
# br i1  %op59, label %label60, label %label77
	ld.b $t0, $fp, -409
	bnez $t0, .dfs_label60
	b .dfs_label77
.dfs_label60:
# %op61 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op62 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op63 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op64 = call i32  @equal(i32  %op63, i32  2)
	ld.w $a0, $fp, -424
	addi.w $a1, $zero, 2
	bl equal
	st.w $a0, $fp, -428
# %op65 = sub i32  %op62, %op64
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -428
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op66 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op67 = sub i32  %op66, 1
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -440
# %op68 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op69 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op70 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op71 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op72 = call i32  @dfs(i32  %op67, i32  %op68, i32  %op69, i32  %op70, i32  %op71, i32  1)
	ld.w $a0, $fp, -440
	ld.w $a1, $fp, -444
	ld.w $a2, $fp, -448
	ld.w $a3, $fp, -452
	ld.w $a4, $fp, -456
	addi.w $a5, $zero, 1
	bl dfs
	st.w $a0, $fp, -460
# %op73 = mul i32  %op65, %op72
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -460
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# %op74 = add i32  %op61, %op73
	ld.w $t0, $fp, -416
	ld.w $t1, $fp, -464
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# %op75 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op76 = srem i32  %op74, %op75
	ld.w $t0, $fp, -468
	ld.w $t1, $fp, -472
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -476
# store i32  %op76, i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -476
	st.w $t1, $t0, 0
# br label %label77
	b .dfs_label77
.dfs_label77:
# %op78 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op79 = icmp ne i32  %op78, 0
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -481
# br i1  %op79, label %label80, label %label98
	ld.b $t0, $fp, -481
	bnez $t0, .dfs_label80
	b .dfs_label98
.dfs_label80:
# %op81 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op82 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op83 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op84 = call i32  @equal(i32  %op83, i32  3)
	ld.w $a0, $fp, -496
	addi.w $a1, $zero, 3
	bl equal
	st.w $a0, $fp, -500
# %op85 = sub i32  %op82, %op84
	ld.w $t0, $fp, -492
	ld.w $t1, $fp, -500
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# %op86 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op87 = add i32  %op86, 1
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -512
# %op88 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op89 = sub i32  %op88, 1
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -520
# %op90 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op91 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op92 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op93 = call i32  @dfs(i32  %op87, i32  %op89, i32  %op90, i32  %op91, i32  %op92, i32  2)
	ld.w $a0, $fp, -512
	ld.w $a1, $fp, -520
	ld.w $a2, $fp, -524
	ld.w $a3, $fp, -528
	ld.w $a4, $fp, -532
	addi.w $a5, $zero, 2
	bl dfs
	st.w $a0, $fp, -536
# %op94 = mul i32  %op85, %op93
	ld.w $t0, $fp, -504
	ld.w $t1, $fp, -536
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# %op95 = add i32  %op81, %op94
	ld.w $t0, $fp, -488
	ld.w $t1, $fp, -540
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -544
# %op96 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op97 = srem i32  %op95, %op96
	ld.w $t0, $fp, -544
	ld.w $t1, $fp, -548
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -552
# store i32  %op97, i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -552
	st.w $t1, $t0, 0
# br label %label98
	b .dfs_label98
.dfs_label98:
# %op99 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op100 = icmp ne i32  %op99, 0
	ld.w $t0, $fp, -556
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -557
# br i1  %op100, label %label101, label %label119
	ld.b $t0, $fp, -557
	bnez $t0, .dfs_label101
	b .dfs_label119
.dfs_label101:
# %op102 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op103 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op104 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op105 = call i32  @equal(i32  %op104, i32  4)
	ld.w $a0, $fp, -572
	addi.w $a1, $zero, 4
	bl equal
	st.w $a0, $fp, -576
# %op106 = sub i32  %op103, %op105
	ld.w $t0, $fp, -568
	ld.w $t1, $fp, -576
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -580
# %op107 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -584
# %op108 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op109 = add i32  %op108, 1
	ld.w $t0, $fp, -588
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -592
# %op110 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op111 = sub i32  %op110, 1
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -600
# %op112 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op113 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op114 = call i32  @dfs(i32  %op107, i32  %op109, i32  %op111, i32  %op112, i32  %op113, i32  3)
	ld.w $a0, $fp, -584
	ld.w $a1, $fp, -592
	ld.w $a2, $fp, -600
	ld.w $a3, $fp, -604
	ld.w $a4, $fp, -608
	addi.w $a5, $zero, 3
	bl dfs
	st.w $a0, $fp, -612
# %op115 = mul i32  %op106, %op114
	ld.w $t0, $fp, -580
	ld.w $t1, $fp, -612
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# %op116 = add i32  %op102, %op115
	ld.w $t0, $fp, -564
	ld.w $t1, $fp, -616
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -620
# %op117 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op118 = srem i32  %op116, %op117
	ld.w $t0, $fp, -620
	ld.w $t1, $fp, -624
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -628
# store i32  %op118, i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -628
	st.w $t1, $t0, 0
# br label %label119
	b .dfs_label119
.dfs_label119:
# %op120 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op121 = icmp ne i32  %op120, 0
	ld.w $t0, $fp, -632
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -633
# br i1  %op121, label %label122, label %label140
	ld.b $t0, $fp, -633
	bnez $t0, .dfs_label122
	b .dfs_label140
.dfs_label122:
# %op123 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -640
# %op124 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op125 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# %op126 = call i32  @equal(i32  %op125, i32  5)
	ld.w $a0, $fp, -648
	addi.w $a1, $zero, 5
	bl equal
	st.w $a0, $fp, -652
# %op127 = sub i32  %op124, %op126
	ld.w $t0, $fp, -644
	ld.w $t1, $fp, -652
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# %op128 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op129 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -664
# %op130 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op131 = add i32  %op130, 1
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# %op132 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op133 = sub i32  %op132, 1
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -680
# %op134 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op135 = call i32  @dfs(i32  %op128, i32  %op129, i32  %op131, i32  %op133, i32  %op134, i32  4)
	ld.w $a0, $fp, -660
	ld.w $a1, $fp, -664
	ld.w $a2, $fp, -672
	ld.w $a3, $fp, -680
	ld.w $a4, $fp, -684
	addi.w $a5, $zero, 4
	bl dfs
	st.w $a0, $fp, -688
# %op136 = mul i32  %op127, %op135
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -688
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -692
# %op137 = add i32  %op123, %op136
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op138 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op139 = srem i32  %op137, %op138
	ld.w $t0, $fp, -696
	ld.w $t1, $fp, -700
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# store i32  %op139, i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -704
	st.w $t1, $t0, 0
# br label %label140
	b .dfs_label140
.dfs_label140:
# %op141 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op142 = icmp ne i32  %op141, 0
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -709
# br i1  %op142, label %label143, label %label158
	ld.b $t0, $fp, -709
	bnez $t0, .dfs_label143
	b .dfs_label158
.dfs_label143:
# %op144 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op145 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -720
# %op146 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op147 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -728
# %op148 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op149 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op150 = add i32  %op149, 1
	ld.w $t0, $fp, -736
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -740
# %op151 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -744
# %op152 = sub i32  %op151, 1
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -748
# %op153 = call i32  @dfs(i32  %op146, i32  %op147, i32  %op148, i32  %op150, i32  %op152, i32  5)
	ld.w $a0, $fp, -724
	ld.w $a1, $fp, -728
	ld.w $a2, $fp, -732
	ld.w $a3, $fp, -740
	ld.w $a4, $fp, -748
	addi.w $a5, $zero, 5
	bl dfs
	st.w $a0, $fp, -752
# %op154 = mul i32  %op145, %op153
	ld.w $t0, $fp, -720
	ld.w $t1, $fp, -752
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# %op155 = add i32  %op144, %op154
	ld.w $t0, $fp, -716
	ld.w $t1, $fp, -756
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -760
# %op156 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op157 = srem i32  %op155, %op156
	ld.w $t0, $fp, -760
	ld.w $t1, $fp, -764
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# store i32  %op157, i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -768
	st.w $t1, $t0, 0
# br label %label158
	b .dfs_label158
.dfs_label158:
# %op159 = load i32 , i32 * %op57
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op160 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op161 = srem i32  %op159, %op160
	ld.w $t0, $fp, -772
	ld.w $t1, $fp, -776
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -780
# %op162 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# %op163 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op162
	la.local $t0, dp
	ld.w $t1, $fp, -784
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -792
# %op164 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op165 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op163, i32  0, i32  %op164
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -796
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -808
# %op166 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op167 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op165, i32  0, i32  %op166
	ld.d $t0, $fp, -808
	ld.w $t1, $fp, -812
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -824
# %op168 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op169 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op167, i32  0, i32  %op168
	ld.d $t0, $fp, -824
	ld.w $t1, $fp, -828
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -840
# %op170 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op171 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op169, i32  0, i32  %op170
	ld.d $t0, $fp, -840
	ld.w $t1, $fp, -844
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -856
# %op172 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# %op173 = getelementptr [7 x i32 ], [7 x i32 ]* %op171, i32  0, i32  %op172
	ld.d $t0, $fp, -856
	ld.w $t1, $fp, -860
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -872
# store i32  %op161, i32 * %op173
	ld.d $t0, $fp, -872
	ld.w $t1, $fp, -780
	st.w $t1, $t0, 0
# %op174 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op175 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op174
	la.local $t0, dp
	ld.w $t1, $fp, -876
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -888
# %op176 = load i32 , i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op177 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op175, i32  0, i32  %op176
	ld.d $t0, $fp, -888
	ld.w $t1, $fp, -892
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -904
# %op178 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op179 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op177, i32  0, i32  %op178
	ld.d $t0, $fp, -904
	ld.w $t1, $fp, -908
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -920
# %op180 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op181 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op179, i32  0, i32  %op180
	ld.d $t0, $fp, -920
	ld.w $t1, $fp, -924
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -936
# %op182 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op183 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op181, i32  0, i32  %op182
	ld.d $t0, $fp, -936
	ld.w $t1, $fp, -940
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -952
# %op184 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op185 = getelementptr [7 x i32 ], [7 x i32 ]* %op183, i32  0, i32  %op184
	ld.d $t0, $fp, -952
	ld.w $t1, $fp, -956
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -968
# %op186 = load i32 , i32 * %op185
	ld.d $t0, $fp, -968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# ret i32  %op186
	ld.w $a0, $fp, -972
	b dfs_ret
dfs_ret:
	addi.d $sp, $sp, 976
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -592
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = icmp slt i32  %op4, %op5
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	slt $t2, $t0, $t1
	st.b $t2, $fp, -53
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -61
	bnez $t0, .main_label9
	b .main_label11
.main_label9:
# %op10 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label11:
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label79
	b .main_label79
.main_label12:
# %op13 = load i32 , i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op14 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op15 = icmp slt i32  %op13, %op14
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -93
# br i1  %op17, label %label18, label %label20
	ld.b $t0, $fp, -93
	bnez $t0, .main_label18
	b .main_label20
.main_label18:
# %op19 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label23
	b .main_label23
.main_label20:
# %op21 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# store i32  %op22, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label23:
# %op24 = load i32 , i32 * %op19
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op25 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op26 = icmp slt i32  %op24, %op25
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	slt $t2, $t0, $t1
	st.b $t2, $fp, -125
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -133
# br i1  %op28, label %label29, label %label31
	ld.b $t0, $fp, -133
	bnez $t0, .main_label29
	b .main_label31
.main_label29:
# %op30 = alloca i32 
	addi.d $t1, $fp, -148
	st.d $t1, $fp, -144
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label34
	b .main_label34
.main_label31:
# %op32 = load i32 , i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op33, i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label34:
# %op35 = load i32 , i32 * %op30
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op36 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op37 = icmp slt i32  %op35, %op36
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -173
# br i1  %op39, label %label40, label %label42
	ld.b $t0, $fp, -173
	bnez $t0, .main_label40
	b .main_label42
.main_label40:
# %op41 = alloca i32 
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -184
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label45
	b .main_label45
.main_label42:
# %op43 = load i32 , i32 * %op19
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# store i32  %op44, i32 * %op19
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# br label %label23
	b .main_label23
.main_label45:
# %op46 = load i32 , i32 * %op41
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op47 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op48 = icmp slt i32  %op46, %op47
	ld.w $t0, $fp, -200
	ld.w $t1, $fp, -204
	slt $t2, $t0, $t1
	st.b $t2, $fp, -205
# %op49 = zext i1  %op48 to i32 
	ld.b $t0, $fp, -205
	st.w $t0, $fp, -212
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -213
# br i1  %op50, label %label51, label %label53
	ld.b $t0, $fp, -213
	bnez $t0, .main_label51
	b .main_label53
.main_label51:
# %op52 = alloca i32 
	addi.d $t1, $fp, -228
	st.d $t1, $fp, -224
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label56
	b .main_label56
.main_label53:
# %op54 = load i32 , i32 * %op30
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op55 = add i32  %op54, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op55, i32 * %op30
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# br label %label34
	b .main_label34
.main_label56:
# %op57 = load i32 , i32 * %op52
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op58 = icmp slt i32  %op57, 7
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 7
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -249
# br i1  %op60, label %label61, label %label76
	ld.b $t0, $fp, -249
	bnez $t0, .main_label61
	b .main_label76
.main_label61:
# %op62 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op63 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op62
	la.local $t0, dp
	ld.w $t1, $fp, -256
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op64 = load i32 , i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op65 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op63, i32  0, i32  %op64
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -268
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op66 = load i32 , i32 * %op19
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op67 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op65, i32  0, i32  %op66
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -284
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# %op68 = load i32 , i32 * %op30
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op69 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op67, i32  0, i32  %op68
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -300
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op70 = load i32 , i32 * %op41
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op71 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op69, i32  0, i32  %op70
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -316
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op72 = load i32 , i32 * %op52
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op73 = getelementptr [7 x i32 ], [7 x i32 ]* %op71, i32  0, i32  %op72
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -332
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# store i32  -1, i32 * %op73
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op74 = load i32 , i32 * %op52
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op75 = add i32  %op74, 1
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# store i32  %op75, i32 * %op52
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# br label %label56
	b .main_label56
.main_label76:
# %op77 = load i32 , i32 * %op41
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op78 = add i32  %op77, 1
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# store i32  %op78, i32 * %op41
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# br label %label45
	b .main_label45
.main_label79:
# %op80 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op81 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op82 = icmp slt i32  %op80, %op81
	ld.w $t0, $fp, -364
	ld.w $t1, $fp, -368
	slt $t2, $t0, $t1
	st.b $t2, $fp, -369
# %op83 = zext i1  %op82 to i32 
	ld.b $t0, $fp, -369
	st.w $t0, $fp, -376
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -377
# br i1  %op84, label %label85, label %label101
	ld.b $t0, $fp, -377
	bnez $t0, .main_label85
	b .main_label101
.main_label85:
# %op86 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -384
# %op87 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op88 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op87
	la.local $t0, list
	ld.w $t1, $fp, -388
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# store i32  %op86, i32 * %op88
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -384
	st.w $t1, $t0, 0
# %op89 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op90 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op89
	la.local $t0, list
	ld.w $t1, $fp, -404
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op91 = load i32 , i32 * %op90
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op92 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op91
	la.local $t0, cns
	ld.w $t1, $fp, -420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# %op93 = load i32 , i32 * %op92
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op94 = add i32  %op93, 1
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -440
# %op95 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op96 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op95
	la.local $t0, list
	ld.w $t1, $fp, -444
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -456
# %op97 = load i32 , i32 * %op96
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op98 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op97
	la.local $t0, cns
	ld.w $t1, $fp, -460
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# store i32  %op94, i32 * %op98
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# %op99 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op100 = add i32  %op99, 1
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# store i32  %op100, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -480
	st.w $t1, $t0, 0
# br label %label79
	b .main_label79
.main_label101:
# %op102 = alloca i32 
	addi.d $t1, $fp, -492
	st.d $t1, $fp, -488
# %op103 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  1
	la.local $t0, cns
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -504
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op105 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  2
	la.local $t0, cns
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -520
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op107 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  3
	la.local $t0, cns
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -536
# %op108 = load i32 , i32 * %op107
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op109 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  4
	la.local $t0, cns
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -552
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op111 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  5
	la.local $t0, cns
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -568
# %op112 = load i32 , i32 * %op111
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op113 = call i32  @dfs(i32  %op104, i32  %op106, i32  %op108, i32  %op110, i32  %op112, i32  0)
	ld.w $a0, $fp, -508
	ld.w $a1, $fp, -524
	ld.w $a2, $fp, -540
	ld.w $a3, $fp, -556
	ld.w $a4, $fp, -572
	addi.w $a5, $zero, 0
	bl dfs
	st.w $a0, $fp, -576
# store i32  %op113, i32 * %op102
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# %op114 = load i32 , i32 * %op102
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# call void @putint(i32  %op114)
	ld.w $a0, $fp, -580
	bl putint
# %op115 = load i32 , i32 * %op102
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -584
# ret i32  %op115
	ld.w $a0, $fp, -584
	b main_ret
main_ret:
	addi.d $sp, $sp, 592
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
