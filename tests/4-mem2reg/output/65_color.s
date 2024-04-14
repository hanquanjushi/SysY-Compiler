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
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.equal_label_entry:
# %op2 = icmp eq i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -25
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op4, label %label5, label %label6
	ld.b $t0, $fp, -33
	bnez $t0, .equal_label5
	b .equal_label6
.equal_label5:
# ret i32  1
	addi.w $a0, $zero, 1
	b equal_ret
.equal_label6:
# ret i32  0
	addi.w $a0, $zero, 0
	b equal_ret
equal_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -512
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
.dfs_label_entry:
# %op6 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %arg0
	la.local $t0, dp
	ld.w $t1, $fp, -20
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op7 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op6, i32  0, i32  %arg1
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# %op8 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op7, i32  0, i32  %arg2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# %op9 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op8, i32  0, i32  %arg3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# %op10 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op9, i32  0, i32  %arg4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -36
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# %op11 = getelementptr [7 x i32 ], [7 x i32 ]* %op10, i32  0, i32  %arg5
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = icmp ne i32  %op12, -1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -93
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -101
# br i1  %op15, label %label16, label %label24
	ld.b $t0, $fp, -101
	bnez $t0, .dfs_label16
	b .dfs_label24
.dfs_label16:
# %op17 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %arg0
	la.local $t0, dp
	ld.w $t1, $fp, -20
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op18 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op17, i32  0, i32  %arg1
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -24
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -120
# %op19 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op18, i32  0, i32  %arg2
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -28
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op20 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op19, i32  0, i32  %arg3
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# %op21 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op20, i32  0, i32  %arg4
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -36
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# %op22 = getelementptr [7 x i32 ], [7 x i32 ]* %op21, i32  0, i32  %arg5
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -152
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# ret i32  %op23
	ld.w $a0, $fp, -156
	b dfs_ret
.dfs_label24:
# %op25 = add i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op26 = add i32  %op25, %arg2
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op27 = add i32  %op26, %arg3
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -32
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op28 = add i32  %op27, %arg4
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op29 = icmp eq i32  %op28, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -173
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -181
# br i1  %op31, label %label32, label %label33
	ld.b $t0, $fp, -181
	bnez $t0, .dfs_label32
	b .dfs_label33
.dfs_label32:
# ret i32  1
	addi.w $a0, $zero, 1
	b dfs_ret
.dfs_label33:
# %op34 = icmp ne i32  %arg0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -182
# br i1  %op34, label %label35, label %label44
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -220
	ld.b $t0, $fp, -182
	bnez $t0, .dfs_label35
	b .dfs_label44
.dfs_label35:
# %op36 = call i32  @equal(i32  %arg5, i32  2)
	ld.w $a0, $fp, -40
	addi.w $a1, $zero, 2
	bl equal
	st.w $a0, $fp, -188
# %op37 = sub i32  %arg0, %op36
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -188
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op38 = sub i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op39 = call i32  @dfs(i32  %op38, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  1)
	ld.w $a0, $fp, -196
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -28
	ld.w $a3, $fp, -32
	ld.w $a4, $fp, -36
	addi.w $a5, $zero, 1
	bl dfs
	st.w $a0, $fp, -200
# %op40 = mul i32  %op37, %op39
	ld.w $t0, $fp, -192
	ld.w $t1, $fp, -200
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# %op41 = add i32  0, %op40
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -204
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op42 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op43 = srem i32  %op41, %op42
	ld.w $t0, $fp, -208
	ld.w $t1, $fp, -212
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# br label %label44
	ld.w $t0, $fp, -216
	st.w $t0, $fp, -220
	b .dfs_label44
.dfs_label44:
# %op45 = phi i32  [ 0, %label33 ], [ %op43, %label35 ]
# %op46 = icmp ne i32  %arg1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -221
# br i1  %op46, label %label47, label %label57
	ld.w $t0, $fp, -220
	st.w $t0, $fp, -264
	ld.b $t0, $fp, -221
	bnez $t0, .dfs_label47
	b .dfs_label57
.dfs_label47:
# %op48 = call i32  @equal(i32  %arg5, i32  3)
	ld.w $a0, $fp, -40
	addi.w $a1, $zero, 3
	bl equal
	st.w $a0, $fp, -228
# %op49 = sub i32  %arg1, %op48
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -228
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op50 = add i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# %op51 = sub i32  %arg1, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# %op52 = call i32  @dfs(i32  %op50, i32  %op51, i32  %arg2, i32  %arg3, i32  %arg4, i32  2)
	ld.w $a0, $fp, -236
	ld.w $a1, $fp, -240
	ld.w $a2, $fp, -28
	ld.w $a3, $fp, -32
	ld.w $a4, $fp, -36
	addi.w $a5, $zero, 2
	bl dfs
	st.w $a0, $fp, -244
