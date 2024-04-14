# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl TAPE_LEN
	.data
	.type TAPE_LEN, @object
	.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
	.globl BUFFER_LEN
	.data
	.type BUFFER_LEN, @object
	.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768
	.globl tape
	.type tape, @object
	.size tape, 262144
tape:
	.space 262144
	.globl program
	.type program, @object
	.size program, 131072
program:
	.space 131072
	.globl ptr
	.data
	.type ptr, @object
	.size ptr, 4
ptr:
	.word 0
	.text
	.globl read_program
	.type read_program, @function
read_program:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.read_program_label_entry:
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
	b .read_program_label3
.read_program_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
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
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label15
	ld.b $t0, $fp, -61
	bnez $t0, .read_program_label9
	b .read_program_label15
.read_program_label9:
# %op10 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -68
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op12 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op11
	la.local $t0, program
	ld.w $t1, $fp, -72
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# store i32  %op10, i32 * %op12
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = add i32  %op13, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# store i32  %op14, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# br label %label3
	b .read_program_label3
.read_program_label15:
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op17 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op16
	la.local $t0, program
	ld.w $t1, $fp, -92
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b read_program_ret
read_program_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl interpret
	.type interpret, @function
interpret:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -528
	st.d $a0, $fp, -24
.interpret_label_entry:
# %op1 = alloca i32 *
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# %op4 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# br label %label5
	b .interpret_label5
.interpret_label5:
# %op6 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op7 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op8 = getelementptr i32 , i32 * %op7, i32  %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -88
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -109
# br i1  %op10, label %label11, label %label20
	ld.b $t0, $fp, -109
	bnez $t0, .interpret_label11
	b .interpret_label20
.interpret_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op13 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op14 = getelementptr i32 , i32 * %op13, i32  %op12
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -116
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# store i32  %op15, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op17 = icmp eq i32  %op16, 62
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 62
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -145
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -153
# br i1  %op19, label %label21, label %label24
	ld.b $t0, $fp, -153
	bnez $t0, .interpret_label21
	b .interpret_label24
.interpret_label20:
# ret void
	addi.d $a0, $zero, 0
	b interpret_ret
.interpret_label21:
# %op22 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op23 = add i32  %op22, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op23, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label29
	b .interpret_label29
.interpret_label24:
# %op25 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op26 = icmp eq i32  %op25, 60
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 60
	beq  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -169
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -177
# br i1  %op28, label %label32, label %label35
	ld.b $t0, $fp, -177
	bnez $t0, .interpret_label32
	b .interpret_label35
.interpret_label29:
# %op30 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# store i32  %op31, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# br label %label5
	b .interpret_label5
.interpret_label32:
# %op33 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op34 = sub i32  %op33, 1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# store i32  %op34, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# br label %label40
	b .interpret_label40
.interpret_label35:
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op37 = icmp eq i32  %op36, 43
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -201
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -201
	st.w $t0, $fp, -208
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -209
# br i1  %op39, label %label41, label %label48
	ld.b $t0, $fp, -209
	bnez $t0, .interpret_label41
	b .interpret_label48
.interpret_label40:
# br label %label29
	b .interpret_label29
.interpret_label41:
# %op42 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op43 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op42
	la.local $t0, tape
	ld.w $t1, $fp, -216
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op45 = add i32  %op44, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op46 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op47 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op46
	la.local $t0, tape
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -248
# store i32  %op45, i32 * %op47
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label53
	b .interpret_label53
.interpret_label48:
# %op49 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op50 = icmp eq i32  %op49, 45
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -253
# %op51 = zext i1  %op50 to i32 
	ld.b $t0, $fp, -253
	st.w $t0, $fp, -260
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -261
# br i1  %op52, label %label54, label %label61
	ld.b $t0, $fp, -261
	bnez $t0, .interpret_label54
	b .interpret_label61
.interpret_label53:
# br label %label40
	b .interpret_label40
.interpret_label54:
# %op55 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op56 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op55
	la.local $t0, tape
	ld.w $t1, $fp, -268
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op58 = sub i32  %op57, 1
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -288
# %op59 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op60 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op59
	la.local $t0, tape
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  %op58, i32 * %op60
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -288
	st.w $t1, $t0, 0
# br label %label66
	b .interpret_label66
.interpret_label61:
# %op62 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op63 = icmp eq i32  %op62, 46
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 46
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -309
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -309
	st.w $t0, $fp, -316
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -317
# br i1  %op65, label %label67, label %label71
	ld.b $t0, $fp, -317
	bnez $t0, .interpret_label67
	b .interpret_label71
