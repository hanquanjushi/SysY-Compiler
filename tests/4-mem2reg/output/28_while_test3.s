# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl g
	.type g, @object
	.size g, 4
g:
	.space 4
	.globl h
	.type h, @object
	.size h, 4
h:
	.space 4
	.globl f
	.type f, @object
	.size f, 4
f:
	.space 4
	.globl e
	.type e, @object
	.size e, 4
e:
	.space 4
	.text
	.globl EightWhile
	.type EightWhile, @function
EightWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -304
.EightWhile_label_entry:
# br label %label0
	addi.w $t0, $zero, 10
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 7
	st.w $t0, $fp, -24
	addi.w $t0, $zero, 5
	st.w $t0, $fp, -28
	addi.w $t0, $zero, 6
	st.w $t0, $fp, -32
	b .EightWhile_label0
.EightWhile_label0:
# %op1 = phi i32  [ 10, %label_entry ], [ %op22, %label30 ]
# %op2 = phi i32  [ 7, %label_entry ], [ %op23, %label30 ]
# %op3 = phi i32  [ 5, %label_entry ], [ %op9, %label30 ]
# %op4 = phi i32  [ 6, %label_entry ], [ %op31, %label30 ]
# %op5 = icmp slt i32  %op3, 20
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -41
	bnez $t0, .EightWhile_label8
	b .EightWhile_label10
.EightWhile_label8:
# %op9 = add i32  %op3, 3
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# br label %label21
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -92
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -96
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -100
	b .EightWhile_label21
.EightWhile_label10:
# %op11 = add i32  %op4, %op1
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op12 = add i32  %op3, %op11
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op13 = add i32  %op12, %op2
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op14 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op15 = add i32  %op14, %op1
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op16 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op17 = sub i32  %op15, %op16
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -72
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op18 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op19 = add i32  %op17, %op18
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -80
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op20 = sub i32  %op13, %op19
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -84
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# ret i32  %op20
	ld.w $a0, $fp, -88
	b EightWhile_ret
.EightWhile_label21:
# %op22 = phi i32  [ %op1, %label8 ], [ %op33, %label40 ]
# %op23 = phi i32  [ %op2, %label8 ], [ %op41, %label40 ]
# %op24 = phi i32  [ %op4, %label8 ], [ %op29, %label40 ]
# %op25 = icmp slt i32  %op24, 10
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -109
# br i1  %op27, label %label28, label %label30
	ld.b $t0, $fp, -109
	bnez $t0, .EightWhile_label28
	b .EightWhile_label30
.EightWhile_label28:
# %op29 = add i32  %op24, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label32
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -124
	ld.w $t0, $fp, -96
	st.w $t0, $fp, -128
	b .EightWhile_label32
.EightWhile_label30:
# %op31 = sub i32  %op24, 2
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# br label %label0
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -96
	st.w $t0, $fp, -24
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -28
	ld.w $t0, $fp, -120
	st.w $t0, $fp, -32
	b .EightWhile_label0
.EightWhile_label32:
# %op33 = phi i32  [ %op22, %label28 ], [ %op50, %label49 ]
# %op34 = phi i32  [ %op23, %label28 ], [ %op39, %label49 ]
# %op35 = icmp eq i32  %op34, 7
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 7
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -129
# %op36 = zext i1  %op35 to i32 
	ld.b $t0, $fp, -129
	st.w $t0, $fp, -136
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -137
# br i1  %op37, label %label38, label %label40
	ld.b $t0, $fp, -137
	bnez $t0, .EightWhile_label38
	b .EightWhile_label40
.EightWhile_label38:
# %op39 = sub i32  %op34, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# br label %label42
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -152
	b .EightWhile_label42
.EightWhile_label40:
# %op41 = add i32  %op34, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# br label %label21
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -92
	ld.w $t0, $fp, -148
	st.w $t0, $fp, -96
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -100
	b .EightWhile_label21