# %op53 = mul i32  %op49, %op52
	ld.w $t0, $fp, -232
	ld.w $t1, $fp, -244
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op54 = add i32  %op45, %op53
	ld.w $t0, $fp, -220
	ld.w $t1, $fp, -248
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -252
# %op55 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op56 = srem i32  %op54, %op55
	ld.w $t0, $fp, -252
	ld.w $t1, $fp, -256
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# br label %label57
	ld.w $t0, $fp, -260
	st.w $t0, $fp, -264
	b .dfs_label57
.dfs_label57:
# %op58 = phi i32  [ %op45, %label44 ], [ %op56, %label47 ]
# %op59 = icmp ne i32  %arg2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -265
# br i1  %op59, label %label60, label %label70
	ld.w $t0, $fp, -264
	st.w $t0, $fp, -308
	ld.b $t0, $fp, -265
	bnez $t0, .dfs_label60
	b .dfs_label70
.dfs_label60:
# %op61 = call i32  @equal(i32  %arg5, i32  4)
	ld.w $a0, $fp, -40
	addi.w $a1, $zero, 4
	bl equal
	st.w $a0, $fp, -272
# %op62 = sub i32  %arg2, %op61
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -272
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# %op63 = add i32  %arg1, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# %op64 = sub i32  %arg2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# %op65 = call i32  @dfs(i32  %arg0, i32  %op63, i32  %op64, i32  %arg3, i32  %arg4, i32  3)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -280
	ld.w $a2, $fp, -284
	ld.w $a3, $fp, -32
	ld.w $a4, $fp, -36
	addi.w $a5, $zero, 3
	bl dfs
	st.w $a0, $fp, -288
# %op66 = mul i32  %op62, %op65
	ld.w $t0, $fp, -276
	ld.w $t1, $fp, -288
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op67 = add i32  %op58, %op66
	ld.w $t0, $fp, -264
	ld.w $t1, $fp, -292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# %op68 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op69 = srem i32  %op67, %op68
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# br label %label70
	ld.w $t0, $fp, -304
	st.w $t0, $fp, -308
	b .dfs_label70
.dfs_label70:
# %op71 = phi i32  [ %op58, %label57 ], [ %op69, %label60 ]
# %op72 = icmp ne i32  %arg3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -309
# br i1  %op72, label %label73, label %label83
	ld.w $t0, $fp, -308
	st.w $t0, $fp, -352
	ld.b $t0, $fp, -309
	bnez $t0, .dfs_label73
	b .dfs_label83
.dfs_label73:
# %op74 = call i32  @equal(i32  %arg5, i32  5)
	ld.w $a0, $fp, -40
	addi.w $a1, $zero, 5
	bl equal
	st.w $a0, $fp, -316
# %op75 = sub i32  %arg3, %op74
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -316
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op76 = add i32  %arg2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -324
# %op77 = sub i32  %arg3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op78 = call i32  @dfs(i32  %arg0, i32  %arg1, i32  %op76, i32  %op77, i32  %arg4, i32  4)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -324
	ld.w $a3, $fp, -328
	ld.w $a4, $fp, -36
	addi.w $a5, $zero, 4
	bl dfs
	st.w $a0, $fp, -332
# %op79 = mul i32  %op75, %op78
	ld.w $t0, $fp, -320
	ld.w $t1, $fp, -332
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op80 = add i32  %op71, %op79
	ld.w $t0, $fp, -308
	ld.w $t1, $fp, -336
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op81 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op82 = srem i32  %op80, %op81
	ld.w $t0, $fp, -340
	ld.w $t1, $fp, -344
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -348
# br label %label83
	ld.w $t0, $fp, -348
	st.w $t0, $fp, -352
	b .dfs_label83
.dfs_label83:
# %op84 = phi i32  [ %op71, %label70 ], [ %op82, %label73 ]
# %op85 = icmp ne i32  %arg4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -353
# br i1  %op85, label %label86, label %label94
	ld.w $t0, $fp, -352
	st.w $t0, $fp, -388
	ld.b $t0, $fp, -353
	bnez $t0, .dfs_label86
	b .dfs_label94
.dfs_label86:
# %op87 = add i32  %arg3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op88 = sub i32  %arg4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op89 = call i32  @dfs(i32  %arg0, i32  %arg1, i32  %arg2, i32  %op87, i32  %op88, i32  5)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -28
	ld.w $a3, $fp, -360
	ld.w $a4, $fp, -364
	addi.w $a5, $zero, 5
	bl dfs
	st.w $a0, $fp, -368
