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
	addi.d $sp, $sp, -64
.read_program_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	b .read_program_label1
.read_program_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op9, %label6 ]
# %op3 = icmp slt i32  %op2, %op0
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -25
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label10
	ld.b $t0, $fp, -33
	bnez $t0, .read_program_label6
	b .read_program_label10
.read_program_label6:
# %op7 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -40
# %op8 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op2
	la.local $t0, program
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# store i32  %op7, i32 * %op8
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op9 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label1
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -24
	b .read_program_label1
.read_program_label10:
# %op11 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op2
	la.local $t0, program
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b read_program_ret
read_program_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl interpret
	.type interpret, @function
interpret:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -416
	st.d $a0, $fp, -24
.interpret_label_entry:
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .interpret_label1
.interpret_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op22, %label20 ]
# %op3 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -45
# br i1  %op5, label %label6, label %label12
	ld.b $t0, $fp, -45
	bnez $t0, .interpret_label6
	b .interpret_label12
.interpret_label6:
# %op7 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op9 = icmp eq i32  %op8, 62
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 62
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -61
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -69
# br i1  %op11, label %label13, label %label16
	ld.b $t0, $fp, -69
	bnez $t0, .interpret_label13
	b .interpret_label16
.interpret_label12:
# ret void
	addi.d $a0, $zero, 0
	b interpret_ret
.interpret_label13:
# %op14 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op15, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label20
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -96
	b .interpret_label20
.interpret_label16:
# %op17 = icmp eq i32  %op8, 60
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 60
	beq  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -89
# br i1  %op19, label %label23, label %label26
	ld.b $t0, $fp, -89
	bnez $t0, .interpret_label23
	b .interpret_label26
.interpret_label20:
# %op21 = phi i32  [ %op2, %label13 ], [ %op31, %label30 ]
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# br label %label1
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -28
	b .interpret_label1
.interpret_label23:
# %op24 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op25 = sub i32  %op24, 1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op25, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# br label %label30
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -124
	b .interpret_label30
.interpret_label26:
# %op27 = icmp eq i32  %op8, 43
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -109
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -117
# br i1  %op29, label %label32, label %label39
	ld.b $t0, $fp, -117
	bnez $t0, .interpret_label32
	b .interpret_label39
.interpret_label30:
# %op31 = phi i32  [ %op2, %label23 ], [ %op44, %label43 ]
# br label %label20
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -96
	b .interpret_label20
.interpret_label32:
# %op33 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op34 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op33
	la.local $t0, tape
	ld.w $t1, $fp, -128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op36 = add i32  %op35, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op37 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op38 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op37
	la.local $t0, tape
	ld.w $t1, $fp, -148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# store i32  %op36, i32 * %op38
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label43
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -176
	b .interpret_label43
.interpret_label39:
# %op40 = icmp eq i32  %op8, 45
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -161
# %op41 = zext i1  %op40 to i32 
	ld.b $t0, $fp, -161
	st.w $t0, $fp, -168
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -169
# br i1  %op42, label %label45, label %label52
	ld.b $t0, $fp, -169
	bnez $t0, .interpret_label45
	b .interpret_label52
.interpret_label43:
# %op44 = phi i32  [ %op2, %label32 ], [ %op57, %label56 ]
# br label %label30
	ld.w $t0, $fp, -176
	st.w $t0, $fp, -124
	b .interpret_label30
.interpret_label45:
# %op46 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op47 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op46
	la.local $t0, tape
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op49 = sub i32  %op48, 1
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# %op50 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op51 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op50
	la.local $t0, tape
	ld.w $t1, $fp, -204
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# store i32  %op49, i32 * %op51
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# br label %label56
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -232
	b .interpret_label56
.interpret_label52:
# %op53 = icmp eq i32  %op8, 46
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 46
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -217
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -217
	st.w $t0, $fp, -224
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -225
# br i1  %op55, label %label58, label %label62
	ld.b $t0, $fp, -225
	bnez $t0, .interpret_label58
	b .interpret_label62
.interpret_label56:
# %op57 = phi i32  [ %op2, %label45 ], [ %op67, %label66 ]
# br label %label43
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -176
	b .interpret_label43
.interpret_label58:
# %op59 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op60 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op59
	la.local $t0, tape
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -248
# %op61 = load i32 , i32 * %op60
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# call void @putch(i32  %op61)
	ld.w $a0, $fp, -252
	bl putch
# br label %label66
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -268
	b .interpret_label66
.interpret_label62:
# %op63 = icmp eq i32  %op8, 44
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 44
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -253
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -253
	st.w $t0, $fp, -260
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -261
# br i1  %op65, label %label68, label %label72
	ld.b $t0, $fp, -261
	bnez $t0, .interpret_label68
	b .interpret_label72
