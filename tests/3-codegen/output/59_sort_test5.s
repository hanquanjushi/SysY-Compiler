# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl swap
	.type swap, @function
swap:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.swap_label_entry:
# %op3 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op8 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op9 = getelementptr i32 , i32 * %op8, i32  %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -96
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# store i32  %op10, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op11 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op12 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op13 = getelementptr i32 , i32 * %op12, i32  %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -120
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op16 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op17 = getelementptr i32 , i32 * %op16, i32  %op15
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -144
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  %op14, i32 * %op17
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op19 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op20 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -176
# %op21 = getelementptr i32 , i32 * %op20, i32  %op19
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -168
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# store i32  %op18, i32 * %op21
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# ret i32  0
	addi.w $a0, $zero, 0
	b swap_ret
swap_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_ajust
	.type heap_ajust, @function
heap_ajust:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -352
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.heap_ajust_label_entry:
# %op3 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# store i32  %op7, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# %op9 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op10 = mul i32  %op9, 2
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op11 = add i32  %op10, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# store i32  %op11, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# br label %label12
	b .heap_ajust_label12
.heap_ajust_label12:
# %op13 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op16 = icmp slt i32  %op13, %op15
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -132
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -141
# br i1  %op18, label %label19, label %label25
	ld.b $t0, $fp, -141
	bnez $t0, .heap_ajust_label19
	b .heap_ajust_label25
.heap_ajust_label19:
# %op20 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -161
# br i1  %op24, label %label41, label %label29
	ld.b $t0, $fp, -161
	bnez $t0, .heap_ajust_label41
	b .heap_ajust_label29
.heap_ajust_label25:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label26:
# %op27 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32  %op28, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label29
	b .heap_ajust_label29
.heap_ajust_label29:
# %op30 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op31 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op32 = getelementptr i32 , i32 * %op31, i32  %op30
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -176
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op34 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op35 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -208
# %op36 = getelementptr i32 , i32 * %op35, i32  %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -200
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op38 = icmp sgt i32  %op33, %op37
	ld.w $t0, $fp, -196
	ld.w $t1, $fp, -220
	slt $t2, $t1, $t0
	st.b $t2, $fp, -221
# %op39 = zext i1  %op38 to i32 
	ld.b $t0, $fp, -221
	st.w $t0, $fp, -228
# %op40 = icmp ne i32  %op39, 0
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -229
# br i1  %op40, label %label54, label %label55
	ld.b $t0, $fp, -229
	bnez $t0, .heap_ajust_label54
	b .heap_ajust_label55
.heap_ajust_label41:
# %op42 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op43 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -248
# %op44 = getelementptr i32 , i32 * %op43, i32  %op42
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -236
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op46 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op47 = add i32  %op46, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# %op48 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op49 = getelementptr i32 , i32 * %op48, i32  %op47
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -268
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op50 = load i32 , i32 * %op49
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op51 = icmp slt i32  %op45, %op50
	ld.w $t0, $fp, -260
	ld.w $t1, $fp, -292
	slt $t2, $t0, $t1
	st.b $t2, $fp, -293
# %op52 = zext i1  %op51 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op53 = icmp ne i32  %op52, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -301
# br i1  %op53, label %label26, label %label29
	ld.b $t0, $fp, -301
	bnez $t0, .heap_ajust_label26
	b .heap_ajust_label29
.heap_ajust_label54:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label55:
# %op56 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op57 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op58 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op59 = call i32  @swap(i32 * %op56, i32  %op57, i32  %op58)
	ld.d $a0, $fp, -312
	ld.w $a1, $fp, -316
	ld.w $a2, $fp, -320
	bl swap
	st.w $a0, $fp, -324
# store i32  %op59, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -324
	st.w $t1, $t0, 0
# %op60 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# store i32  %op60, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op62 = mul i32  %op61, 2
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op63 = add i32  %op62, 1
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# store i32  %op63, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# br label %label64
	b .heap_ajust_label64
.heap_ajust_label64:
# br label %label12
	b .heap_ajust_label12