# %op90 = mul i32  %arg4, %op89
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -368
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -372
# %op91 = add i32  %op84, %op90
	ld.w $t0, $fp, -352
	ld.w $t1, $fp, -372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op92 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op93 = srem i32  %op91, %op92
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# br label %label94
	ld.w $t0, $fp, -384
	st.w $t0, $fp, -388
	b .dfs_label94
.dfs_label94:
# %op95 = phi i32  [ %op84, %label83 ], [ %op93, %label86 ]
# %op96 = load i32 , i32 * @mod
	la.local $t0, mod
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op97 = srem i32  %op95, %op96
	ld.w $t0, $fp, -388
	ld.w $t1, $fp, -392
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -396
# %op98 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %arg0
	la.local $t0, dp
	ld.w $t1, $fp, -20
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op99 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op98, i32  0, i32  %arg1
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -24
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op100 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op99, i32  0, i32  %arg2
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -28
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -424
# %op101 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op100, i32  0, i32  %arg3
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# %op102 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op101, i32  0, i32  %arg4
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -36
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -440
# %op103 = getelementptr [7 x i32 ], [7 x i32 ]* %op102, i32  0, i32  %arg5
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -448
# store i32  %op97, i32 * %op103
	ld.d $t0, $fp, -448
	ld.w $t1, $fp, -396
	st.w $t1, $t0, 0
# %op104 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %arg0
	la.local $t0, dp
	ld.w $t1, $fp, -20
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -456
# %op105 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op104, i32  0, i32  %arg1
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -24
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -464
# %op106 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op105, i32  0, i32  %arg2
	ld.d $t0, $fp, -464
	ld.w $t1, $fp, -28
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# %op107 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op106, i32  0, i32  %arg3
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op108 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op107, i32  0, i32  %arg4
	ld.d $t0, $fp, -480
	ld.w $t1, $fp, -36
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -488
# %op109 = getelementptr [7 x i32 ], [7 x i32 ]* %op108, i32  0, i32  %arg5
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -496
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# ret i32  %op110
	ld.w $a0, $fp, -500
	b dfs_ret
dfs_ret:
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
	addi.d $sp, $sp, -384
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	b .main_label1
.main_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op17, %label16 ]
# %op3 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op4 = icmp slt i32  %op2, %op3
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	slt $t2, $t0, $t1
	st.b $t2, $fp, -29
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -37
# br i1  %op6, label %label7, label %label8
	ld.b $t0, $fp, -37
	bnez $t0, .main_label7
	b .main_label8
.main_label7:
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -44
	b .main_label9
.main_label8:
# br label %label60
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -212
	b .main_label60
.main_label9:
# %op10 = phi i32  [ 0, %label7 ], [ %op26, %label25 ]
# %op11 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op12 = icmp slt i32  %op10, %op11
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -48
	slt $t2, $t0, $t1
	st.b $t2, $fp, -49
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -57
# br i1  %op14, label %label15, label %label16
	ld.b $t0, $fp, -57
	bnez $t0, .main_label15
	b .main_label16
.main_label15:
# br label %label18
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -68
	b .main_label18
.main_label16:
# %op17 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label1
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -24
	b .main_label1
.main_label18:
# %op19 = phi i32  [ 0, %label15 ], [ %op35, %label34 ]
# %op20 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op21 = icmp slt i32  %op19, %op20
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -72
	slt $t2, $t0, $t1
	st.b $t2, $fp, -73
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -81
# br i1  %op23, label %label24, label %label25
	ld.b $t0, $fp, -81
	bnez $t0, .main_label24
	b .main_label25
.main_label24:
# br label %label27
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	b .main_label27
.main_label25:
# %op26 = add i32  %op10, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# br label %label9
	ld.w $t0, $fp, -88
	st.w $t0, $fp, -44
	b .main_label9
.main_label27:
# %op28 = phi i32  [ 0, %label24 ], [ %op44, %label43 ]
# %op29 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op30 = icmp slt i32  %op28, %op29
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	slt $t2, $t0, $t1
	st.b $t2, $fp, -97
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -105
# br i1  %op32, label %label33, label %label34
	ld.b $t0, $fp, -105
	bnez $t0, .main_label33
	b .main_label34
.main_label33:
# br label %label36
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -116
	b .main_label36
.main_label34:
# %op35 = add i32  %op19, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# br label %label18
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -68
	b .main_label18
.main_label36:
# %op37 = phi i32  [ 0, %label33 ], [ %op59, %label58 ]
# %op38 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op39 = icmp slt i32  %op37, %op38
	ld.w $t0, $fp, -116
	ld.w $t1, $fp, -120
	slt $t2, $t0, $t1
	st.b $t2, $fp, -121
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -129
# br i1  %op41, label %label42, label %label43
	ld.b $t0, $fp, -129
	bnez $t0, .main_label42
	b .main_label43