.interpret_label66:
# br label %label53
	b .interpret_label53
.interpret_label67:
# %op68 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op69 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op68
	la.local $t0, tape
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op70 = load i32 , i32 * %op69
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# call void @putch(i32  %op70)
	ld.w $a0, $fp, -340
	bl putch
# br label %label76
	b .interpret_label76
.interpret_label71:
# %op72 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op73 = icmp eq i32  %op72, 44
	ld.w $t0, $fp, -344
	addi.w $t1, $zero, 44
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -345
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -345
	st.w $t0, $fp, -352
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -352
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -353
# br i1  %op75, label %label77, label %label81
	ld.b $t0, $fp, -353
	bnez $t0, .interpret_label77
	b .interpret_label81
.interpret_label76:
# br label %label66
	b .interpret_label66
.interpret_label77:
# %op78 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -360
# %op79 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op80 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op79
	la.local $t0, tape
	ld.w $t1, $fp, -364
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# store i32  %op78, i32 * %op80
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# br label %label86
	b .interpret_label86
.interpret_label81:
# %op82 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op83 = icmp eq i32  %op82, 93
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -381
# %op84 = zext i1  %op83 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op85 = icmp ne i32  %op84, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -389
# br i1  %op85, label %label89, label %label88
	ld.b $t0, $fp, -389
	bnez $t0, .interpret_label89
	b .interpret_label88
.interpret_label86:
# br label %label76
	b .interpret_label76
.interpret_label87:
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label94
	b .interpret_label94
.interpret_label88:
# br label %label86
	b .interpret_label86
.interpret_label89:
# %op90 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op91 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op90
	la.local $t0, tape
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op93 = icmp ne i32  %op92, 0
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -413
# br i1  %op93, label %label87, label %label88
	ld.b $t0, $fp, -413
	bnez $t0, .interpret_label87
	b .interpret_label88
.interpret_label94:
# %op95 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op96 = icmp sgt i32  %op95, 0
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -421
# %op97 = zext i1  %op96 to i32 
	ld.b $t0, $fp, -421
	st.w $t0, $fp, -428
# %op98 = icmp ne i32  %op97, 0
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -429
# br i1  %op98, label %label99, label %label110
	ld.b $t0, $fp, -429
	bnez $t0, .interpret_label99
	b .interpret_label110
.interpret_label99:
# %op100 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op101 = sub i32  %op100, 1
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -440
# store i32  %op101, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# %op102 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op103 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -456
# %op104 = getelementptr i32 , i32 * %op103, i32  %op102
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -444
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op105 = load i32 , i32 * %op104
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# store i32  %op105, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -468
	st.w $t1, $t0, 0
# %op106 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op107 = icmp eq i32  %op106, 91
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 91
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -473
# %op108 = zext i1  %op107 to i32 
	ld.b $t0, $fp, -473
	st.w $t0, $fp, -480
# %op109 = icmp ne i32  %op108, 0
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -481
# br i1  %op109, label %label111, label %label114
	ld.b $t0, $fp, -481
	bnez $t0, .interpret_label111
	b .interpret_label114
.interpret_label110:
# br label %label88
	b .interpret_label88
.interpret_label111:
# %op112 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op113 = sub i32  %op112, 1
	ld.w $t0, $fp, -488
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -492
# store i32  %op113, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -492
	st.w $t1, $t0, 0
# br label %label119
	b .interpret_label119
.interpret_label114:
# %op115 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op116 = icmp eq i32  %op115, 93
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -497
# %op117 = zext i1  %op116 to i32 
	ld.b $t0, $fp, -497
	st.w $t0, $fp, -504
# %op118 = icmp ne i32  %op117, 0
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -505
# br i1  %op118, label %label120, label %label123
	ld.b $t0, $fp, -505
	bnez $t0, .interpret_label120
	b .interpret_label123
.interpret_label119:
# br label %label94
	b .interpret_label94
.interpret_label120:
# %op121 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op122 = add i32  %op121, 1
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# store i32  %op122, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -516
	st.w $t1, $t0, 0
# br label %label123
	b .interpret_label123
.interpret_label123:
# br label %label119
	b .interpret_label119
interpret_ret:
	addi.d $sp, $sp, 528
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
# call void @read_program()
	bl read_program
# %op0 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  0
	la.local $t0, program
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -24
# call void @interpret(i32 * %op0)
	ld.d $a0, $fp, -24
	bl interpret
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