heap_ajust_ret:
	addi.d $sp, $sp, 352
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_sort
	.type heap_sort, @function
heap_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -272
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.heap_sort_label_entry:
# %op2 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# %op5 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op7 = sdiv i32  %op6, 2
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op8 = sub i32  %op7, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op8, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label9
	b .heap_sort_label9
.heap_sort_label9:
# %op10 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op11 = icmp sgt i32  %op10, -1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -109
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -117
# br i1  %op13, label %label14, label %label23
	ld.b $t0, $fp, -117
	bnez $t0, .heap_sort_label14
	b .heap_sort_label23
.heap_sort_label14:
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op16 = sub i32  %op15, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# store i32  %op16, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op17 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op19 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op20 = call i32  @heap_ajust(i32 * %op17, i32  %op18, i32  %op19)
	ld.d $a0, $fp, -136
	ld.w $a1, $fp, -140
	ld.w $a2, $fp, -144
	bl heap_ajust
	st.w $a0, $fp, -148
# store i32  %op20, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op22 = sub i32  %op21, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op22, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label9
	b .heap_sort_label9
.heap_sort_label23:
# %op24 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op25 = sub i32  %op24, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op25, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label26
	b .heap_sort_label26
.heap_sort_label26:
# %op27 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op28 = icmp sgt i32  %op27, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -169
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -177
# br i1  %op30, label %label31, label %label45
	ld.b $t0, $fp, -177
	bnez $t0, .heap_sort_label31
	b .heap_sort_label45
.heap_sort_label31:
# %op32 = alloca i32 
	addi.d $t1, $fp, -196
	st.d $t1, $fp, -192
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -208
# %op34 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op35 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op36 = call i32  @swap(i32 * %op33, i32  %op34, i32  %op35)
	ld.d $a0, $fp, -208
	ld.w $a1, $fp, -212
	ld.w $a2, $fp, -216
	bl swap
	st.w $a0, $fp, -220
# store i32  %op36, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -220
	st.w $t1, $t0, 0
# %op37 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op38 = sub i32  %op37, 1
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# store i32  %op38, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op39 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op40 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op41 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op42 = call i32  @heap_ajust(i32 * %op39, i32  %op40, i32  %op41)
	ld.d $a0, $fp, -240
	ld.w $a1, $fp, -244
	ld.w $a2, $fp, -248
	bl heap_ajust
	st.w $a0, $fp, -252
# store i32  %op42, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op43 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op44 = sub i32  %op43, 1
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op44, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# br label %label26
	b .heap_sort_label26
.heap_sort_label45:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_sort_ret
heap_sort_ret:
	addi.d $sp, $sp, 272
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
.main_label_entry:
# store i32  10, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op0 = alloca [10 x i32 ]
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -24
# %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -80
# store i32  3, i32 * %op2
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -88
# store i32  9, i32 * %op3
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -96
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -104
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -112
# store i32  1, i32 * %op6
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -120
# store i32  6, i32 * %op7
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -128
# store i32  5, i32 * %op8
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -136
# store i32  7, i32 * %op9
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -144
# store i32  8, i32 * %op10
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -168
# %op13 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op14 = call i32  @heap_sort(i32 * %op12, i32  %op13)
	ld.d $a0, $fp, -168
	ld.w $a1, $fp, -172
	bl heap_sort
	st.w $a0, $fp, -176
# store i32  %op14, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label15:
# %op16 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op17 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op18 = icmp slt i32  %op16, %op17
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -193
# br i1  %op20, label %label21, label %label30
	ld.b $t0, $fp, -193
	bnez $t0, .main_label21
	b .main_label30
.main_label21:
# %op22 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# %op23 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op24 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op23
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -216
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op25 = load i32 , i32 * %op24
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# store i32  %op25, i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op26 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# call void @putint(i32  %op26)
	ld.w $a0, $fp, -232
	bl putint
# store i32  10, i32 * %op22
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# call void @putch(i32  %op27)
	ld.w $a0, $fp, -236
	bl putch
# %op28 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op29 = add i32  %op28, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# store i32  %op29, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label30:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