.main_label42:
# br label %label45
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -140
	b .main_label45
.main_label43:
# %op44 = add i32  %op28, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# br label %label27
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -92
	b .main_label27
.main_label45:
# %op46 = phi i32  [ 0, %label42 ], [ %op57, %label50 ]
# %op47 = icmp slt i32  %op46, 7
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 7
	slt $t2, $t0, $t1
	st.b $t2, $fp, -141
# %op48 = zext i1  %op47 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -149
# br i1  %op49, label %label50, label %label58
	ld.b $t0, $fp, -149
	bnez $t0, .main_label50
	b .main_label58
.main_label50:
# %op51 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op2
	la.local $t0, dp
	ld.w $t1, $fp, -24
	lu12i.w $t3, 179
	ori $t3, $t3, 1648
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op52 = getelementptr [18 x [18 x [18 x [18 x [7 x i32 ]]]]], [18 x [18 x [18 x [18 x [7 x i32 ]]]]]* %op51, i32  0, i32  %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -44
	lu12i.w $t3, 9
	ori $t3, $t3, 3960
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -168
# %op53 = getelementptr [18 x [18 x [18 x [7 x i32 ]]]], [18 x [18 x [18 x [7 x i32 ]]]]* %op52, i32  0, i32  %op19
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -68
	lu12i.w $t3, 0
	ori $t3, $t3, 2268
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op54 = getelementptr [18 x [18 x [7 x i32 ]]], [18 x [18 x [7 x i32 ]]]* %op53, i32  0, i32  %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -92
	addi.d $t3, $zero, 126
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# %op55 = getelementptr [18 x [7 x i32 ]], [18 x [7 x i32 ]]* %op54, i32  0, i32  %op37
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op56 = getelementptr [7 x i32 ], [7 x i32 ]* %op55, i32  0, i32  %op46
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -140
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -200
# store i32  -1, i32 * %op56
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op57 = add i32  %op46, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# br label %label45
	ld.w $t0, $fp, -204
	st.w $t0, $fp, -140
	b .main_label45
.main_label58:
# %op59 = add i32  %op37, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# br label %label36
	ld.w $t0, $fp, -208
	st.w $t0, $fp, -116
	b .main_label36
.main_label60:
# %op61 = phi i32  [ 0, %label8 ], [ %op76, %label65 ]
# %op62 = icmp slt i32  %op61, %op0
	ld.w $t0, $fp, -212
	ld.w $t1, $fp, -20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -213
# %op63 = zext i1  %op62 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op64 = icmp ne i32  %op63, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -221
# br i1  %op64, label %label65, label %label77
	ld.b $t0, $fp, -221
	bnez $t0, .main_label65
	b .main_label77
.main_label65:
# %op66 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -228
# %op67 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op61
	la.local $t0, list
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# store i32  %op66, i32 * %op67
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op68 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op61
	la.local $t0, list
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -248
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op70 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op69
	la.local $t0, cns
	ld.w $t1, $fp, -252
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op71 = load i32 , i32 * %op70
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op72 = add i32  %op71, 1
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op73 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op61
	la.local $t0, list
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op75 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op74
	la.local $t0, cns
	ld.w $t1, $fp, -284
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# store i32  %op72, i32 * %op75
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# %op76 = add i32  %op61, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# br label %label60
	ld.w $t0, $fp, -300
	st.w $t0, $fp, -212
	b .main_label60
.main_label77:
# %op78 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  1
	la.local $t0, cns
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -312
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op80 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  2
	la.local $t0, cns
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -328
# %op81 = load i32 , i32 * %op80
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op82 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  3
	la.local $t0, cns
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -344
# %op83 = load i32 , i32 * %op82
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op84 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  4
	la.local $t0, cns
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -360
# %op85 = load i32 , i32 * %op84
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op86 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  5
	la.local $t0, cns
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -376
# %op87 = load i32 , i32 * %op86
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op88 = call i32  @dfs(i32  %op79, i32  %op81, i32  %op83, i32  %op85, i32  %op87, i32  0)
	ld.w $a0, $fp, -316
	ld.w $a1, $fp, -332
	ld.w $a2, $fp, -348
	ld.w $a3, $fp, -364
	ld.w $a4, $fp, -380
	addi.w $a5, $zero, 0
	bl dfs
	st.w $a0, $fp, -384
# call void @putint(i32  %op88)
	ld.w $a0, $fp, -384
	bl putint
# ret i32  %op88
	ld.w $a0, $fp, -384
	b main_ret
main_ret:
	addi.d $sp, $sp, 384
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