.interpret_label66:
# %op67 = phi i32  [ %op2, %label58 ], [ %op77, %label76 ]
# br label %label56
	ld.w $t0, $fp, -268
	st.w $t0, $fp, -232
	b .interpret_label56
.interpret_label68:
# %op69 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -272
# %op70 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op71 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op70
	la.local $t0, tape
	ld.w $t1, $fp, -276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# store i32  %op69, i32 * %op71
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# br label %label76
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -304
	b .interpret_label76
.interpret_label72:
# %op73 = icmp eq i32  %op8, 93
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -289
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -289
	st.w $t0, $fp, -296
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -297
# br i1  %op75, label %label81, label %label79
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -308
	ld.b $t0, $fp, -297
	bnez $t0, .interpret_label81
	b .interpret_label79
.interpret_label76:
# %op77 = phi i32  [ %op2, %label68 ], [ %op80, %label79 ]
# br label %label66
	ld.w $t0, $fp, -304
	st.w $t0, $fp, -268
	b .interpret_label66
.interpret_label78:
# br label %label86
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -332
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -336
	b .interpret_label86
.interpret_label79:
# %op80 = phi i32  [ %op2, %label72 ], [ %op2, %label81 ], [ %op88, %label99 ]
# br label %label76
	ld.w $t0, $fp, -308
	st.w $t0, $fp, -304
	b .interpret_label76
.interpret_label81:
# %op82 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op83 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op82
	la.local $t0, tape
	ld.w $t1, $fp, -312
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op84 = load i32 , i32 * %op83
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op85 = icmp ne i32  %op84, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -325
# br i1  %op85, label %label78, label %label79
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -308
	ld.b $t0, $fp, -325
	bnez $t0, .interpret_label78
	b .interpret_label79
.interpret_label86:
# %op87 = phi i32  [ 1, %label78 ], [ %op107, %label106 ]
# %op88 = phi i32  [ %op2, %label78 ], [ %op93, %label106 ]
# %op89 = icmp sgt i32  %op87, 0
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -337
# %op90 = zext i1  %op89 to i32 
	ld.b $t0, $fp, -337
	st.w $t0, $fp, -344
# %op91 = icmp ne i32  %op90, 0
	ld.w $t0, $fp, -344
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -345
# br i1  %op91, label %label92, label %label99
	ld.b $t0, $fp, -345
	bnez $t0, .interpret_label92
	b .interpret_label99
.interpret_label92:
# %op93 = sub i32  %op88, 1
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op94 = getelementptr i32 , i32 * %arg0, i32  %op93
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -352
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op96 = icmp eq i32  %op95, 91
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 91
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -365
# %op97 = zext i1  %op96 to i32 
	ld.b $t0, $fp, -365
	st.w $t0, $fp, -372
# %op98 = icmp ne i32  %op97, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -373
# br i1  %op98, label %label100, label %label102
	ld.b $t0, $fp, -373
	bnez $t0, .interpret_label100
	b .interpret_label102
.interpret_label99:
# br label %label79
	ld.w $t0, $fp, -336
	st.w $t0, $fp, -308
	b .interpret_label79
.interpret_label100:
# %op101 = sub i32  %op87, 1
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# br label %label106
	ld.w $t0, $fp, -380
	st.w $t0, $fp, -396
	b .interpret_label106
.interpret_label102:
# %op103 = icmp eq i32  %op95, 93
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -381
# %op104 = zext i1  %op103 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op105 = icmp ne i32  %op104, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -389
# br i1  %op105, label %label108, label %label110
	ld.w $t0, $fp, -332
	st.w $t0, $fp, -404
	ld.b $t0, $fp, -389
	bnez $t0, .interpret_label108
	b .interpret_label110
.interpret_label106:
# %op107 = phi i32  [ %op101, %label100 ], [ %op111, %label110 ]
# br label %label86
	ld.w $t0, $fp, -396
	st.w $t0, $fp, -332
	ld.w $t0, $fp, -352
	st.w $t0, $fp, -336
	b .interpret_label86
.interpret_label108:
# %op109 = add i32  %op87, 1
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# br label %label110
	ld.w $t0, $fp, -400
	st.w $t0, $fp, -404
	b .interpret_label110
.interpret_label110:
# %op111 = phi i32  [ %op87, %label102 ], [ %op109, %label108 ]
# br label %label106
	ld.w $t0, $fp, -404
	st.w $t0, $fp, -396
	b .interpret_label106
interpret_ret:
	addi.d $sp, $sp, 416
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