.EightWhile_label42:
# %op43 = phi i32  [ %op33, %label38 ], [ %op48, %label59 ]
# %op44 = icmp slt i32  %op43, 20
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -161
# br i1  %op46, label %label47, label %label49
	ld.b $t0, $fp, -161
	bnez $t0, .EightWhile_label47
	b .EightWhile_label49
.EightWhile_label47:
# %op48 = add i32  %op43, 3
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# br label %label51
	b .EightWhile_label51
.EightWhile_label49:
# %op50 = sub i32  %op43, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# br label %label32
	ld.w $t0, $fp, -172
	st.w $t0, $fp, -124
	ld.w $t0, $fp, -144
	st.w $t0, $fp, -128
	b .EightWhile_label32
.EightWhile_label51:
# %op52 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op53 = icmp sgt i32  %op52, 1
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -177
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -185
# br i1  %op55, label %label56, label %label59
	ld.b $t0, $fp, -185
	bnez $t0, .EightWhile_label56
	b .EightWhile_label59
.EightWhile_label56:
# %op57 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op58 = sub i32  %op57, 1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# store i32  %op58, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# br label %label62
	b .EightWhile_label62
.EightWhile_label59:
# %op60 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op61 = add i32  %op60, 1
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# store i32  %op61, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -204
	st.w $t1, $t0, 0
# br label %label42
	ld.w $t0, $fp, -168
	st.w $t0, $fp, -152
	b .EightWhile_label42
.EightWhile_label62:
# %op63 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op64 = icmp sgt i32  %op63, 2
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 2
	slt $t2, $t1, $t0
	st.b $t2, $fp, -209
# %op65 = zext i1  %op64 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op66 = icmp ne i32  %op65, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -217
# br i1  %op66, label %label67, label %label70
	ld.b $t0, $fp, -217
	bnez $t0, .EightWhile_label67
	b .EightWhile_label70
.EightWhile_label67:
# %op68 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op69 = sub i32  %op68, 2
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# store i32  %op69, i32 * @f
	la.local $t0, f
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# br label %label73
	b .EightWhile_label73
.EightWhile_label70:
# %op71 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op72 = add i32  %op71, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op72, i32 * @f
	la.local $t0, f
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# br label %label51
	b .EightWhile_label51
.EightWhile_label73:
# %op74 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op75 = icmp slt i32  %op74, 3
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op76 = zext i1  %op75 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op77 = icmp ne i32  %op76, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -249
# br i1  %op77, label %label78, label %label81
	ld.b $t0, $fp, -249
	bnez $t0, .EightWhile_label78
	b .EightWhile_label81
.EightWhile_label78:
# %op79 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op80 = add i32  %op79, 10
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 10
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op80, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# br label %label84
	b .EightWhile_label84
.EightWhile_label81:
# %op82 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op83 = sub i32  %op82, 8
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 8
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# store i32  %op83, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# br label %label62
	b .EightWhile_label62
.EightWhile_label84:
# %op85 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op86 = icmp slt i32  %op85, 10
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -273
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -273
	st.w $t0, $fp, -280
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -280
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -281
# br i1  %op88, label %label89, label %label92
	ld.b $t0, $fp, -281
	bnez $t0, .EightWhile_label89
	b .EightWhile_label92
.EightWhile_label89:
# %op90 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op91 = add i32  %op90, 8
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 8
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# store i32  %op91, i32 * @h
	la.local $t0, h
	ld.w $t1, $fp, -292
	st.w $t1, $t0, 0
# br label %label84
	b .EightWhile_label84
.EightWhile_label92:
# %op93 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op94 = sub i32  %op93, 1
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32  %op94, i32 * @h
	la.local $t0, h
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label73
	b .EightWhile_label73
EightWhile_ret:
	addi.d $sp, $sp, 304
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
# store i32  1, i32 * @g
	la.local $t0, g
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @h
	la.local $t0, h
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  4, i32 * @e
	la.local $t0, e
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  6, i32 * @f
	la.local $t0, f
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op0 = call i32  @EightWhile()
	bl EightWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
