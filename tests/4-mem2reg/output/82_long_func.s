# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl SHIFT_TABLE
	.data
	.type SHIFT_TABLE, @object
	.size SHIFT_TABLE, 64
SHIFT_TABLE:
	.word  1
	.word  2
	.word  4
	.word  8
	.word  16
	.word  32
	.word  64
	.word  128
	.word  256
	.word  512
	.word  1024
	.word  2048
	.word  4096
	.word  8192
	.word  16384
	.word  32768
	.text
	.globl long_func
	.type long_func, @function
long_func:
	lu12i.w $t0, 1
	ori $t0, $t0, 4032
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.long_func_label_entry:
# br label %label0
	addi.w $t0, $zero, 2
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -28
	b .long_func_label0
.long_func_label0:
# %op1 = phi i32  [ 2, %label_entry ], [ %op327, %label621 ]
# %op2 = phi i32  [ 0, %label_entry ], [ %op622, %label621 ]
# %op3 = phi i32  [ 1, %label_entry ], [ %op37, %label621 ]
# %op4 = icmp sgt i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -29
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op6, label %label7, label %label8
	ld.b $t0, $fp, -37
	bnez $t0, .long_func_label7
	b .long_func_label8
.long_func_label7:
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -44
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -48
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -52
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -56
	b .long_func_label9
.long_func_label8:
# call void @putint(i32  %op3)
	ld.w $a0, $fp, -28
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label650
	addi.w $t0, $zero, 2
	st.w $t0, $fp, -2032
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -2036
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -2040
	b .long_func_label650
.long_func_label9:
# %op10 = phi i32  [ 0, %label7 ], [ %op28, %label27 ]
# %op11 = phi i32  [ 0, %label7 ], [ %op31, %label27 ]
# %op12 = phi i32  [ 1, %label7 ], [ %op30, %label27 ]
# %op13 = phi i32  [ %op2, %label7 ], [ %op29, %label27 ]
# %op14 = icmp slt i32  %op11, 16
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -57
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op16, label %label17, label %label20
	ld.b $t0, $fp, -65
	bnez $t0, .long_func_label17
	b .long_func_label20
.long_func_label17:
# %op18 = srem i32  %op13, 2
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -73
# br i1  %op19, label %label32, label %label27
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -104
	ld.b $t0, $fp, -73
	bnez $t0, .long_func_label32
	b .long_func_label27
.long_func_label20:
# %op21 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -74
# br i1  %op21, label %label35, label %label36
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -128
	ld.b $t0, $fp, -74
	bnez $t0, .long_func_label35
	b .long_func_label36
.long_func_label22:
# %op23 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op11
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op25 = mul i32  1, %op24
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -92
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op26 = add i32  %op10, %op25
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -96
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# br label %label27
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -104
	b .long_func_label27
.long_func_label27:
# %op28 = phi i32  [ %op10, %label17 ], [ %op10, %label32 ], [ %op26, %label22 ]
# %op29 = sdiv i32  %op13, 2
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op30 = sdiv i32  %op12, 2
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op31 = add i32  %op11, 1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label9
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -44
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -48
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -52
	ld.w $t0, $fp, -108
	st.w $t0, $fp, -56
	b .long_func_label9
.long_func_label32:
# %op33 = srem i32  %op12, 2
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -121
# br i1  %op34, label %label22, label %label27
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -104
	ld.b $t0, $fp, -121
	bnez $t0, .long_func_label22
	b .long_func_label27
.long_func_label35:
# br label %label38
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -132
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -136
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -140
	b .long_func_label38
.long_func_label36:
# %op37 = phi i32  [ %op3, %label20 ], [ %op41, %label44 ]
# br label %label324
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -1024
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -1028
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1032
	b .long_func_label324
.long_func_label38:
# %op39 = phi i32  [ %op3, %label35 ], [ %op180, %label295 ]
# %op40 = phi i32  [ %op1, %label35 ], [ %op296, %label295 ]
# %op41 = phi i32  [ 0, %label35 ], [ %op73, %label295 ]
# %op42 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -141
# br i1  %op42, label %label43, label %label44
	ld.b $t0, $fp, -141
	bnez $t0, .long_func_label43
	b .long_func_label44
.long_func_label43:
# br label %label45
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -148
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -152
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -156
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -160
	b .long_func_label45
.long_func_label44:
# br label %label36
	ld.w $t0, $fp, -140
	st.w $t0, $fp, -128
	b .long_func_label36
.long_func_label45:
# %op46 = phi i32  [ 0, %label43 ], [ %op64, %label63 ]
# %op47 = phi i32  [ 0, %label43 ], [ %op67, %label63 ]
# %op48 = phi i32  [ 1, %label43 ], [ %op66, %label63 ]
# %op49 = phi i32  [ %op40, %label43 ], [ %op65, %label63 ]
# %op50 = icmp slt i32  %op47, 16
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -161
# %op51 = zext i1  %op50 to i32 
	ld.b $t0, $fp, -161
	st.w $t0, $fp, -168
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -169
# br i1  %op52, label %label53, label %label56
	ld.b $t0, $fp, -169
	bnez $t0, .long_func_label53
	b .long_func_label56
.long_func_label53:
# %op54 = srem i32  %op49, 2
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -177
# br i1  %op55, label %label68, label %label63
	ld.w $t0, $fp, -148
	st.w $t0, $fp, -208
	ld.b $t0, $fp, -177
	bnez $t0, .long_func_label68
	b .long_func_label63
.long_func_label56:
# %op57 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -178
# br i1  %op57, label %label71, label %label72
	ld.w $t0, $fp, -140
	st.w $t0, $fp, -232
	ld.b $t0, $fp, -178
	bnez $t0, .long_func_label71
	b .long_func_label72
.long_func_label58:
# %op59 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op47
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -152
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op60 = load i32 , i32 * %op59
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op61 = mul i32  1, %op60
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -196
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# %op62 = add i32  %op46, %op61
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -200
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# br label %label63
	ld.w $t0, $fp, -204
	st.w $t0, $fp, -208
	b .long_func_label63
.long_func_label63:
# %op64 = phi i32  [ %op46, %label53 ], [ %op46, %label68 ], [ %op62, %label58 ]
# %op65 = sdiv i32  %op49, 2
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op66 = sdiv i32  %op48, 2
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op67 = add i32  %op47, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# br label %label45
	ld.w $t0, $fp, -208
	st.w $t0, $fp, -148
	ld.w $t0, $fp, -220
	st.w $t0, $fp, -152
	ld.w $t0, $fp, -216
	st.w $t0, $fp, -156
	ld.w $t0, $fp, -212
	st.w $t0, $fp, -160
	b .long_func_label45
.long_func_label68:
# %op69 = srem i32  %op48, 2
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# %op70 = icmp ne i32  %op69, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -225
# br i1  %op70, label %label58, label %label63
	ld.w $t0, $fp, -148
	st.w $t0, $fp, -208
	ld.b $t0, $fp, -225
	bnez $t0, .long_func_label58
	b .long_func_label63
.long_func_label71:
# br label %label74
	ld.w $t0, $fp, -140
	st.w $t0, $fp, -236
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -240
	b .long_func_label74
.long_func_label72:
# %op73 = phi i32  [ %op41, %label56 ], [ %op75, %label79 ]
# br label %label179
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -568
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -572
	b .long_func_label179
.long_func_label74:
# %op75 = phi i32  [ %op41, %label71 ], [ %op81, %label152 ]
# %op76 = phi i32  [ %op39, %label71 ], [ %op153, %label152 ]
# %op77 = icmp ne i32  %op76, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -241
# br i1  %op77, label %label78, label %label79
	ld.b $t0, $fp, -241
	bnez $t0, .long_func_label78
	b .long_func_label79
.long_func_label78:
# br label %label80
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -248
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -252
	ld.w $t0, $fp, -240
	st.w $t0, $fp, -256
	ld.w $t0, $fp, -236
	st.w $t0, $fp, -260
	b .long_func_label80
.long_func_label79:
# br label %label72
	ld.w $t0, $fp, -236
	st.w $t0, $fp, -232
	b .long_func_label72
.long_func_label80:
# %op81 = phi i32  [ 0, %label78 ], [ %op101, %label100 ]
# %op82 = phi i32  [ 0, %label78 ], [ %op104, %label100 ]
# %op83 = phi i32  [ %op76, %label78 ], [ %op103, %label100 ]
# %op84 = phi i32  [ %op75, %label78 ], [ %op102, %label100 ]
# %op85 = icmp slt i32  %op82, 16
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -261
# %op86 = zext i1  %op85 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op87 = icmp ne i32  %op86, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -269
# br i1  %op87, label %label88, label %label91
	ld.b $t0, $fp, -269
	bnez $t0, .long_func_label88
	b .long_func_label91
.long_func_label88:
# %op89 = srem i32  %op84, 2
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# %op90 = icmp ne i32  %op89, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -277
# br i1  %op90, label %label92, label %label97
	ld.b $t0, $fp, -277
	bnez $t0, .long_func_label92
	b .long_func_label97
.long_func_label91:
# br label %label119
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -372
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -376
	ld.w $t0, $fp, -240
	st.w $t0, $fp, -380
	ld.w $t0, $fp, -236
	st.w $t0, $fp, -384
	b .long_func_label119
.long_func_label92:
# %op93 = srem i32  %op83, 2
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# %op94 = icmp eq i32  %op93, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -285
# %op95 = zext i1  %op94 to i32 
	ld.b $t0, $fp, -285
	st.w $t0, $fp, -292
# %op96 = icmp ne i32  %op95, 0
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -293
# br i1  %op96, label %label105, label %label110
	ld.w $t0, $fp, -248
	st.w $t0, $fp, -344
	ld.b $t0, $fp, -293
	bnez $t0, .long_func_label105
	b .long_func_label110
.long_func_label97:
# %op98 = srem i32  %op83, 2
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -301
# br i1  %op99, label %label112, label %label117
	ld.w $t0, $fp, -248
	st.w $t0, $fp, -368
	ld.b $t0, $fp, -301
	bnez $t0, .long_func_label112
	b .long_func_label117
.long_func_label100:
# %op101 = phi i32  [ %op111, %label110 ], [ %op118, %label117 ]
# %op102 = sdiv i32  %op84, 2
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op103 = sdiv i32  %op83, 2
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# %op104 = add i32  %op82, 1
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# br label %label80
	ld.w $t0, $fp, -308
	st.w $t0, $fp, -248
	ld.w $t0, $fp, -320
	st.w $t0, $fp, -252
	ld.w $t0, $fp, -316
	st.w $t0, $fp, -256
	ld.w $t0, $fp, -312
	st.w $t0, $fp, -260
	b .long_func_label80
.long_func_label105:
# %op106 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op82
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -252
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op108 = mul i32  1, %op107
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -332
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op109 = add i32  %op81, %op108
	ld.w $t0, $fp, -248
	ld.w $t1, $fp, -336
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# br label %label110
	ld.w $t0, $fp, -340
	st.w $t0, $fp, -344
	b .long_func_label110
.long_func_label110:
# %op111 = phi i32  [ %op81, %label92 ], [ %op109, %label105 ]
# br label %label100
	ld.w $t0, $fp, -344
	st.w $t0, $fp, -308
	b .long_func_label100
.long_func_label112:
# %op113 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op82
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -252
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op114 = load i32 , i32 * %op113
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op115 = mul i32  1, %op114
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -356
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op116 = add i32  %op81, %op115
	ld.w $t0, $fp, -248
	ld.w $t1, $fp, -360
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# br label %label117
	ld.w $t0, $fp, -364
	st.w $t0, $fp, -368
	b .long_func_label117
.long_func_label117:
# %op118 = phi i32  [ %op81, %label97 ], [ %op116, %label112 ]
# br label %label100
	ld.w $t0, $fp, -368
	st.w $t0, $fp, -308
	b .long_func_label100
.long_func_label119:
# %op120 = phi i32  [ 0, %label91 ], [ %op140, %label139 ]
# %op121 = phi i32  [ 0, %label91 ], [ %op143, %label139 ]
# %op122 = phi i32  [ %op76, %label91 ], [ %op142, %label139 ]
# %op123 = phi i32  [ %op75, %label91 ], [ %op141, %label139 ]
# %op124 = icmp slt i32  %op121, 16
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -385
# %op125 = zext i1  %op124 to i32 
	ld.b $t0, $fp, -385
	st.w $t0, $fp, -392
# %op126 = icmp ne i32  %op125, 0
	ld.w $t0, $fp, -392
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -393
# br i1  %op126, label %label127, label %label130
	ld.b $t0, $fp, -393
	bnez $t0, .long_func_label127
	b .long_func_label130
.long_func_label127:
# %op128 = srem i32  %op123, 2
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op129 = icmp ne i32  %op128, 0
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -401
# br i1  %op129, label %label144, label %label139
	ld.w $t0, $fp, -372
	st.w $t0, $fp, -440
	ld.b $t0, $fp, -401
	bnez $t0, .long_func_label144
	b .long_func_label139
.long_func_label130:
# %op131 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -402
# %op132 = zext i1  %op131 to i32 
	ld.b $t0, $fp, -402
	st.w $t0, $fp, -408
# %op133 = icmp ne i32  %op132, 0
	ld.w $t0, $fp, -408
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -409
# br i1  %op133, label %label147, label %label148
	ld.b $t0, $fp, -409
	bnez $t0, .long_func_label147
	b .long_func_label148
.long_func_label134:
# %op135 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op121
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -376
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -424
# %op136 = load i32 , i32 * %op135
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op137 = mul i32  1, %op136
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -428
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op138 = add i32  %op120, %op137
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -432
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -436
# br label %label139
	ld.w $t0, $fp, -436
	st.w $t0, $fp, -440
	b .long_func_label139
.long_func_label139:
# %op140 = phi i32  [ %op120, %label127 ], [ %op120, %label144 ], [ %op138, %label134 ]
# %op141 = sdiv i32  %op123, 2
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -444
# %op142 = sdiv i32  %op122, 2
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op143 = add i32  %op121, 1
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -452
# br label %label119
	ld.w $t0, $fp, -440
	st.w $t0, $fp, -372
	ld.w $t0, $fp, -452
	st.w $t0, $fp, -376
	ld.w $t0, $fp, -448
	st.w $t0, $fp, -380
	ld.w $t0, $fp, -444
	st.w $t0, $fp, -384
	b .long_func_label119
.long_func_label144:
# %op145 = srem i32  %op122, 2
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# %op146 = icmp ne i32  %op145, 0
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -457
# br i1  %op146, label %label134, label %label139
	ld.w $t0, $fp, -372
	st.w $t0, $fp, -440
	ld.b $t0, $fp, -457
	bnez $t0, .long_func_label134
	b .long_func_label139
.long_func_label147:
# br label %label152
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -484
	b .long_func_label152
.long_func_label148:
# %op149 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -472
# %op150 = load i32 , i32 * %op149
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op151 = mul i32  %op120, %op150
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -476
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# br label %label154
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -488
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -492
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -496
	ld.w $t0, $fp, -480
	st.w $t0, $fp, -500
	b .long_func_label154
.long_func_label152:
# %op153 = phi i32  [ 0, %label147 ], [ %op155, %label165 ]
# br label %label74
	ld.w $t0, $fp, -248
	st.w $t0, $fp, -236
	ld.w $t0, $fp, -484
	st.w $t0, $fp, -240
	b .long_func_label74
.long_func_label154:
# %op155 = phi i32  [ 0, %label148 ], [ %op172, %label171 ]
# %op156 = phi i32  [ 0, %label148 ], [ %op175, %label171 ]
# %op157 = phi i32  [ 65535, %label148 ], [ %op174, %label171 ]
# %op158 = phi i32  [ %op151, %label148 ], [ %op173, %label171 ]
# %op159 = icmp slt i32  %op156, 16
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -501
# %op160 = zext i1  %op159 to i32 
	ld.b $t0, $fp, -501
	st.w $t0, $fp, -508
# %op161 = icmp ne i32  %op160, 0
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -509
# br i1  %op161, label %label162, label %label165
	ld.b $t0, $fp, -509
	bnez $t0, .long_func_label162
	b .long_func_label165
.long_func_label162:
# %op163 = srem i32  %op158, 2
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# %op164 = icmp ne i32  %op163, 0
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -517
# br i1  %op164, label %label176, label %label171
	ld.w $t0, $fp, -488
	st.w $t0, $fp, -544
	ld.b $t0, $fp, -517
	bnez $t0, .long_func_label176
	b .long_func_label171
.long_func_label165:
# br label %label152
	ld.w $t0, $fp, -488
	st.w $t0, $fp, -484
	b .long_func_label152
.long_func_label166:
# %op167 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op156
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -492
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -528
# %op168 = load i32 , i32 * %op167
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op169 = mul i32  1, %op168
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -532
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -536
# %op170 = add i32  %op155, %op169
	ld.w $t0, $fp, -488
	ld.w $t1, $fp, -536
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# br label %label171
	ld.w $t0, $fp, -540
	st.w $t0, $fp, -544
	b .long_func_label171
.long_func_label171:
# %op172 = phi i32  [ %op155, %label162 ], [ %op155, %label176 ], [ %op170, %label166 ]
# %op173 = sdiv i32  %op158, 2
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -548
# %op174 = sdiv i32  %op157, 2
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -552
# %op175 = add i32  %op156, 1
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -556
# br label %label154
	ld.w $t0, $fp, -544
	st.w $t0, $fp, -488
	ld.w $t0, $fp, -556
	st.w $t0, $fp, -492
	ld.w $t0, $fp, -552
	st.w $t0, $fp, -496
	ld.w $t0, $fp, -548
	st.w $t0, $fp, -500
	b .long_func_label154
.long_func_label176:
# %op177 = srem i32  %op157, 2
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -560
# %op178 = icmp ne i32  %op177, 0
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -561
# br i1  %op178, label %label166, label %label171
	ld.w $t0, $fp, -488
	st.w $t0, $fp, -544
	ld.b $t0, $fp, -561
	bnez $t0, .long_func_label166
	b .long_func_label171
.long_func_label179:
# %op180 = phi i32  [ %op39, %label72 ], [ %op189, %label260 ]
# %op181 = phi i32  [ %op39, %label72 ], [ %op261, %label260 ]
# %op182 = icmp ne i32  %op181, 0
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -573
# br i1  %op182, label %label183, label %label184
	ld.b $t0, $fp, -573
	bnez $t0, .long_func_label183
	b .long_func_label184
.long_func_label183:
# br label %label188
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -588
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -592
	ld.w $t0, $fp, -572
	st.w $t0, $fp, -596
	ld.w $t0, $fp, -568
	st.w $t0, $fp, -600
	b .long_func_label188
.long_func_label184:
# %op185 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -574
# %op186 = zext i1  %op185 to i32 
	ld.b $t0, $fp, -574
	st.w $t0, $fp, -580
# %op187 = icmp ne i32  %op186, 0
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -581
# br i1  %op187, label %label287, label %label291
	ld.b $t0, $fp, -581
	bnez $t0, .long_func_label287
	b .long_func_label291
.long_func_label188:
# %op189 = phi i32  [ 0, %label183 ], [ %op209, %label208 ]
# %op190 = phi i32  [ 0, %label183 ], [ %op212, %label208 ]
# %op191 = phi i32  [ %op181, %label183 ], [ %op211, %label208 ]
# %op192 = phi i32  [ %op180, %label183 ], [ %op210, %label208 ]
# %op193 = icmp slt i32  %op190, 16
	ld.w $t0, $fp, -592
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -601
# %op194 = zext i1  %op193 to i32 
	ld.b $t0, $fp, -601
	st.w $t0, $fp, -608
# %op195 = icmp ne i32  %op194, 0
	ld.w $t0, $fp, -608
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -609
# br i1  %op195, label %label196, label %label199
	ld.b $t0, $fp, -609
	bnez $t0, .long_func_label196
	b .long_func_label199
.long_func_label196:
# %op197 = srem i32  %op192, 2
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# %op198 = icmp ne i32  %op197, 0
	ld.w $t0, $fp, -616
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -617
# br i1  %op198, label %label200, label %label205
	ld.b $t0, $fp, -617
	bnez $t0, .long_func_label200
	b .long_func_label205
.long_func_label199:
# br label %label227
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -716
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -720
	ld.w $t0, $fp, -572
	st.w $t0, $fp, -724
	ld.w $t0, $fp, -568
	st.w $t0, $fp, -728
	b .long_func_label227
.long_func_label200:
# %op201 = srem i32  %op191, 2
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op202 = icmp eq i32  %op201, 0
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -625
# %op203 = zext i1  %op202 to i32 
	ld.b $t0, $fp, -625
	st.w $t0, $fp, -632
# %op204 = icmp ne i32  %op203, 0
	ld.w $t0, $fp, -632
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -633
# br i1  %op204, label %label213, label %label218
	ld.w $t0, $fp, -588
	st.w $t0, $fp, -688
	ld.b $t0, $fp, -633
	bnez $t0, .long_func_label213
	b .long_func_label218
.long_func_label205:
# %op206 = srem i32  %op191, 2
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op207 = icmp ne i32  %op206, 0
	ld.w $t0, $fp, -640
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -641
# br i1  %op207, label %label220, label %label225
	ld.w $t0, $fp, -588
	st.w $t0, $fp, -712
	ld.b $t0, $fp, -641
	bnez $t0, .long_func_label220
	b .long_func_label225
.long_func_label208:
# %op209 = phi i32  [ %op219, %label218 ], [ %op226, %label225 ]
# %op210 = sdiv i32  %op192, 2
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -652
# %op211 = sdiv i32  %op191, 2
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# %op212 = add i32  %op190, 1
	ld.w $t0, $fp, -592
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -660
# br label %label188
	ld.w $t0, $fp, -648
	st.w $t0, $fp, -588
	ld.w $t0, $fp, -660
	st.w $t0, $fp, -592
	ld.w $t0, $fp, -656
	st.w $t0, $fp, -596
	ld.w $t0, $fp, -652
	st.w $t0, $fp, -600
	b .long_func_label188
.long_func_label213:
# %op214 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op190
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -592
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -672
# %op215 = load i32 , i32 * %op214
	ld.d $t0, $fp, -672
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op216 = mul i32  1, %op215
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -676
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -680
# %op217 = add i32  %op189, %op216
	ld.w $t0, $fp, -588
	ld.w $t1, $fp, -680
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# br label %label218
	ld.w $t0, $fp, -684
	st.w $t0, $fp, -688
	b .long_func_label218
.long_func_label218:
# %op219 = phi i32  [ %op189, %label200 ], [ %op217, %label213 ]
# br label %label208
	ld.w $t0, $fp, -688
	st.w $t0, $fp, -648
	b .long_func_label208
.long_func_label220:
# %op221 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op190
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -592
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -696
# %op222 = load i32 , i32 * %op221
	ld.d $t0, $fp, -696
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op223 = mul i32  1, %op222
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -700
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# %op224 = add i32  %op189, %op223
	ld.w $t0, $fp, -588
	ld.w $t1, $fp, -704
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -708
# br label %label225
	ld.w $t0, $fp, -708
	st.w $t0, $fp, -712
	b .long_func_label225
.long_func_label225:
# %op226 = phi i32  [ %op189, %label205 ], [ %op224, %label220 ]
# br label %label208
	ld.w $t0, $fp, -712
	st.w $t0, $fp, -648
	b .long_func_label208
.long_func_label227:
# %op228 = phi i32  [ 0, %label199 ], [ %op248, %label247 ]
# %op229 = phi i32  [ 0, %label199 ], [ %op251, %label247 ]
# %op230 = phi i32  [ %op181, %label199 ], [ %op250, %label247 ]
# %op231 = phi i32  [ %op180, %label199 ], [ %op249, %label247 ]
# %op232 = icmp slt i32  %op229, 16
	ld.w $t0, $fp, -720
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -729
# %op233 = zext i1  %op232 to i32 
	ld.b $t0, $fp, -729
	st.w $t0, $fp, -736
# %op234 = icmp ne i32  %op233, 0
	ld.w $t0, $fp, -736
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -737
# br i1  %op234, label %label235, label %label238
	ld.b $t0, $fp, -737
	bnez $t0, .long_func_label235
	b .long_func_label238
.long_func_label235:
# %op236 = srem i32  %op231, 2
	ld.w $t0, $fp, -728
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# %op237 = icmp ne i32  %op236, 0
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -745
# br i1  %op237, label %label252, label %label247
	ld.w $t0, $fp, -716
	st.w $t0, $fp, -784
	ld.b $t0, $fp, -745
	bnez $t0, .long_func_label252
	b .long_func_label247
.long_func_label238:
# %op239 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -746
# %op240 = zext i1  %op239 to i32 
	ld.b $t0, $fp, -746
	st.w $t0, $fp, -752
# %op241 = icmp ne i32  %op240, 0
	ld.w $t0, $fp, -752
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -753
# br i1  %op241, label %label255, label %label256
	ld.b $t0, $fp, -753
	bnez $t0, .long_func_label255
	b .long_func_label256
.long_func_label242:
# %op243 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op229
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -720
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -768
# %op244 = load i32 , i32 * %op243
	ld.d $t0, $fp, -768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op245 = mul i32  1, %op244
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -772
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -776
# %op246 = add i32  %op228, %op245
	ld.w $t0, $fp, -716
	ld.w $t1, $fp, -776
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -780
# br label %label247
	ld.w $t0, $fp, -780
	st.w $t0, $fp, -784
	b .long_func_label247
.long_func_label247:
# %op248 = phi i32  [ %op228, %label235 ], [ %op228, %label252 ], [ %op246, %label242 ]
# %op249 = sdiv i32  %op231, 2
	ld.w $t0, $fp, -728
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -788
# %op250 = sdiv i32  %op230, 2
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -792
# %op251 = add i32  %op229, 1
	ld.w $t0, $fp, -720
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -796
# br label %label227
	ld.w $t0, $fp, -784
	st.w $t0, $fp, -716
	ld.w $t0, $fp, -796
	st.w $t0, $fp, -720
	ld.w $t0, $fp, -792
	st.w $t0, $fp, -724
	ld.w $t0, $fp, -788
	st.w $t0, $fp, -728
	b .long_func_label227
.long_func_label252:
# %op253 = srem i32  %op230, 2
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op254 = icmp ne i32  %op253, 0
	ld.w $t0, $fp, -800
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -801
# br i1  %op254, label %label242, label %label247
	ld.w $t0, $fp, -716
	st.w $t0, $fp, -784
	ld.b $t0, $fp, -801
	bnez $t0, .long_func_label242
	b .long_func_label247
.long_func_label255:
# br label %label260
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -828
	b .long_func_label260
.long_func_label256:
# %op257 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -816
# %op258 = load i32 , i32 * %op257
	ld.d $t0, $fp, -816
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op259 = mul i32  %op228, %op258
	ld.w $t0, $fp, -716
	ld.w $t1, $fp, -820
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -824
# br label %label262
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -832
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -836
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -840
	ld.w $t0, $fp, -824
	st.w $t0, $fp, -844
	b .long_func_label262
.long_func_label260:
# %op261 = phi i32  [ 0, %label255 ], [ %op263, %label273 ]
# br label %label179
	ld.w $t0, $fp, -588
	st.w $t0, $fp, -568
	ld.w $t0, $fp, -828
	st.w $t0, $fp, -572
	b .long_func_label179
.long_func_label262:
# %op263 = phi i32  [ 0, %label256 ], [ %op280, %label279 ]
# %op264 = phi i32  [ 0, %label256 ], [ %op283, %label279 ]
# %op265 = phi i32  [ 65535, %label256 ], [ %op282, %label279 ]
# %op266 = phi i32  [ %op259, %label256 ], [ %op281, %label279 ]
# %op267 = icmp slt i32  %op264, 16
	ld.w $t0, $fp, -836
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -845
# %op268 = zext i1  %op267 to i32 
	ld.b $t0, $fp, -845
	st.w $t0, $fp, -852
# %op269 = icmp ne i32  %op268, 0
	ld.w $t0, $fp, -852
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -853
# br i1  %op269, label %label270, label %label273
	ld.b $t0, $fp, -853
	bnez $t0, .long_func_label270
	b .long_func_label273
.long_func_label270:
# %op271 = srem i32  %op266, 2
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# %op272 = icmp ne i32  %op271, 0
	ld.w $t0, $fp, -860
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -861
# br i1  %op272, label %label284, label %label279
	ld.w $t0, $fp, -832
	st.w $t0, $fp, -888
	ld.b $t0, $fp, -861
	bnez $t0, .long_func_label284
	b .long_func_label279
.long_func_label273:
# br label %label260
	ld.w $t0, $fp, -832
	st.w $t0, $fp, -828
	b .long_func_label260
.long_func_label274:
# %op275 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op264
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -836
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -872
# %op276 = load i32 , i32 * %op275
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op277 = mul i32  1, %op276
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -876
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -880
# %op278 = add i32  %op263, %op277
	ld.w $t0, $fp, -832
	ld.w $t1, $fp, -880
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -884
# br label %label279
	ld.w $t0, $fp, -884
	st.w $t0, $fp, -888
	b .long_func_label279
.long_func_label279:
# %op280 = phi i32  [ %op263, %label270 ], [ %op263, %label284 ], [ %op278, %label274 ]
# %op281 = sdiv i32  %op266, 2
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -892
# %op282 = sdiv i32  %op265, 2
	ld.w $t0, $fp, -840
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -896
# %op283 = add i32  %op264, 1
	ld.w $t0, $fp, -836
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# br label %label262
	ld.w $t0, $fp, -888
	st.w $t0, $fp, -832
	ld.w $t0, $fp, -900
	st.w $t0, $fp, -836
	ld.w $t0, $fp, -896
	st.w $t0, $fp, -840
	ld.w $t0, $fp, -892
	st.w $t0, $fp, -844
	b .long_func_label262
.long_func_label284:
# %op285 = srem i32  %op265, 2
	ld.w $t0, $fp, -840
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# %op286 = icmp ne i32  %op285, 0
	ld.w $t0, $fp, -904
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -905
# br i1  %op286, label %label274, label %label279
	ld.w $t0, $fp, -832
	st.w $t0, $fp, -888
	ld.b $t0, $fp, -905
	bnez $t0, .long_func_label274
	b .long_func_label279
.long_func_label287:
# %op288 = icmp slt i32  %op40, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -906
# %op289 = zext i1  %op288 to i32 
	ld.b $t0, $fp, -906
	st.w $t0, $fp, -912
# %op290 = icmp ne i32  %op289, 0
	ld.w $t0, $fp, -912
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -913
# br i1  %op290, label %label297, label %label298
	ld.b $t0, $fp, -913
	bnez $t0, .long_func_label297
	b .long_func_label298
.long_func_label291:
# %op292 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -914
# %op293 = zext i1  %op292 to i32 
	ld.b $t0, $fp, -914
	st.w $t0, $fp, -920
# %op294 = icmp ne i32  %op293, 0
	ld.w $t0, $fp, -920
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -921
# br i1  %op294, label %label301, label %label305
	ld.b $t0, $fp, -921
	bnez $t0, .long_func_label301
	b .long_func_label305
.long_func_label295:
# %op296 = phi i32  [ %op300, %label299 ], [ %op307, %label306 ]
# br label %label38
	ld.w $t0, $fp, -568
	st.w $t0, $fp, -132
	ld.w $t0, $fp, -928
	st.w $t0, $fp, -136
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -140
	b .long_func_label38
.long_func_label297:
# br label %label299
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -932
	b .long_func_label299
.long_func_label298:
# br label %label299
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -932
	b .long_func_label299
.long_func_label299:
# %op300 = phi i32  [ 65535, %label297 ], [ 0, %label298 ]
# br label %label295
	ld.w $t0, $fp, -932
	st.w $t0, $fp, -928
	b .long_func_label295
.long_func_label301:
# %op302 = icmp sgt i32  %op40, 32767
	ld.w $t0, $fp, -136
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	st.b $t2, $fp, -933
# %op303 = zext i1  %op302 to i32 
	ld.b $t0, $fp, -933
	st.w $t0, $fp, -940
# %op304 = icmp ne i32  %op303, 0
	ld.w $t0, $fp, -940
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -941
# br i1  %op304, label %label308, label %label318
	ld.b $t0, $fp, -941
	bnez $t0, .long_func_label308
	b .long_func_label318
.long_func_label305:
# br label %label306
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -948
	b .long_func_label306
.long_func_label306:
# %op307 = phi i32  [ %op323, %label322 ], [ %op40, %label305 ]
# br label %label295
	ld.w $t0, $fp, -948
	st.w $t0, $fp, -928
	b .long_func_label295
.long_func_label308:
# %op309 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -960
# %op310 = load i32 , i32 * %op309
	ld.d $t0, $fp, -960
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op311 = sdiv i32  %op40, %op310
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -964
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -968
# %op312 = add i32  %op311, 65536
	ld.w $t0, $fp, -968
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -972
# %op313 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# %op314 = add i32  %op313, 1
	ld.w $t0, $fp, -976
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -980
# %op315 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op314
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -980
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -992
# %op316 = load i32 , i32 * %op315
	ld.d $t0, $fp, -992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op317 = sub i32  %op312, %op316
	ld.w $t0, $fp, -972
	ld.w $t1, $fp, -996
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1000
# br label %label322
	ld.w $t0, $fp, -1000
	st.w $t0, $fp, -1020
	b .long_func_label322
.long_func_label318:
# %op319 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1008
# %op320 = load i32 , i32 * %op319
	ld.d $t0, $fp, -1008
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op321 = sdiv i32  %op40, %op320
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -1012
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1016
# br label %label322
	ld.w $t0, $fp, -1016
	st.w $t0, $fp, -1020
	b .long_func_label322
.long_func_label322:
# %op323 = phi i32  [ %op317, %label308 ], [ %op321, %label318 ]
# br label %label306
	ld.w $t0, $fp, -1020
	st.w $t0, $fp, -948
	b .long_func_label306
.long_func_label324:
# %op325 = phi i32  [ %op1, %label36 ], [ %op469, %label584 ]
# %op326 = phi i32  [ %op1, %label36 ], [ %op585, %label584 ]
# %op327 = phi i32  [ 0, %label36 ], [ %op362, %label584 ]
# %op328 = icmp ne i32  %op326, 0
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -1033
# br i1  %op328, label %label329, label %label330
	ld.b $t0, $fp, -1033
	bnez $t0, .long_func_label329
	b .long_func_label330
.long_func_label329:
# br label %label334
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1048
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1052
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -1056
	ld.w $t0, $fp, -1028
	st.w $t0, $fp, -1060
	b .long_func_label334
.long_func_label330:
# %op331 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -1034
# %op332 = zext i1  %op331 to i32 
	ld.b $t0, $fp, -1034
	st.w $t0, $fp, -1040
# %op333 = icmp ne i32  %op332, 0
	ld.w $t0, $fp, -1040
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -1041
# br i1  %op333, label %label613, label %label617
	ld.b $t0, $fp, -1041
	bnez $t0, .long_func_label613
	b .long_func_label617
.long_func_label334:
# %op335 = phi i32  [ 0, %label329 ], [ %op353, %label352 ]
# %op336 = phi i32  [ 0, %label329 ], [ %op356, %label352 ]
# %op337 = phi i32  [ 1, %label329 ], [ %op355, %label352 ]
# %op338 = phi i32  [ %op326, %label329 ], [ %op354, %label352 ]
# %op339 = icmp slt i32  %op336, 16
	ld.w $t0, $fp, -1052
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1061
# %op340 = zext i1  %op339 to i32 
	ld.b $t0, $fp, -1061
	st.w $t0, $fp, -1068
# %op341 = icmp ne i32  %op340, 0
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -1069
# br i1  %op341, label %label342, label %label345
	ld.b $t0, $fp, -1069
	bnez $t0, .long_func_label342
	b .long_func_label345
.long_func_label342:
# %op343 = srem i32  %op338, 2
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1076
# %op344 = icmp ne i32  %op343, 0
	ld.w $t0, $fp, -1076
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -1077
# br i1  %op344, label %label357, label %label352
	ld.w $t0, $fp, -1048
	st.w $t0, $fp, -1104
	ld.b $t0, $fp, -1077
	bnez $t0, .long_func_label357
	b .long_func_label352
.long_func_label345:
# %op346 = icmp ne i32  %op335, 0
	ld.w $t0, $fp, -1048
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -1078
# br i1  %op346, label %label360, label %label361
	ld.w $t0, $fp, -1032
	st.w $t0, $fp, -1128
	ld.b $t0, $fp, -1078
	bnez $t0, .long_func_label360
	b .long_func_label361
.long_func_label347:
# %op348 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op336
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1052
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1088
# %op349 = load i32 , i32 * %op348
	ld.d $t0, $fp, -1088
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1092
# %op350 = mul i32  1, %op349
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1092
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1096
# %op351 = add i32  %op335, %op350
	ld.w $t0, $fp, -1048
	ld.w $t1, $fp, -1096
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1100
# br label %label352
	ld.w $t0, $fp, -1100
	st.w $t0, $fp, -1104
	b .long_func_label352
.long_func_label352:
# %op353 = phi i32  [ %op335, %label342 ], [ %op335, %label357 ], [ %op351, %label347 ]
# %op354 = sdiv i32  %op338, 2
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1108
# %op355 = sdiv i32  %op337, 2
	ld.w $t0, $fp, -1056
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1112
# %op356 = add i32  %op336, 1
	ld.w $t0, $fp, -1052
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1116
# br label %label334
	ld.w $t0, $fp, -1104
	st.w $t0, $fp, -1048
	ld.w $t0, $fp, -1116
	st.w $t0, $fp, -1052
	ld.w $t0, $fp, -1112
	st.w $t0, $fp, -1056
	ld.w $t0, $fp, -1108
	st.w $t0, $fp, -1060
	b .long_func_label334
.long_func_label357:
# %op358 = srem i32  %op337, 2
	ld.w $t0, $fp, -1056
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1120
# %op359 = icmp ne i32  %op358, 0
	ld.w $t0, $fp, -1120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -1121
# br i1  %op359, label %label347, label %label352
	ld.w $t0, $fp, -1048
	st.w $t0, $fp, -1104
	ld.b $t0, $fp, -1121
	bnez $t0, .long_func_label347
	b .long_func_label352
.long_func_label360:
# br label %label363
	ld.w $t0, $fp, -1032
	st.w $t0, $fp, -1132
	ld.w $t0, $fp, -1024
	st.w $t0, $fp, -1136
	b .long_func_label363
.long_func_label361:
# %op362 = phi i32  [ %op327, %label345 ], [ %op364, %label368 ]
# br label %label468
	ld.w $t0, $fp, -1024
	st.w $t0, $fp, -1464
	ld.w $t0, $fp, -1024
	st.w $t0, $fp, -1468
	b .long_func_label468
.long_func_label363:
# %op364 = phi i32  [ %op327, %label360 ], [ %op370, %label441 ]
# %op365 = phi i32  [ %op325, %label360 ], [ %op442, %label441 ]
# %op366 = icmp ne i32  %op365, 0
	ld.w $t0, $fp, -1136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1137
# br i1  %op366, label %label367, label %label368
	ld.b $t0, $fp, -1137
	bnez $t0, .long_func_label367
	b .long_func_label368
.long_func_label367:
# br label %label369
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1144
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1148
	ld.w $t0, $fp, -1136
	st.w $t0, $fp, -1152
	ld.w $t0, $fp, -1132
	st.w $t0, $fp, -1156
	b .long_func_label369
.long_func_label368:
# br label %label361
	ld.w $t0, $fp, -1132
	st.w $t0, $fp, -1128
	b .long_func_label361
.long_func_label369:
# %op370 = phi i32  [ 0, %label367 ], [ %op390, %label389 ]
# %op371 = phi i32  [ 0, %label367 ], [ %op393, %label389 ]
# %op372 = phi i32  [ %op365, %label367 ], [ %op392, %label389 ]
# %op373 = phi i32  [ %op364, %label367 ], [ %op391, %label389 ]
# %op374 = icmp slt i32  %op371, 16
	ld.w $t0, $fp, -1148
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1157
# %op375 = zext i1  %op374 to i32 
	ld.b $t0, $fp, -1157
	st.w $t0, $fp, -1164
# %op376 = icmp ne i32  %op375, 0
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1165
# br i1  %op376, label %label377, label %label380
	ld.b $t0, $fp, -1165
	bnez $t0, .long_func_label377
	b .long_func_label380
.long_func_label377:
# %op378 = srem i32  %op373, 2
	ld.w $t0, $fp, -1156
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1172
# %op379 = icmp ne i32  %op378, 0
	ld.w $t0, $fp, -1172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -1173
# br i1  %op379, label %label381, label %label386
	ld.b $t0, $fp, -1173
	bnez $t0, .long_func_label381
	b .long_func_label386
.long_func_label380:
# br label %label408
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1268
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1272
	ld.w $t0, $fp, -1136
	st.w $t0, $fp, -1276
	ld.w $t0, $fp, -1132
	st.w $t0, $fp, -1280
	b .long_func_label408
.long_func_label381:
# %op382 = srem i32  %op372, 2
	ld.w $t0, $fp, -1152
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1180
# %op383 = icmp eq i32  %op382, 0
	ld.w $t0, $fp, -1180
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -1181
# %op384 = zext i1  %op383 to i32 
	ld.b $t0, $fp, -1181
	st.w $t0, $fp, -1188
# %op385 = icmp ne i32  %op384, 0
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -1189
# br i1  %op385, label %label394, label %label399
	ld.w $t0, $fp, -1144
	st.w $t0, $fp, -1240
	ld.b $t0, $fp, -1189
	bnez $t0, .long_func_label394
	b .long_func_label399
.long_func_label386:
# %op387 = srem i32  %op372, 2
	ld.w $t0, $fp, -1152
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1196
# %op388 = icmp ne i32  %op387, 0
	ld.w $t0, $fp, -1196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -1197
# br i1  %op388, label %label401, label %label406
	ld.w $t0, $fp, -1144
	st.w $t0, $fp, -1264
	ld.b $t0, $fp, -1197
	bnez $t0, .long_func_label401
	b .long_func_label406
.long_func_label389:
# %op390 = phi i32  [ %op400, %label399 ], [ %op407, %label406 ]
# %op391 = sdiv i32  %op373, 2
	ld.w $t0, $fp, -1156
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1208
# %op392 = sdiv i32  %op372, 2
	ld.w $t0, $fp, -1152
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1212
# %op393 = add i32  %op371, 1
	ld.w $t0, $fp, -1148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1216
# br label %label369
	ld.w $t0, $fp, -1204
	st.w $t0, $fp, -1144
	ld.w $t0, $fp, -1216
	st.w $t0, $fp, -1148
	ld.w $t0, $fp, -1212
	st.w $t0, $fp, -1152
	ld.w $t0, $fp, -1208
	st.w $t0, $fp, -1156
	b .long_func_label369
.long_func_label394:
# %op395 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op371
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1224
# %op396 = load i32 , i32 * %op395
	ld.d $t0, $fp, -1224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op397 = mul i32  1, %op396
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1228
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1232
# %op398 = add i32  %op370, %op397
	ld.w $t0, $fp, -1144
	ld.w $t1, $fp, -1232
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1236
# br label %label399
	ld.w $t0, $fp, -1236
	st.w $t0, $fp, -1240
	b .long_func_label399
.long_func_label399:
# %op400 = phi i32  [ %op370, %label381 ], [ %op398, %label394 ]
# br label %label389
	ld.w $t0, $fp, -1240
	st.w $t0, $fp, -1204
	b .long_func_label389
.long_func_label401:
# %op402 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op371
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1248
# %op403 = load i32 , i32 * %op402
	ld.d $t0, $fp, -1248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1252
# %op404 = mul i32  1, %op403
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1252
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1256
# %op405 = add i32  %op370, %op404
	ld.w $t0, $fp, -1144
	ld.w $t1, $fp, -1256
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1260
# br label %label406
	ld.w $t0, $fp, -1260
	st.w $t0, $fp, -1264
	b .long_func_label406
.long_func_label406:
# %op407 = phi i32  [ %op370, %label386 ], [ %op405, %label401 ]
# br label %label389
	ld.w $t0, $fp, -1264
	st.w $t0, $fp, -1204
	b .long_func_label389
.long_func_label408:
# %op409 = phi i32  [ 0, %label380 ], [ %op429, %label428 ]
# %op410 = phi i32  [ 0, %label380 ], [ %op432, %label428 ]
# %op411 = phi i32  [ %op365, %label380 ], [ %op431, %label428 ]
# %op412 = phi i32  [ %op364, %label380 ], [ %op430, %label428 ]
# %op413 = icmp slt i32  %op410, 16
	ld.w $t0, $fp, -1272
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1281
# %op414 = zext i1  %op413 to i32 
	ld.b $t0, $fp, -1281
	st.w $t0, $fp, -1288
# %op415 = icmp ne i32  %op414, 0
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	st.b $t2, $fp, -1289
# br i1  %op415, label %label416, label %label419
	ld.b $t0, $fp, -1289
	bnez $t0, .long_func_label416
	b .long_func_label419
.long_func_label416:
# %op417 = srem i32  %op412, 2
	ld.w $t0, $fp, -1280
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1296
# %op418 = icmp ne i32  %op417, 0
	ld.w $t0, $fp, -1296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	st.b $t2, $fp, -1297
# br i1  %op418, label %label433, label %label428
	ld.w $t0, $fp, -1268
	st.w $t0, $fp, -1336
	ld.b $t0, $fp, -1297
	bnez $t0, .long_func_label433
	b .long_func_label428
.long_func_label419:
# %op420 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1298
# %op421 = zext i1  %op420 to i32 
	ld.b $t0, $fp, -1298
	st.w $t0, $fp, -1304
# %op422 = icmp ne i32  %op421, 0
	ld.w $t0, $fp, -1304
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	st.b $t2, $fp, -1305
# br i1  %op422, label %label436, label %label437
	ld.b $t0, $fp, -1305
	bnez $t0, .long_func_label436
	b .long_func_label437
.long_func_label423:
# %op424 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op410
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1272
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1320
# %op425 = load i32 , i32 * %op424
	ld.d $t0, $fp, -1320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1324
# %op426 = mul i32  1, %op425
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1324
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1328
# %op427 = add i32  %op409, %op426
	ld.w $t0, $fp, -1268
	ld.w $t1, $fp, -1328
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1332
# br label %label428
	ld.w $t0, $fp, -1332
	st.w $t0, $fp, -1336
	b .long_func_label428
.long_func_label428:
# %op429 = phi i32  [ %op409, %label416 ], [ %op409, %label433 ], [ %op427, %label423 ]
# %op430 = sdiv i32  %op412, 2
	ld.w $t0, $fp, -1280
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1340
# %op431 = sdiv i32  %op411, 2
	ld.w $t0, $fp, -1276
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1344
# %op432 = add i32  %op410, 1
	ld.w $t0, $fp, -1272
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1348
# br label %label408
	ld.w $t0, $fp, -1336
	st.w $t0, $fp, -1268
	ld.w $t0, $fp, -1348
	st.w $t0, $fp, -1272
	ld.w $t0, $fp, -1344
	st.w $t0, $fp, -1276
	ld.w $t0, $fp, -1340
	st.w $t0, $fp, -1280
	b .long_func_label408
.long_func_label433:
# %op434 = srem i32  %op411, 2
	ld.w $t0, $fp, -1276
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1352
# %op435 = icmp ne i32  %op434, 0
	ld.w $t0, $fp, -1352
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	st.b $t2, $fp, -1353
# br i1  %op435, label %label423, label %label428
	ld.w $t0, $fp, -1268
	st.w $t0, $fp, -1336
	ld.b $t0, $fp, -1353
	bnez $t0, .long_func_label423
	b .long_func_label428
.long_func_label436:
# br label %label441
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1380
	b .long_func_label441
.long_func_label437:
# %op438 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1368
# %op439 = load i32 , i32 * %op438
	ld.d $t0, $fp, -1368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1372
# %op440 = mul i32  %op409, %op439
	ld.w $t0, $fp, -1268
	ld.w $t1, $fp, -1372
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1376
# br label %label443
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1384
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1388
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -1392
	ld.w $t0, $fp, -1376
	st.w $t0, $fp, -1396
	b .long_func_label443
.long_func_label441:
# %op442 = phi i32  [ 0, %label436 ], [ %op444, %label454 ]
# br label %label363
	ld.w $t0, $fp, -1144
	st.w $t0, $fp, -1132
	ld.w $t0, $fp, -1380
	st.w $t0, $fp, -1136
	b .long_func_label363
.long_func_label443:
# %op444 = phi i32  [ 0, %label437 ], [ %op461, %label460 ]
# %op445 = phi i32  [ 0, %label437 ], [ %op464, %label460 ]
# %op446 = phi i32  [ 65535, %label437 ], [ %op463, %label460 ]
# %op447 = phi i32  [ %op440, %label437 ], [ %op462, %label460 ]
# %op448 = icmp slt i32  %op445, 16
	ld.w $t0, $fp, -1388
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1397
# %op449 = zext i1  %op448 to i32 
	ld.b $t0, $fp, -1397
	st.w $t0, $fp, -1404
# %op450 = icmp ne i32  %op449, 0
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	st.b $t2, $fp, -1405
# br i1  %op450, label %label451, label %label454
	ld.b $t0, $fp, -1405
	bnez $t0, .long_func_label451
	b .long_func_label454
.long_func_label451:
# %op452 = srem i32  %op447, 2
	ld.w $t0, $fp, -1396
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1412
# %op453 = icmp ne i32  %op452, 0
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	st.b $t2, $fp, -1413
# br i1  %op453, label %label465, label %label460
	ld.w $t0, $fp, -1384
	st.w $t0, $fp, -1440
	ld.b $t0, $fp, -1413
	bnez $t0, .long_func_label465
	b .long_func_label460
.long_func_label454:
# br label %label441
	ld.w $t0, $fp, -1384
	st.w $t0, $fp, -1380
	b .long_func_label441
.long_func_label455:
# %op456 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op445
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1388
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1424
# %op457 = load i32 , i32 * %op456
	ld.d $t0, $fp, -1424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1428
# %op458 = mul i32  1, %op457
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1428
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1432
# %op459 = add i32  %op444, %op458
	ld.w $t0, $fp, -1384
	ld.w $t1, $fp, -1432
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1436
# br label %label460
	ld.w $t0, $fp, -1436
	st.w $t0, $fp, -1440
	b .long_func_label460
.long_func_label460:
# %op461 = phi i32  [ %op444, %label451 ], [ %op444, %label465 ], [ %op459, %label455 ]
# %op462 = sdiv i32  %op447, 2
	ld.w $t0, $fp, -1396
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1444
# %op463 = sdiv i32  %op446, 2
	ld.w $t0, $fp, -1392
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1448
# %op464 = add i32  %op445, 1
	ld.w $t0, $fp, -1388
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1452
# br label %label443
	ld.w $t0, $fp, -1440
	st.w $t0, $fp, -1384
	ld.w $t0, $fp, -1452
	st.w $t0, $fp, -1388
	ld.w $t0, $fp, -1448
	st.w $t0, $fp, -1392
	ld.w $t0, $fp, -1444
	st.w $t0, $fp, -1396
	b .long_func_label443
.long_func_label465:
# %op466 = srem i32  %op446, 2
	ld.w $t0, $fp, -1392
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1456
# %op467 = icmp ne i32  %op466, 0
	ld.w $t0, $fp, -1456
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	st.b $t2, $fp, -1457
# br i1  %op467, label %label455, label %label460
	ld.w $t0, $fp, -1384
	st.w $t0, $fp, -1440
	ld.b $t0, $fp, -1457
	bnez $t0, .long_func_label455
	b .long_func_label460
.long_func_label468:
# %op469 = phi i32  [ %op325, %label361 ], [ %op478, %label549 ]
# %op470 = phi i32  [ %op325, %label361 ], [ %op550, %label549 ]
# %op471 = icmp ne i32  %op470, 0
	ld.w $t0, $fp, -1468
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	st.b $t2, $fp, -1469
# br i1  %op471, label %label472, label %label473
	ld.b $t0, $fp, -1469
	bnez $t0, .long_func_label472
	b .long_func_label473
.long_func_label472:
# br label %label477
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1484
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1488
	ld.w $t0, $fp, -1468
	st.w $t0, $fp, -1492
	ld.w $t0, $fp, -1464
	st.w $t0, $fp, -1496
	b .long_func_label477
.long_func_label473:
# %op474 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	st.b $t2, $fp, -1470
# %op475 = zext i1  %op474 to i32 
	ld.b $t0, $fp, -1470
	st.w $t0, $fp, -1476
# %op476 = icmp ne i32  %op475, 0
	ld.w $t0, $fp, -1476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	st.b $t2, $fp, -1477
# br i1  %op476, label %label576, label %label580
	ld.b $t0, $fp, -1477
	bnez $t0, .long_func_label576
	b .long_func_label580
.long_func_label477:
# %op478 = phi i32  [ 0, %label472 ], [ %op498, %label497 ]
# %op479 = phi i32  [ 0, %label472 ], [ %op501, %label497 ]
# %op480 = phi i32  [ %op470, %label472 ], [ %op500, %label497 ]
# %op481 = phi i32  [ %op469, %label472 ], [ %op499, %label497 ]
# %op482 = icmp slt i32  %op479, 16
	ld.w $t0, $fp, -1488
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1497
# %op483 = zext i1  %op482 to i32 
	ld.b $t0, $fp, -1497
	st.w $t0, $fp, -1504
# %op484 = icmp ne i32  %op483, 0
	ld.w $t0, $fp, -1504
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	st.b $t2, $fp, -1505
# br i1  %op484, label %label485, label %label488
	ld.b $t0, $fp, -1505
	bnez $t0, .long_func_label485
	b .long_func_label488
.long_func_label485:
# %op486 = srem i32  %op481, 2
	ld.w $t0, $fp, -1496
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1512
# %op487 = icmp ne i32  %op486, 0
	ld.w $t0, $fp, -1512
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	st.b $t2, $fp, -1513
# br i1  %op487, label %label489, label %label494
	ld.b $t0, $fp, -1513
	bnez $t0, .long_func_label489
	b .long_func_label494
.long_func_label488:
# br label %label516
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1612
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1616
	ld.w $t0, $fp, -1468
	st.w $t0, $fp, -1620
	ld.w $t0, $fp, -1464
	st.w $t0, $fp, -1624
	b .long_func_label516
.long_func_label489:
# %op490 = srem i32  %op480, 2
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1520
# %op491 = icmp eq i32  %op490, 0
	ld.w $t0, $fp, -1520
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	st.b $t2, $fp, -1521
# %op492 = zext i1  %op491 to i32 
	ld.b $t0, $fp, -1521
	st.w $t0, $fp, -1528
# %op493 = icmp ne i32  %op492, 0
	ld.w $t0, $fp, -1528
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	st.b $t2, $fp, -1529
# br i1  %op493, label %label502, label %label507
	ld.w $t0, $fp, -1484
	st.w $t0, $fp, -1584
	ld.b $t0, $fp, -1529
	bnez $t0, .long_func_label502
	b .long_func_label507
.long_func_label494:
# %op495 = srem i32  %op480, 2
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1536
# %op496 = icmp ne i32  %op495, 0
	ld.w $t0, $fp, -1536
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	st.b $t2, $fp, -1537
# br i1  %op496, label %label509, label %label514
	ld.w $t0, $fp, -1484
	st.w $t0, $fp, -1608
	ld.b $t0, $fp, -1537
	bnez $t0, .long_func_label509
	b .long_func_label514
.long_func_label497:
# %op498 = phi i32  [ %op508, %label507 ], [ %op515, %label514 ]
# %op499 = sdiv i32  %op481, 2
	ld.w $t0, $fp, -1496
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1548
# %op500 = sdiv i32  %op480, 2
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1552
# %op501 = add i32  %op479, 1
	ld.w $t0, $fp, -1488
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1556
# br label %label477
	ld.w $t0, $fp, -1544
	st.w $t0, $fp, -1484
	ld.w $t0, $fp, -1556
	st.w $t0, $fp, -1488
	ld.w $t0, $fp, -1552
	st.w $t0, $fp, -1492
	ld.w $t0, $fp, -1548
	st.w $t0, $fp, -1496
	b .long_func_label477
.long_func_label502:
# %op503 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op479
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1488
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1568
# %op504 = load i32 , i32 * %op503
	ld.d $t0, $fp, -1568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1572
# %op505 = mul i32  1, %op504
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1572
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1576
# %op506 = add i32  %op478, %op505
	ld.w $t0, $fp, -1484
	ld.w $t1, $fp, -1576
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1580
# br label %label507
	ld.w $t0, $fp, -1580
	st.w $t0, $fp, -1584
	b .long_func_label507
.long_func_label507:
# %op508 = phi i32  [ %op478, %label489 ], [ %op506, %label502 ]
# br label %label497
	ld.w $t0, $fp, -1584
	st.w $t0, $fp, -1544
	b .long_func_label497
.long_func_label509:
# %op510 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op479
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1488
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1592
# %op511 = load i32 , i32 * %op510
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1596
# %op512 = mul i32  1, %op511
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1596
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1600
# %op513 = add i32  %op478, %op512
	ld.w $t0, $fp, -1484
	ld.w $t1, $fp, -1600
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1604
# br label %label514
	ld.w $t0, $fp, -1604
	st.w $t0, $fp, -1608
	b .long_func_label514
.long_func_label514:
# %op515 = phi i32  [ %op478, %label494 ], [ %op513, %label509 ]
# br label %label497
	ld.w $t0, $fp, -1608
	st.w $t0, $fp, -1544
	b .long_func_label497
.long_func_label516:
# %op517 = phi i32  [ 0, %label488 ], [ %op537, %label536 ]
# %op518 = phi i32  [ 0, %label488 ], [ %op540, %label536 ]
# %op519 = phi i32  [ %op470, %label488 ], [ %op539, %label536 ]
# %op520 = phi i32  [ %op469, %label488 ], [ %op538, %label536 ]
# %op521 = icmp slt i32  %op518, 16
	ld.w $t0, $fp, -1616
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1625
# %op522 = zext i1  %op521 to i32 
	ld.b $t0, $fp, -1625
	st.w $t0, $fp, -1632
# %op523 = icmp ne i32  %op522, 0
	ld.w $t0, $fp, -1632
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	st.b $t2, $fp, -1633
# br i1  %op523, label %label524, label %label527
	ld.b $t0, $fp, -1633
	bnez $t0, .long_func_label524
	b .long_func_label527
.long_func_label524:
# %op525 = srem i32  %op520, 2
	ld.w $t0, $fp, -1624
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1640
# %op526 = icmp ne i32  %op525, 0
	ld.w $t0, $fp, -1640
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	st.b $t2, $fp, -1641
# br i1  %op526, label %label541, label %label536
	ld.w $t0, $fp, -1612
	st.w $t0, $fp, -1680
	ld.b $t0, $fp, -1641
	bnez $t0, .long_func_label541
	b .long_func_label536
.long_func_label527:
# %op528 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1642
# %op529 = zext i1  %op528 to i32 
	ld.b $t0, $fp, -1642
	st.w $t0, $fp, -1648
# %op530 = icmp ne i32  %op529, 0
	ld.w $t0, $fp, -1648
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	st.b $t2, $fp, -1649
# br i1  %op530, label %label544, label %label545
	ld.b $t0, $fp, -1649
	bnez $t0, .long_func_label544
	b .long_func_label545
.long_func_label531:
# %op532 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op518
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1616
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1664
# %op533 = load i32 , i32 * %op532
	ld.d $t0, $fp, -1664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op534 = mul i32  1, %op533
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1668
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1672
# %op535 = add i32  %op517, %op534
	ld.w $t0, $fp, -1612
	ld.w $t1, $fp, -1672
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1676
# br label %label536
	ld.w $t0, $fp, -1676
	st.w $t0, $fp, -1680
	b .long_func_label536
.long_func_label536:
# %op537 = phi i32  [ %op517, %label524 ], [ %op517, %label541 ], [ %op535, %label531 ]
# %op538 = sdiv i32  %op520, 2
	ld.w $t0, $fp, -1624
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1684
# %op539 = sdiv i32  %op519, 2
	ld.w $t0, $fp, -1620
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1688
# %op540 = add i32  %op518, 1
	ld.w $t0, $fp, -1616
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1692
# br label %label516
	ld.w $t0, $fp, -1680
	st.w $t0, $fp, -1612
	ld.w $t0, $fp, -1692
	st.w $t0, $fp, -1616
	ld.w $t0, $fp, -1688
	st.w $t0, $fp, -1620
	ld.w $t0, $fp, -1684
	st.w $t0, $fp, -1624
	b .long_func_label516
.long_func_label541:
# %op542 = srem i32  %op519, 2
	ld.w $t0, $fp, -1620
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1696
# %op543 = icmp ne i32  %op542, 0
	ld.w $t0, $fp, -1696
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	st.b $t2, $fp, -1697
# br i1  %op543, label %label531, label %label536
	ld.w $t0, $fp, -1612
	st.w $t0, $fp, -1680
	ld.b $t0, $fp, -1697
	bnez $t0, .long_func_label531
	b .long_func_label536
.long_func_label544:
# br label %label549
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1724
	b .long_func_label549
.long_func_label545:
# %op546 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1712
# %op547 = load i32 , i32 * %op546
	ld.d $t0, $fp, -1712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1716
# %op548 = mul i32  %op517, %op547
	ld.w $t0, $fp, -1612
	ld.w $t1, $fp, -1716
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1720
# br label %label551
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1728
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1732
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -1736
	ld.w $t0, $fp, -1720
	st.w $t0, $fp, -1740
	b .long_func_label551
.long_func_label549:
# %op550 = phi i32  [ 0, %label544 ], [ %op552, %label562 ]
# br label %label468
	ld.w $t0, $fp, -1484
	st.w $t0, $fp, -1464
	ld.w $t0, $fp, -1724
	st.w $t0, $fp, -1468
	b .long_func_label468
.long_func_label551:
# %op552 = phi i32  [ 0, %label545 ], [ %op569, %label568 ]
# %op553 = phi i32  [ 0, %label545 ], [ %op572, %label568 ]
# %op554 = phi i32  [ 65535, %label545 ], [ %op571, %label568 ]
# %op555 = phi i32  [ %op548, %label545 ], [ %op570, %label568 ]
# %op556 = icmp slt i32  %op553, 16
	ld.w $t0, $fp, -1732
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1741
# %op557 = zext i1  %op556 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op558 = icmp ne i32  %op557, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	st.b $t2, $fp, -1749
# br i1  %op558, label %label559, label %label562
	ld.b $t0, $fp, -1749
	bnez $t0, .long_func_label559
	b .long_func_label562
.long_func_label559:
# %op560 = srem i32  %op555, 2
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1756
# %op561 = icmp ne i32  %op560, 0
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	st.b $t2, $fp, -1757
# br i1  %op561, label %label573, label %label568
	ld.w $t0, $fp, -1728
	st.w $t0, $fp, -1784
	ld.b $t0, $fp, -1757
	bnez $t0, .long_func_label573
	b .long_func_label568
.long_func_label562:
# br label %label549
	ld.w $t0, $fp, -1728
	st.w $t0, $fp, -1724
	b .long_func_label549
.long_func_label563:
# %op564 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op553
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1732
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1768
# %op565 = load i32 , i32 * %op564
	ld.d $t0, $fp, -1768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# %op566 = mul i32  1, %op565
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1772
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1776
# %op567 = add i32  %op552, %op566
	ld.w $t0, $fp, -1728
	ld.w $t1, $fp, -1776
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1780
# br label %label568
	ld.w $t0, $fp, -1780
	st.w $t0, $fp, -1784
	b .long_func_label568
.long_func_label568:
# %op569 = phi i32  [ %op552, %label559 ], [ %op552, %label573 ], [ %op567, %label563 ]
# %op570 = sdiv i32  %op555, 2
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1788
# %op571 = sdiv i32  %op554, 2
	ld.w $t0, $fp, -1736
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1792
# %op572 = add i32  %op553, 1
	ld.w $t0, $fp, -1732
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1796
# br label %label551
	ld.w $t0, $fp, -1784
	st.w $t0, $fp, -1728
	ld.w $t0, $fp, -1796
	st.w $t0, $fp, -1732
	ld.w $t0, $fp, -1792
	st.w $t0, $fp, -1736
	ld.w $t0, $fp, -1788
	st.w $t0, $fp, -1740
	b .long_func_label551
.long_func_label573:
# %op574 = srem i32  %op554, 2
	ld.w $t0, $fp, -1736
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1800
# %op575 = icmp ne i32  %op574, 0
	ld.w $t0, $fp, -1800
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	st.b $t2, $fp, -1801
# br i1  %op575, label %label563, label %label568
	ld.w $t0, $fp, -1728
	st.w $t0, $fp, -1784
	ld.b $t0, $fp, -1801
	bnez $t0, .long_func_label563
	b .long_func_label568
.long_func_label576:
# %op577 = icmp slt i32  %op326, 0
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1802
# %op578 = zext i1  %op577 to i32 
	ld.b $t0, $fp, -1802
	st.w $t0, $fp, -1808
# %op579 = icmp ne i32  %op578, 0
	ld.w $t0, $fp, -1808
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	st.b $t2, $fp, -1809
# br i1  %op579, label %label586, label %label587
	ld.b $t0, $fp, -1809
	bnez $t0, .long_func_label586
	b .long_func_label587
.long_func_label580:
# %op581 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1810
# %op582 = zext i1  %op581 to i32 
	ld.b $t0, $fp, -1810
	st.w $t0, $fp, -1816
# %op583 = icmp ne i32  %op582, 0
	ld.w $t0, $fp, -1816
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	st.b $t2, $fp, -1817
# br i1  %op583, label %label590, label %label594
	ld.b $t0, $fp, -1817
	bnez $t0, .long_func_label590
	b .long_func_label594
.long_func_label584:
# %op585 = phi i32  [ %op589, %label588 ], [ %op596, %label595 ]
# br label %label324
	ld.w $t0, $fp, -1464
	st.w $t0, $fp, -1024
	ld.w $t0, $fp, -1824
	st.w $t0, $fp, -1028
	ld.w $t0, $fp, -1128
	st.w $t0, $fp, -1032
	b .long_func_label324
.long_func_label586:
# br label %label588
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -1828
	b .long_func_label588
.long_func_label587:
# br label %label588
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1828
	b .long_func_label588
.long_func_label588:
# %op589 = phi i32  [ 65535, %label586 ], [ 0, %label587 ]
# br label %label584
	ld.w $t0, $fp, -1828
	st.w $t0, $fp, -1824
	b .long_func_label584
.long_func_label590:
# %op591 = icmp sgt i32  %op326, 32767
	ld.w $t0, $fp, -1028
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1829
# %op592 = zext i1  %op591 to i32 
	ld.b $t0, $fp, -1829
	st.w $t0, $fp, -1836
# %op593 = icmp ne i32  %op592, 0
	ld.w $t0, $fp, -1836
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	st.b $t2, $fp, -1837
# br i1  %op593, label %label597, label %label607
	ld.b $t0, $fp, -1837
	bnez $t0, .long_func_label597
	b .long_func_label607
.long_func_label594:
# br label %label595
	ld.w $t0, $fp, -1028
	st.w $t0, $fp, -1844
	b .long_func_label595
.long_func_label595:
# %op596 = phi i32  [ %op612, %label611 ], [ %op326, %label594 ]
# br label %label584
	ld.w $t0, $fp, -1844
	st.w $t0, $fp, -1824
	b .long_func_label584
.long_func_label597:
# %op598 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1856
# %op599 = load i32 , i32 * %op598
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1860
# %op600 = sdiv i32  %op326, %op599
	ld.w $t0, $fp, -1028
	ld.w $t1, $fp, -1860
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1864
# %op601 = add i32  %op600, 65536
	ld.w $t0, $fp, -1864
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1868
# %op602 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1872
# %op603 = add i32  %op602, 1
	ld.w $t0, $fp, -1872
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1876
# %op604 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op603
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1876
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1888
# %op605 = load i32 , i32 * %op604
	ld.d $t0, $fp, -1888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1892
# %op606 = sub i32  %op601, %op605
	ld.w $t0, $fp, -1868
	ld.w $t1, $fp, -1892
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1896
# br label %label611
	ld.w $t0, $fp, -1896
	st.w $t0, $fp, -1916
	b .long_func_label611
.long_func_label607:
# %op608 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1904
# %op609 = load i32 , i32 * %op608
	ld.d $t0, $fp, -1904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op610 = sdiv i32  %op326, %op609
	ld.w $t0, $fp, -1028
	ld.w $t1, $fp, -1908
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1912
# br label %label611
	ld.w $t0, $fp, -1912
	st.w $t0, $fp, -1916
	b .long_func_label611
.long_func_label611:
# %op612 = phi i32  [ %op606, %label597 ], [ %op610, %label607 ]
# br label %label595
	ld.w $t0, $fp, -1916
	st.w $t0, $fp, -1844
	b .long_func_label595
.long_func_label613:
# %op614 = icmp slt i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1917
# %op615 = zext i1  %op614 to i32 
	ld.b $t0, $fp, -1917
	st.w $t0, $fp, -1924
# %op616 = icmp ne i32  %op615, 0
	ld.w $t0, $fp, -1924
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	st.b $t2, $fp, -1925
# br i1  %op616, label %label623, label %label624
	ld.b $t0, $fp, -1925
	bnez $t0, .long_func_label623
	b .long_func_label624
.long_func_label617:
# %op618 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1926
# %op619 = zext i1  %op618 to i32 
	ld.b $t0, $fp, -1926
	st.w $t0, $fp, -1932
# %op620 = icmp ne i32  %op619, 0
	ld.w $t0, $fp, -1932
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	st.b $t2, $fp, -1933
# br i1  %op620, label %label627, label %label631
	ld.b $t0, $fp, -1933
	bnez $t0, .long_func_label627
	b .long_func_label631
.long_func_label621:
# %op622 = phi i32  [ %op626, %label625 ], [ %op633, %label632 ]
# br label %label0
	ld.w $t0, $fp, -1032
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -1940
	st.w $t0, $fp, -24
	ld.w $t0, $fp, -128
	st.w $t0, $fp, -28
	b .long_func_label0
.long_func_label623:
# br label %label625
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.w $t0, $fp, -1944
	b .long_func_label625
.long_func_label624:
# br label %label625
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1944
	b .long_func_label625
.long_func_label625:
# %op626 = phi i32  [ 65535, %label623 ], [ 0, %label624 ]
# br label %label621
	ld.w $t0, $fp, -1944
	st.w $t0, $fp, -1940
	b .long_func_label621
.long_func_label627:
# %op628 = icmp sgt i32  %op2, 32767
	ld.w $t0, $fp, -24
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1945
# %op629 = zext i1  %op628 to i32 
	ld.b $t0, $fp, -1945
	st.w $t0, $fp, -1952
# %op630 = icmp ne i32  %op629, 0
	ld.w $t0, $fp, -1952
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	st.b $t2, $fp, -1953
# br i1  %op630, label %label634, label %label644
	ld.b $t0, $fp, -1953
	bnez $t0, .long_func_label634
	b .long_func_label644
.long_func_label631:
# br label %label632
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -1960
	b .long_func_label632
.long_func_label632:
# %op633 = phi i32  [ %op649, %label648 ], [ %op2, %label631 ]
# br label %label621
	ld.w $t0, $fp, -1960
	st.w $t0, $fp, -1940
	b .long_func_label621
.long_func_label634:
# %op635 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1968
# %op636 = load i32 , i32 * %op635
	ld.d $t0, $fp, -1968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op637 = sdiv i32  %op2, %op636
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -1972
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1976
# %op638 = add i32  %op637, 65536
	ld.w $t0, $fp, -1976
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1980
# %op639 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1984
# %op640 = add i32  %op639, 1
	ld.w $t0, $fp, -1984
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1988
# %op641 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op640
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1988
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2000
# %op642 = load i32 , i32 * %op641
	ld.d $t0, $fp, -2000
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# %op643 = sub i32  %op638, %op642
	ld.w $t0, $fp, -1980
	ld.w $t1, $fp, -2004
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2008
# br label %label648
	ld.w $t0, $fp, -2008
	st.w $t0, $fp, -2028
	b .long_func_label648
.long_func_label644:
# %op645 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -2016
# %op646 = load i32 , i32 * %op645
	ld.d $t0, $fp, -2016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op647 = sdiv i32  %op2, %op646
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -2020
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -2024
# br label %label648
	ld.w $t0, $fp, -2024
	st.w $t0, $fp, -2028
	b .long_func_label648
.long_func_label648:
# %op649 = phi i32  [ %op643, %label634 ], [ %op647, %label644 ]
# br label %label632
	ld.w $t0, $fp, -2028
	st.w $t0, $fp, -1960
	b .long_func_label632
.long_func_label650:
# %op651 = phi i32  [ 2, %label8 ], [ %op977, %label1271 ]
# %op652 = phi i32  [ 1, %label8 ], [ %op1272, %label1271 ]
# %op653 = phi i32  [ 1, %label8 ], [ %op687, %label1271 ]
# %op654 = icmp sgt i32  %op652, 0
	ld.w $t0, $fp, -2036
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -2041
# %op655 = zext i1  %op654 to i32 
	ld.b $t0, $fp, -2041
	st.w $t0, $fp, -2048
# %op656 = icmp ne i32  %op655, 0
	ld.w $t0, $fp, -2048
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	lu12i.w $t8, -1
	ori $t8, $t8, 2047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op656, label %label657, label %label658
	lu12i.w $t0, -1
	ori $t0, $t0, 2047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label657
	b .long_func_label658
.long_func_label657:
# br label %label659
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	ld.w $t0, $fp, -2036
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label659
.long_func_label658:
# call void @putint(i32  %op653)
	ld.w $a0, $fp, -2040
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label1300
	addi.w $t0, $zero, 2
	lu12i.w $t8, -1
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1300
.long_func_label659:
# %op660 = phi i32  [ 0, %label657 ], [ %op678, %label677 ]
# %op661 = phi i32  [ 0, %label657 ], [ %op681, %label677 ]
# %op662 = phi i32  [ 1, %label657 ], [ %op680, %label677 ]
# %op663 = phi i32  [ %op652, %label657 ], [ %op679, %label677 ]
# %op664 = icmp slt i32  %op661, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 2036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op665 = zext i1  %op664 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op666 = icmp ne i32  %op665, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	lu12i.w $t8, -1
	ori $t8, $t8, 2019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op666, label %label667, label %label670
	lu12i.w $t0, -1
	ori $t0, $t0, 2019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label667
	b .long_func_label670
.long_func_label667:
# %op668 = srem i32  %op663, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op669 = icmp ne i32  %op668, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	lu12i.w $t8, -1
	ori $t8, $t8, 2011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op669, label %label682, label %label677
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label682
	b .long_func_label677
.long_func_label670:
# %op671 = icmp ne i32  %op660, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	lu12i.w $t8, -1
	ori $t8, $t8, 2010
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op671, label %label685, label %label686
	ld.w $t0, $fp, -2040
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2010
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label685
	b .long_func_label686
.long_func_label672:
# %op673 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op661
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op674 = load i32 , i32 * %op673
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op675 = mul i32  1, %op674
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op676 = add i32  %op660, %op675
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label677
	lu12i.w $t0, -1
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label677
.long_func_label677:
# %op678 = phi i32  [ %op660, %label667 ], [ %op660, %label682 ], [ %op676, %label672 ]
# %op679 = sdiv i32  %op663, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op680 = sdiv i32  %op662, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op681 = add i32  %op661, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 2036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label659
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label659
.long_func_label682:
# %op683 = srem i32  %op662, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op684 = icmp ne i32  %op683, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	lu12i.w $t8, -1
	ori $t8, $t8, 1967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op684, label %label672, label %label677
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label672
	b .long_func_label677
.long_func_label685:
# br label %label688
	ld.w $t0, $fp, -2040
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	ld.w $t0, $fp, -2032
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label688
.long_func_label686:
# %op687 = phi i32  [ %op653, %label670 ], [ %op691, %label694 ]
# br label %label974
	ld.w $t0, $fp, -2032
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	ld.w $t0, $fp, -2032
	lu12i.w $t8, -1
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label974
.long_func_label688:
# %op689 = phi i32  [ %op653, %label685 ], [ %op830, %label945 ]
# %op690 = phi i32  [ %op651, %label685 ], [ %op946, %label945 ]
# %op691 = phi i32  [ 0, %label685 ], [ %op723, %label945 ]
# %op692 = icmp ne i32  %op690, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	lu12i.w $t8, -1
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op692, label %label693, label %label694
	lu12i.w $t0, -1
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label693
	b .long_func_label694
.long_func_label693:
# br label %label695
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label695
.long_func_label694:
# br label %label686
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label686
.long_func_label695:
# %op696 = phi i32  [ 0, %label693 ], [ %op714, %label713 ]
# %op697 = phi i32  [ 0, %label693 ], [ %op717, %label713 ]
# %op698 = phi i32  [ 1, %label693 ], [ %op716, %label713 ]
# %op699 = phi i32  [ %op690, %label693 ], [ %op715, %label713 ]
# %op700 = icmp slt i32  %op697, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1927
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op701 = zext i1  %op700 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1927
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op702 = icmp ne i32  %op701, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	lu12i.w $t8, -1
	ori $t8, $t8, 1919
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op702, label %label703, label %label706
	lu12i.w $t0, -1
	ori $t0, $t0, 1919
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label703
	b .long_func_label706
.long_func_label703:
# %op704 = srem i32  %op699, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op705 = icmp ne i32  %op704, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	lu12i.w $t8, -1
	ori $t8, $t8, 1911
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op705, label %label718, label %label713
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1911
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label718
	b .long_func_label713
.long_func_label706:
# %op707 = icmp ne i32  %op696, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 1910
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op707, label %label721, label %label722
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1910
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label721
	b .long_func_label722
.long_func_label708:
# %op709 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op697
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op710 = load i32 , i32 * %op709
	lu12i.w $t0, -1
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op711 = mul i32  1, %op710
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op712 = add i32  %op696, %op711
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label713
	lu12i.w $t0, -1
	ori $t0, $t0, 1884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label713
.long_func_label713:
# %op714 = phi i32  [ %op696, %label703 ], [ %op696, %label718 ], [ %op712, %label708 ]
# %op715 = sdiv i32  %op699, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op716 = sdiv i32  %op698, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op717 = add i32  %op697, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label695
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label695
.long_func_label718:
# %op719 = srem i32  %op698, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op720 = icmp ne i32  %op719, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label123
	addi.d $t2, $zero, 0
	b false_label123
true_label123:
	addi.d $t2, $zero, 1
false_label123:
	lu12i.w $t8, -1
	ori $t8, $t8, 1863
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op720, label %label708, label %label713
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1863
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label708
	b .long_func_label713
.long_func_label721:
# br label %label724
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label724
.long_func_label722:
# %op723 = phi i32  [ %op691, %label706 ], [ %op725, %label729 ]
# br label %label829
	lu12i.w $t0, -1
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label829
.long_func_label724:
# %op725 = phi i32  [ %op691, %label721 ], [ %op731, %label802 ]
# %op726 = phi i32  [ %op689, %label721 ], [ %op803, %label802 ]
# %op727 = icmp ne i32  %op726, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label124
	addi.d $t2, $zero, 0
	b false_label124
true_label124:
	addi.d $t2, $zero, 1
false_label124:
	lu12i.w $t8, -1
	ori $t8, $t8, 1847
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op727, label %label728, label %label729
	lu12i.w $t0, -1
	ori $t0, $t0, 1847
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label728
	b .long_func_label729
.long_func_label728:
# br label %label730
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label730
.long_func_label729:
# br label %label722
	lu12i.w $t0, -1
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label722
.long_func_label730:
# %op731 = phi i32  [ 0, %label728 ], [ %op751, %label750 ]
# %op732 = phi i32  [ 0, %label728 ], [ %op754, %label750 ]
# %op733 = phi i32  [ %op726, %label728 ], [ %op753, %label750 ]
# %op734 = phi i32  [ %op725, %label728 ], [ %op752, %label750 ]
# %op735 = icmp slt i32  %op732, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1827
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op736 = zext i1  %op735 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1827
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op737 = icmp ne i32  %op736, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label126
	addi.d $t2, $zero, 0
	b false_label126
true_label126:
	addi.d $t2, $zero, 1
false_label126:
	lu12i.w $t8, -1
	ori $t8, $t8, 1819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op737, label %label738, label %label741
	lu12i.w $t0, -1
	ori $t0, $t0, 1819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label738
	b .long_func_label741
.long_func_label738:
# %op739 = srem i32  %op734, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op740 = icmp ne i32  %op739, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label127
	addi.d $t2, $zero, 0
	b false_label127
true_label127:
	addi.d $t2, $zero, 1
false_label127:
	lu12i.w $t8, -1
	ori $t8, $t8, 1811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op740, label %label742, label %label747
	lu12i.w $t0, -1
	ori $t0, $t0, 1811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label742
	b .long_func_label747
.long_func_label741:
# br label %label769
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label769
.long_func_label742:
# %op743 = srem i32  %op733, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op744 = icmp eq i32  %op743, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label128
	addi.d $t2, $zero, 0
	b false_label128
true_label128:
	addi.d $t2, $zero, 1
false_label128:
	lu12i.w $t8, -1
	ori $t8, $t8, 1803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op745 = zext i1  %op744 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op746 = icmp ne i32  %op745, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label129
	addi.d $t2, $zero, 0
	b false_label129
true_label129:
	addi.d $t2, $zero, 1
false_label129:
	lu12i.w $t8, -1
	ori $t8, $t8, 1795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op746, label %label755, label %label760
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label755
	b .long_func_label760
.long_func_label747:
# %op748 = srem i32  %op733, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op749 = icmp ne i32  %op748, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label130
	addi.d $t2, $zero, 0
	b false_label130
true_label130:
	addi.d $t2, $zero, 1
false_label130:
	lu12i.w $t8, -1
	ori $t8, $t8, 1787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op749, label %label762, label %label767
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label762
	b .long_func_label767
.long_func_label750:
# %op751 = phi i32  [ %op761, %label760 ], [ %op768, %label767 ]
# %op752 = sdiv i32  %op734, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op753 = sdiv i32  %op733, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op754 = add i32  %op732, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label730
	lu12i.w $t0, -1
	ori $t0, $t0, 1780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label730
.long_func_label755:
# %op756 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op732
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op757 = load i32 , i32 * %op756
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op758 = mul i32  1, %op757
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op759 = add i32  %op731, %op758
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label760
	lu12i.w $t0, -1
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label760
.long_func_label760:
# %op761 = phi i32  [ %op731, %label742 ], [ %op759, %label755 ]
# br label %label750
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label750
.long_func_label762:
# %op763 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op732
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op764 = load i32 , i32 * %op763
	lu12i.w $t0, -1
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op765 = mul i32  1, %op764
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op766 = add i32  %op731, %op765
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label767
	lu12i.w $t0, -1
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label767
.long_func_label767:
# %op768 = phi i32  [ %op731, %label747 ], [ %op766, %label762 ]
# br label %label750
	lu12i.w $t0, -1
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label750
.long_func_label769:
# %op770 = phi i32  [ 0, %label741 ], [ %op790, %label789 ]
# %op771 = phi i32  [ 0, %label741 ], [ %op793, %label789 ]
# %op772 = phi i32  [ %op726, %label741 ], [ %op792, %label789 ]
# %op773 = phi i32  [ %op725, %label741 ], [ %op791, %label789 ]
# %op774 = icmp slt i32  %op771, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1703
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op775 = zext i1  %op774 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1703
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op776 = icmp ne i32  %op775, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label132
	addi.d $t2, $zero, 0
	b false_label132
true_label132:
	addi.d $t2, $zero, 1
false_label132:
	lu12i.w $t8, -1
	ori $t8, $t8, 1695
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op776, label %label777, label %label780
	lu12i.w $t0, -1
	ori $t0, $t0, 1695
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label777
	b .long_func_label780
.long_func_label777:
# %op778 = srem i32  %op773, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op779 = icmp ne i32  %op778, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label133
	addi.d $t2, $zero, 0
	b false_label133
true_label133:
	addi.d $t2, $zero, 1
false_label133:
	lu12i.w $t8, -1
	ori $t8, $t8, 1687
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op779, label %label794, label %label789
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1687
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label794
	b .long_func_label789
.long_func_label780:
# %op781 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1686
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op782 = zext i1  %op781 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1686
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op783 = icmp ne i32  %op782, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label135
	addi.d $t2, $zero, 0
	b false_label135
true_label135:
	addi.d $t2, $zero, 1
false_label135:
	lu12i.w $t8, -1
	ori $t8, $t8, 1679
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op783, label %label797, label %label798
	lu12i.w $t0, -1
	ori $t0, $t0, 1679
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label797
	b .long_func_label798
.long_func_label784:
# %op785 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op771
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op786 = load i32 , i32 * %op785
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op787 = mul i32  1, %op786
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op788 = add i32  %op770, %op787
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label789
	lu12i.w $t0, -1
	ori $t0, $t0, 1652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label789
.long_func_label789:
# %op790 = phi i32  [ %op770, %label777 ], [ %op770, %label794 ], [ %op788, %label784 ]
# %op791 = sdiv i32  %op773, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op792 = sdiv i32  %op772, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op793 = add i32  %op771, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label769
	lu12i.w $t0, -1
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label769
.long_func_label794:
# %op795 = srem i32  %op772, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op796 = icmp ne i32  %op795, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label136
	addi.d $t2, $zero, 0
	b false_label136
true_label136:
	addi.d $t2, $zero, 1
false_label136:
	lu12i.w $t8, -1
	ori $t8, $t8, 1631
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op796, label %label784, label %label789
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1631
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label784
	b .long_func_label789
.long_func_label797:
# br label %label802
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label802
.long_func_label798:
# %op799 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op800 = load i32 , i32 * %op799
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op801 = mul i32  %op770, %op800
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label804
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label804
.long_func_label802:
# %op803 = phi i32  [ 0, %label797 ], [ %op805, %label815 ]
# br label %label724
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label724
.long_func_label804:
# %op805 = phi i32  [ 0, %label798 ], [ %op822, %label821 ]
# %op806 = phi i32  [ 0, %label798 ], [ %op825, %label821 ]
# %op807 = phi i32  [ 65535, %label798 ], [ %op824, %label821 ]
# %op808 = phi i32  [ %op801, %label798 ], [ %op823, %label821 ]
# %op809 = icmp slt i32  %op806, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1587
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op810 = zext i1  %op809 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1587
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op811 = icmp ne i32  %op810, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label138
	addi.d $t2, $zero, 0
	b false_label138
true_label138:
	addi.d $t2, $zero, 1
false_label138:
	lu12i.w $t8, -1
	ori $t8, $t8, 1579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op811, label %label812, label %label815
	lu12i.w $t0, -1
	ori $t0, $t0, 1579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label812
	b .long_func_label815
.long_func_label812:
# %op813 = srem i32  %op808, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op814 = icmp ne i32  %op813, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label139
	addi.d $t2, $zero, 0
	b false_label139
true_label139:
	addi.d $t2, $zero, 1
false_label139:
	lu12i.w $t8, -1
	ori $t8, $t8, 1571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op814, label %label826, label %label821
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label826
	b .long_func_label821
.long_func_label815:
# br label %label802
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label802
.long_func_label816:
# %op817 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op806
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op818 = load i32 , i32 * %op817
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op819 = mul i32  1, %op818
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op820 = add i32  %op805, %op819
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label821
	lu12i.w $t0, -1
	ori $t0, $t0, 1548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label821
.long_func_label821:
# %op822 = phi i32  [ %op805, %label812 ], [ %op805, %label826 ], [ %op820, %label816 ]
# %op823 = sdiv i32  %op808, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op824 = sdiv i32  %op807, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op825 = add i32  %op806, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label804
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label804
.long_func_label826:
# %op827 = srem i32  %op807, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op828 = icmp ne i32  %op827, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label140
	addi.d $t2, $zero, 0
	b false_label140
true_label140:
	addi.d $t2, $zero, 1
false_label140:
	lu12i.w $t8, -1
	ori $t8, $t8, 1527
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op828, label %label816, label %label821
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1527
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label816
	b .long_func_label821
.long_func_label829:
# %op830 = phi i32  [ %op689, %label722 ], [ %op839, %label910 ]
# %op831 = phi i32  [ %op689, %label722 ], [ %op911, %label910 ]
# %op832 = icmp ne i32  %op831, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label141
	addi.d $t2, $zero, 0
	b false_label141
true_label141:
	addi.d $t2, $zero, 1
false_label141:
	lu12i.w $t8, -1
	ori $t8, $t8, 1515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op832, label %label833, label %label834
	lu12i.w $t0, -1
	ori $t0, $t0, 1515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label833
	b .long_func_label834
.long_func_label833:
# br label %label838
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label838
.long_func_label834:
# %op835 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label142
	addi.d $t2, $zero, 0
	b false_label142
true_label142:
	addi.d $t2, $zero, 1
false_label142:
	lu12i.w $t8, -1
	ori $t8, $t8, 1514
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op836 = zext i1  %op835 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1514
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op837 = icmp ne i32  %op836, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label143
	addi.d $t2, $zero, 0
	b false_label143
true_label143:
	addi.d $t2, $zero, 1
false_label143:
	lu12i.w $t8, -1
	ori $t8, $t8, 1507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op837, label %label937, label %label941
	lu12i.w $t0, -1
	ori $t0, $t0, 1507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label937
	b .long_func_label941
.long_func_label838:
# %op839 = phi i32  [ 0, %label833 ], [ %op859, %label858 ]
# %op840 = phi i32  [ 0, %label833 ], [ %op862, %label858 ]
# %op841 = phi i32  [ %op831, %label833 ], [ %op861, %label858 ]
# %op842 = phi i32  [ %op830, %label833 ], [ %op860, %label858 ]
# %op843 = icmp slt i32  %op840, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1487
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op844 = zext i1  %op843 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1487
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op845 = icmp ne i32  %op844, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label145
	addi.d $t2, $zero, 0
	b false_label145
true_label145:
	addi.d $t2, $zero, 1
false_label145:
	lu12i.w $t8, -1
	ori $t8, $t8, 1479
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op845, label %label846, label %label849
	lu12i.w $t0, -1
	ori $t0, $t0, 1479
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label846
	b .long_func_label849
.long_func_label846:
# %op847 = srem i32  %op842, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op848 = icmp ne i32  %op847, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label146
	addi.d $t2, $zero, 0
	b false_label146
true_label146:
	addi.d $t2, $zero, 1
false_label146:
	lu12i.w $t8, -1
	ori $t8, $t8, 1471
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op848, label %label850, label %label855
	lu12i.w $t0, -1
	ori $t0, $t0, 1471
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label850
	b .long_func_label855
.long_func_label849:
# br label %label877
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label877
.long_func_label850:
# %op851 = srem i32  %op841, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op852 = icmp eq i32  %op851, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label147
	addi.d $t2, $zero, 0
	b false_label147
true_label147:
	addi.d $t2, $zero, 1
false_label147:
	lu12i.w $t8, -1
	ori $t8, $t8, 1463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op853 = zext i1  %op852 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op854 = icmp ne i32  %op853, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label148
	addi.d $t2, $zero, 0
	b false_label148
true_label148:
	addi.d $t2, $zero, 1
false_label148:
	lu12i.w $t8, -1
	ori $t8, $t8, 1455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op854, label %label863, label %label868
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label863
	b .long_func_label868
.long_func_label855:
# %op856 = srem i32  %op841, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op857 = icmp ne i32  %op856, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label149
	addi.d $t2, $zero, 0
	b false_label149
true_label149:
	addi.d $t2, $zero, 1
false_label149:
	lu12i.w $t8, -1
	ori $t8, $t8, 1447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op857, label %label870, label %label875
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label870
	b .long_func_label875
.long_func_label858:
# %op859 = phi i32  [ %op869, %label868 ], [ %op876, %label875 ]
# %op860 = sdiv i32  %op842, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op861 = sdiv i32  %op841, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op862 = add i32  %op840, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label838
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label838
.long_func_label863:
# %op864 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op840
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op865 = load i32 , i32 * %op864
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op866 = mul i32  1, %op865
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op867 = add i32  %op839, %op866
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label868
	lu12i.w $t0, -1
	ori $t0, $t0, 1404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label868
.long_func_label868:
# %op869 = phi i32  [ %op839, %label850 ], [ %op867, %label863 ]
# br label %label858
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label858
.long_func_label870:
# %op871 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op840
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op872 = load i32 , i32 * %op871
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op873 = mul i32  1, %op872
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op874 = add i32  %op839, %op873
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label875
	lu12i.w $t0, -1
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label875
.long_func_label875:
# %op876 = phi i32  [ %op839, %label855 ], [ %op874, %label870 ]
# br label %label858
	lu12i.w $t0, -1
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label858
.long_func_label877:
# %op878 = phi i32  [ 0, %label849 ], [ %op898, %label897 ]
# %op879 = phi i32  [ 0, %label849 ], [ %op901, %label897 ]
# %op880 = phi i32  [ %op831, %label849 ], [ %op900, %label897 ]
# %op881 = phi i32  [ %op830, %label849 ], [ %op899, %label897 ]
# %op882 = icmp slt i32  %op879, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1359
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op883 = zext i1  %op882 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1359
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op884 = icmp ne i32  %op883, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label151
	addi.d $t2, $zero, 0
	b false_label151
true_label151:
	addi.d $t2, $zero, 1
false_label151:
	lu12i.w $t8, -1
	ori $t8, $t8, 1351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op884, label %label885, label %label888
	lu12i.w $t0, -1
	ori $t0, $t0, 1351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label885
	b .long_func_label888
.long_func_label885:
# %op886 = srem i32  %op881, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op887 = icmp ne i32  %op886, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label152
	addi.d $t2, $zero, 0
	b false_label152
true_label152:
	addi.d $t2, $zero, 1
false_label152:
	lu12i.w $t8, -1
	ori $t8, $t8, 1343
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op887, label %label902, label %label897
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1343
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label902
	b .long_func_label897
.long_func_label888:
# %op889 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1342
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op890 = zext i1  %op889 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1342
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op891 = icmp ne i32  %op890, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label154
	addi.d $t2, $zero, 0
	b false_label154
true_label154:
	addi.d $t2, $zero, 1
false_label154:
	lu12i.w $t8, -1
	ori $t8, $t8, 1335
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op891, label %label905, label %label906
	lu12i.w $t0, -1
	ori $t0, $t0, 1335
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label905
	b .long_func_label906
.long_func_label892:
# %op893 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op879
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op894 = load i32 , i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op895 = mul i32  1, %op894
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op896 = add i32  %op878, %op895
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label897
	lu12i.w $t0, -1
	ori $t0, $t0, 1308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label897
.long_func_label897:
# %op898 = phi i32  [ %op878, %label885 ], [ %op878, %label902 ], [ %op896, %label892 ]
# %op899 = sdiv i32  %op881, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op900 = sdiv i32  %op880, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op901 = add i32  %op879, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label877
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label877
.long_func_label902:
# %op903 = srem i32  %op880, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op904 = icmp ne i32  %op903, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label155
	addi.d $t2, $zero, 0
	b false_label155
true_label155:
	addi.d $t2, $zero, 1
false_label155:
	lu12i.w $t8, -1
	ori $t8, $t8, 1287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op904, label %label892, label %label897
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label892
	b .long_func_label897
.long_func_label905:
# br label %label910
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label910
.long_func_label906:
# %op907 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op908 = load i32 , i32 * %op907
	lu12i.w $t0, -1
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op909 = mul i32  %op878, %op908
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label912
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label912
.long_func_label910:
# %op911 = phi i32  [ 0, %label905 ], [ %op913, %label923 ]
# br label %label829
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label829
.long_func_label912:
# %op913 = phi i32  [ 0, %label906 ], [ %op930, %label929 ]
# %op914 = phi i32  [ 0, %label906 ], [ %op933, %label929 ]
# %op915 = phi i32  [ 65535, %label906 ], [ %op932, %label929 ]
# %op916 = phi i32  [ %op909, %label906 ], [ %op931, %label929 ]
# %op917 = icmp slt i32  %op914, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op918 = zext i1  %op917 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op919 = icmp ne i32  %op918, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label157
	addi.d $t2, $zero, 0
	b false_label157
true_label157:
	addi.d $t2, $zero, 1
false_label157:
	lu12i.w $t8, -1
	ori $t8, $t8, 1235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op919, label %label920, label %label923
	lu12i.w $t0, -1
	ori $t0, $t0, 1235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label920
	b .long_func_label923
.long_func_label920:
# %op921 = srem i32  %op916, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op922 = icmp ne i32  %op921, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label158
	addi.d $t2, $zero, 0
	b false_label158
true_label158:
	addi.d $t2, $zero, 1
false_label158:
	lu12i.w $t8, -1
	ori $t8, $t8, 1227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op922, label %label934, label %label929
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label934
	b .long_func_label929
.long_func_label923:
# br label %label910
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label910
.long_func_label924:
# %op925 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op914
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op926 = load i32 , i32 * %op925
	lu12i.w $t0, -1
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op927 = mul i32  1, %op926
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op928 = add i32  %op913, %op927
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label929
	lu12i.w $t0, -1
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label929
.long_func_label929:
# %op930 = phi i32  [ %op913, %label920 ], [ %op913, %label934 ], [ %op928, %label924 ]
# %op931 = sdiv i32  %op916, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op932 = sdiv i32  %op915, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op933 = add i32  %op914, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label912
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label912
.long_func_label934:
# %op935 = srem i32  %op915, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op936 = icmp ne i32  %op935, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label159
	addi.d $t2, $zero, 0
	b false_label159
true_label159:
	addi.d $t2, $zero, 1
false_label159:
	lu12i.w $t8, -1
	ori $t8, $t8, 1183
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op936, label %label924, label %label929
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1183
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label924
	b .long_func_label929
.long_func_label937:
# %op938 = icmp slt i32  %op690, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1182
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op939 = zext i1  %op938 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1182
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op940 = icmp ne i32  %op939, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label161
	addi.d $t2, $zero, 0
	b false_label161
true_label161:
	addi.d $t2, $zero, 1
false_label161:
	lu12i.w $t8, -1
	ori $t8, $t8, 1175
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op940, label %label947, label %label948
	lu12i.w $t0, -1
	ori $t0, $t0, 1175
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label947
	b .long_func_label948
.long_func_label941:
# %op942 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1174
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op943 = zext i1  %op942 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1174
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op944 = icmp ne i32  %op943, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label163
	addi.d $t2, $zero, 0
	b false_label163
true_label163:
	addi.d $t2, $zero, 1
false_label163:
	lu12i.w $t8, -1
	ori $t8, $t8, 1167
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op944, label %label951, label %label955
	lu12i.w $t0, -1
	ori $t0, $t0, 1167
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label951
	b .long_func_label955
.long_func_label945:
# %op946 = phi i32  [ %op950, %label949 ], [ %op957, %label956 ]
# br label %label688
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label688
.long_func_label947:
# br label %label949
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label949
.long_func_label948:
# br label %label949
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label949
.long_func_label949:
# %op950 = phi i32  [ 65535, %label947 ], [ 0, %label948 ]
# br label %label945
	lu12i.w $t0, -1
	ori $t0, $t0, 1156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label945
.long_func_label951:
# %op952 = icmp sgt i32  %op690, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op953 = zext i1  %op952 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op954 = icmp ne i32  %op953, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label165
	addi.d $t2, $zero, 0
	b false_label165
true_label165:
	addi.d $t2, $zero, 1
false_label165:
	lu12i.w $t8, -1
	ori $t8, $t8, 1147
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op954, label %label958, label %label968
	lu12i.w $t0, -1
	ori $t0, $t0, 1147
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label958
	b .long_func_label968
.long_func_label955:
# br label %label956
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label956
.long_func_label956:
# %op957 = phi i32  [ %op973, %label972 ], [ %op690, %label955 ]
# br label %label945
	lu12i.w $t0, -1
	ori $t0, $t0, 1140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label945
.long_func_label958:
# %op959 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op960 = load i32 , i32 * %op959
	lu12i.w $t0, -1
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op961 = sdiv i32  %op690, %op960
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op962 = add i32  %op961, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op963 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op964 = add i32  %op963, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op965 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op964
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op966 = load i32 , i32 * %op965
	lu12i.w $t0, -1
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op967 = sub i32  %op962, %op966
	lu12i.w $t0, -1
	ori $t0, $t0, 1116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label972
	lu12i.w $t0, -1
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label972
.long_func_label968:
# %op969 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op970 = load i32 , i32 * %op969
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op971 = sdiv i32  %op690, %op970
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label972
	lu12i.w $t0, -1
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label972
.long_func_label972:
# %op973 = phi i32  [ %op967, %label958 ], [ %op971, %label968 ]
# br label %label956
	lu12i.w $t0, -1
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label956
.long_func_label974:
# %op975 = phi i32  [ %op651, %label686 ], [ %op1119, %label1234 ]
# %op976 = phi i32  [ %op651, %label686 ], [ %op1235, %label1234 ]
# %op977 = phi i32  [ 0, %label686 ], [ %op1012, %label1234 ]
# %op978 = icmp ne i32  %op976, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label166
	addi.d $t2, $zero, 0
	b false_label166
true_label166:
	addi.d $t2, $zero, 1
false_label166:
	lu12i.w $t8, -1
	ori $t8, $t8, 1055
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op978, label %label979, label %label980
	lu12i.w $t0, -1
	ori $t0, $t0, 1055
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label979
	b .long_func_label980
.long_func_label979:
# br label %label984
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label984
.long_func_label980:
# %op981 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label167
	addi.d $t2, $zero, 0
	b false_label167
true_label167:
	addi.d $t2, $zero, 1
false_label167:
	lu12i.w $t8, -1
	ori $t8, $t8, 1054
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op982 = zext i1  %op981 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1054
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op983 = icmp ne i32  %op982, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label168
	addi.d $t2, $zero, 0
	b false_label168
true_label168:
	addi.d $t2, $zero, 1
false_label168:
	lu12i.w $t8, -1
	ori $t8, $t8, 1047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op983, label %label1263, label %label1267
	lu12i.w $t0, -1
	ori $t0, $t0, 1047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1263
	b .long_func_label1267
.long_func_label984:
# %op985 = phi i32  [ 0, %label979 ], [ %op1003, %label1002 ]
# %op986 = phi i32  [ 0, %label979 ], [ %op1006, %label1002 ]
# %op987 = phi i32  [ 1, %label979 ], [ %op1005, %label1002 ]
# %op988 = phi i32  [ %op976, %label979 ], [ %op1004, %label1002 ]
# %op989 = icmp slt i32  %op986, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op990 = zext i1  %op989 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op991 = icmp ne i32  %op990, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label170
	addi.d $t2, $zero, 0
	b false_label170
true_label170:
	addi.d $t2, $zero, 1
false_label170:
	lu12i.w $t8, -1
	ori $t8, $t8, 1019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op991, label %label992, label %label995
	lu12i.w $t0, -1
	ori $t0, $t0, 1019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label992
	b .long_func_label995
.long_func_label992:
# %op993 = srem i32  %op988, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op994 = icmp ne i32  %op993, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label171
	addi.d $t2, $zero, 0
	b false_label171
true_label171:
	addi.d $t2, $zero, 1
false_label171:
	lu12i.w $t8, -1
	ori $t8, $t8, 1011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op994, label %label1007, label %label1002
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1007
	b .long_func_label1002
.long_func_label995:
# %op996 = icmp ne i32  %op985, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label172
	addi.d $t2, $zero, 0
	b false_label172
true_label172:
	addi.d $t2, $zero, 1
false_label172:
	lu12i.w $t8, -1
	ori $t8, $t8, 1010
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op996, label %label1010, label %label1011
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1010
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1010
	b .long_func_label1011
.long_func_label997:
# %op998 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op986
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op999 = load i32 , i32 * %op998
	lu12i.w $t0, -1
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1000 = mul i32  1, %op999
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1001 = add i32  %op985, %op1000
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1002
	lu12i.w $t0, -1
	ori $t0, $t0, 988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1002
.long_func_label1002:
# %op1003 = phi i32  [ %op985, %label992 ], [ %op985, %label1007 ], [ %op1001, %label997 ]
# %op1004 = sdiv i32  %op988, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1005 = sdiv i32  %op987, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1006 = add i32  %op986, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label984
	lu12i.w $t0, -1
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label984
.long_func_label1007:
# %op1008 = srem i32  %op987, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1009 = icmp ne i32  %op1008, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label173
	addi.d $t2, $zero, 0
	b false_label173
true_label173:
	addi.d $t2, $zero, 1
false_label173:
	lu12i.w $t8, -1
	ori $t8, $t8, 967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1009, label %label997, label %label1002
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label997
	b .long_func_label1002
.long_func_label1010:
# br label %label1013
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1013
.long_func_label1011:
# %op1012 = phi i32  [ %op977, %label995 ], [ %op1014, %label1018 ]
# br label %label1118
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1118
.long_func_label1013:
# %op1014 = phi i32  [ %op977, %label1010 ], [ %op1020, %label1091 ]
# %op1015 = phi i32  [ %op975, %label1010 ], [ %op1092, %label1091 ]
# %op1016 = icmp ne i32  %op1015, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label174
	addi.d $t2, $zero, 0
	b false_label174
true_label174:
	addi.d $t2, $zero, 1
false_label174:
	lu12i.w $t8, -1
	ori $t8, $t8, 951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1016, label %label1017, label %label1018
	lu12i.w $t0, -1
	ori $t0, $t0, 951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1017
	b .long_func_label1018
.long_func_label1017:
# br label %label1019
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1019
.long_func_label1018:
# br label %label1011
	lu12i.w $t0, -1
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1011
.long_func_label1019:
# %op1020 = phi i32  [ 0, %label1017 ], [ %op1040, %label1039 ]
# %op1021 = phi i32  [ 0, %label1017 ], [ %op1043, %label1039 ]
# %op1022 = phi i32  [ %op1015, %label1017 ], [ %op1042, %label1039 ]
# %op1023 = phi i32  [ %op1014, %label1017 ], [ %op1041, %label1039 ]
# %op1024 = icmp slt i32  %op1021, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1025 = zext i1  %op1024 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1026 = icmp ne i32  %op1025, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label176
	addi.d $t2, $zero, 0
	b false_label176
true_label176:
	addi.d $t2, $zero, 1
false_label176:
	lu12i.w $t8, -1
	ori $t8, $t8, 923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1026, label %label1027, label %label1030
	lu12i.w $t0, -1
	ori $t0, $t0, 923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1027
	b .long_func_label1030
.long_func_label1027:
# %op1028 = srem i32  %op1023, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1029 = icmp ne i32  %op1028, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label177
	addi.d $t2, $zero, 0
	b false_label177
true_label177:
	addi.d $t2, $zero, 1
false_label177:
	lu12i.w $t8, -1
	ori $t8, $t8, 915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1029, label %label1031, label %label1036
	lu12i.w $t0, -1
	ori $t0, $t0, 915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1031
	b .long_func_label1036
.long_func_label1030:
# br label %label1058
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1058
.long_func_label1031:
# %op1032 = srem i32  %op1022, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1033 = icmp eq i32  %op1032, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label178
	addi.d $t2, $zero, 0
	b false_label178
true_label178:
	addi.d $t2, $zero, 1
false_label178:
	lu12i.w $t8, -1
	ori $t8, $t8, 907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1034 = zext i1  %op1033 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1035 = icmp ne i32  %op1034, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label179
	addi.d $t2, $zero, 0
	b false_label179
true_label179:
	addi.d $t2, $zero, 1
false_label179:
	lu12i.w $t8, -1
	ori $t8, $t8, 899
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1035, label %label1044, label %label1049
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 899
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1044
	b .long_func_label1049
.long_func_label1036:
# %op1037 = srem i32  %op1022, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1038 = icmp ne i32  %op1037, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label180
	addi.d $t2, $zero, 0
	b false_label180
true_label180:
	addi.d $t2, $zero, 1
false_label180:
	lu12i.w $t8, -1
	ori $t8, $t8, 891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1038, label %label1051, label %label1056
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1051
	b .long_func_label1056
.long_func_label1039:
# %op1040 = phi i32  [ %op1050, %label1049 ], [ %op1057, %label1056 ]
# %op1041 = sdiv i32  %op1023, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1042 = sdiv i32  %op1022, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1043 = add i32  %op1021, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1019
	lu12i.w $t0, -1
	ori $t0, $t0, 884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1019
.long_func_label1044:
# %op1045 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1021
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1046 = load i32 , i32 * %op1045
	lu12i.w $t0, -1
	ori $t0, $t0, 864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1047 = mul i32  1, %op1046
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1048 = add i32  %op1020, %op1047
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1049
	lu12i.w $t0, -1
	ori $t0, $t0, 852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1049
.long_func_label1049:
# %op1050 = phi i32  [ %op1020, %label1031 ], [ %op1048, %label1044 ]
# br label %label1039
	lu12i.w $t0, -1
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1039
.long_func_label1051:
# %op1052 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1021
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1053 = load i32 , i32 * %op1052
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1054 = mul i32  1, %op1053
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1055 = add i32  %op1020, %op1054
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1056
	lu12i.w $t0, -1
	ori $t0, $t0, 828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1056
.long_func_label1056:
# %op1057 = phi i32  [ %op1020, %label1036 ], [ %op1055, %label1051 ]
# br label %label1039
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1039
.long_func_label1058:
# %op1059 = phi i32  [ 0, %label1030 ], [ %op1079, %label1078 ]
# %op1060 = phi i32  [ 0, %label1030 ], [ %op1082, %label1078 ]
# %op1061 = phi i32  [ %op1015, %label1030 ], [ %op1081, %label1078 ]
# %op1062 = phi i32  [ %op1014, %label1030 ], [ %op1080, %label1078 ]
# %op1063 = icmp slt i32  %op1060, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1064 = zext i1  %op1063 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1065 = icmp ne i32  %op1064, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label182
	addi.d $t2, $zero, 0
	b false_label182
true_label182:
	addi.d $t2, $zero, 1
false_label182:
	lu12i.w $t8, -1
	ori $t8, $t8, 799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1065, label %label1066, label %label1069
	lu12i.w $t0, -1
	ori $t0, $t0, 799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1066
	b .long_func_label1069
.long_func_label1066:
# %op1067 = srem i32  %op1062, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1068 = icmp ne i32  %op1067, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label183
	addi.d $t2, $zero, 0
	b false_label183
true_label183:
	addi.d $t2, $zero, 1
false_label183:
	lu12i.w $t8, -1
	ori $t8, $t8, 791
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1068, label %label1083, label %label1078
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 791
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1083
	b .long_func_label1078
.long_func_label1069:
# %op1070 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 790
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1071 = zext i1  %op1070 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 790
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1072 = icmp ne i32  %op1071, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label185
	addi.d $t2, $zero, 0
	b false_label185
true_label185:
	addi.d $t2, $zero, 1
false_label185:
	lu12i.w $t8, -1
	ori $t8, $t8, 783
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1072, label %label1086, label %label1087
	lu12i.w $t0, -1
	ori $t0, $t0, 783
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1086
	b .long_func_label1087
.long_func_label1073:
# %op1074 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1060
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1075 = load i32 , i32 * %op1074
	lu12i.w $t0, -1
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1076 = mul i32  1, %op1075
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1077 = add i32  %op1059, %op1076
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1078
	lu12i.w $t0, -1
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1078
.long_func_label1078:
# %op1079 = phi i32  [ %op1059, %label1066 ], [ %op1059, %label1083 ], [ %op1077, %label1073 ]
# %op1080 = sdiv i32  %op1062, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1081 = sdiv i32  %op1061, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1082 = add i32  %op1060, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1058
	lu12i.w $t0, -1
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1058
.long_func_label1083:
# %op1084 = srem i32  %op1061, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1085 = icmp ne i32  %op1084, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label186
	addi.d $t2, $zero, 0
	b false_label186
true_label186:
	addi.d $t2, $zero, 1
false_label186:
	lu12i.w $t8, -1
	ori $t8, $t8, 735
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1085, label %label1073, label %label1078
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 735
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1073
	b .long_func_label1078
.long_func_label1086:
# br label %label1091
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1091
.long_func_label1087:
# %op1088 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1089 = load i32 , i32 * %op1088
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1090 = mul i32  %op1059, %op1089
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1093
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1093
.long_func_label1091:
# %op1092 = phi i32  [ 0, %label1086 ], [ %op1094, %label1104 ]
# br label %label1013
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1013
.long_func_label1093:
# %op1094 = phi i32  [ 0, %label1087 ], [ %op1111, %label1110 ]
# %op1095 = phi i32  [ 0, %label1087 ], [ %op1114, %label1110 ]
# %op1096 = phi i32  [ 65535, %label1087 ], [ %op1113, %label1110 ]
# %op1097 = phi i32  [ %op1090, %label1087 ], [ %op1112, %label1110 ]
# %op1098 = icmp slt i32  %op1095, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1099 = zext i1  %op1098 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1100 = icmp ne i32  %op1099, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label188
	addi.d $t2, $zero, 0
	b false_label188
true_label188:
	addi.d $t2, $zero, 1
false_label188:
	lu12i.w $t8, -1
	ori $t8, $t8, 683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1100, label %label1101, label %label1104
	lu12i.w $t0, -1
	ori $t0, $t0, 683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1101
	b .long_func_label1104
.long_func_label1101:
# %op1102 = srem i32  %op1097, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1103 = icmp ne i32  %op1102, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label189
	addi.d $t2, $zero, 0
	b false_label189
true_label189:
	addi.d $t2, $zero, 1
false_label189:
	lu12i.w $t8, -1
	ori $t8, $t8, 675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1103, label %label1115, label %label1110
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1115
	b .long_func_label1110
.long_func_label1104:
# br label %label1091
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1091
.long_func_label1105:
# %op1106 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1095
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1107 = load i32 , i32 * %op1106
	lu12i.w $t0, -1
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1108 = mul i32  1, %op1107
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1109 = add i32  %op1094, %op1108
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1110
	lu12i.w $t0, -1
	ori $t0, $t0, 652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1110
.long_func_label1110:
# %op1111 = phi i32  [ %op1094, %label1101 ], [ %op1094, %label1115 ], [ %op1109, %label1105 ]
# %op1112 = sdiv i32  %op1097, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1113 = sdiv i32  %op1096, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1114 = add i32  %op1095, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1093
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1093
.long_func_label1115:
# %op1116 = srem i32  %op1096, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1117 = icmp ne i32  %op1116, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label190
	addi.d $t2, $zero, 0
	b false_label190
true_label190:
	addi.d $t2, $zero, 1
false_label190:
	lu12i.w $t8, -1
	ori $t8, $t8, 631
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1117, label %label1105, label %label1110
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 631
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1105
	b .long_func_label1110
.long_func_label1118:
# %op1119 = phi i32  [ %op975, %label1011 ], [ %op1128, %label1199 ]
# %op1120 = phi i32  [ %op975, %label1011 ], [ %op1200, %label1199 ]
# %op1121 = icmp ne i32  %op1120, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label191
	addi.d $t2, $zero, 0
	b false_label191
true_label191:
	addi.d $t2, $zero, 1
false_label191:
	lu12i.w $t8, -1
	ori $t8, $t8, 619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1121, label %label1122, label %label1123
	lu12i.w $t0, -1
	ori $t0, $t0, 619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1122
	b .long_func_label1123
.long_func_label1122:
# br label %label1127
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1127
.long_func_label1123:
# %op1124 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label192
	addi.d $t2, $zero, 0
	b false_label192
true_label192:
	addi.d $t2, $zero, 1
false_label192:
	lu12i.w $t8, -1
	ori $t8, $t8, 618
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1125 = zext i1  %op1124 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 618
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1126 = icmp ne i32  %op1125, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label193
	addi.d $t2, $zero, 0
	b false_label193
true_label193:
	addi.d $t2, $zero, 1
false_label193:
	lu12i.w $t8, -1
	ori $t8, $t8, 611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1126, label %label1226, label %label1230
	lu12i.w $t0, -1
	ori $t0, $t0, 611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1226
	b .long_func_label1230
.long_func_label1127:
# %op1128 = phi i32  [ 0, %label1122 ], [ %op1148, %label1147 ]
# %op1129 = phi i32  [ 0, %label1122 ], [ %op1151, %label1147 ]
# %op1130 = phi i32  [ %op1120, %label1122 ], [ %op1150, %label1147 ]
# %op1131 = phi i32  [ %op1119, %label1122 ], [ %op1149, %label1147 ]
# %op1132 = icmp slt i32  %op1129, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 591
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1133 = zext i1  %op1132 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 591
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1134 = icmp ne i32  %op1133, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label195
	addi.d $t2, $zero, 0
	b false_label195
true_label195:
	addi.d $t2, $zero, 1
false_label195:
	lu12i.w $t8, -1
	ori $t8, $t8, 583
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1134, label %label1135, label %label1138
	lu12i.w $t0, -1
	ori $t0, $t0, 583
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1135
	b .long_func_label1138
.long_func_label1135:
# %op1136 = srem i32  %op1131, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1137 = icmp ne i32  %op1136, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label196
	addi.d $t2, $zero, 0
	b false_label196
true_label196:
	addi.d $t2, $zero, 1
false_label196:
	lu12i.w $t8, -1
	ori $t8, $t8, 575
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1137, label %label1139, label %label1144
	lu12i.w $t0, -1
	ori $t0, $t0, 575
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1139
	b .long_func_label1144
.long_func_label1138:
# br label %label1166
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1166
.long_func_label1139:
# %op1140 = srem i32  %op1130, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1141 = icmp eq i32  %op1140, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label197
	addi.d $t2, $zero, 0
	b false_label197
true_label197:
	addi.d $t2, $zero, 1
false_label197:
	lu12i.w $t8, -1
	ori $t8, $t8, 567
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1142 = zext i1  %op1141 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 567
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1143 = icmp ne i32  %op1142, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label198
	addi.d $t2, $zero, 0
	b false_label198
true_label198:
	addi.d $t2, $zero, 1
false_label198:
	lu12i.w $t8, -1
	ori $t8, $t8, 559
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1143, label %label1152, label %label1157
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 559
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1152
	b .long_func_label1157
.long_func_label1144:
# %op1145 = srem i32  %op1130, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1146 = icmp ne i32  %op1145, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label199
	addi.d $t2, $zero, 0
	b false_label199
true_label199:
	addi.d $t2, $zero, 1
false_label199:
	lu12i.w $t8, -1
	ori $t8, $t8, 551
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1146, label %label1159, label %label1164
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 551
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1159
	b .long_func_label1164
.long_func_label1147:
# %op1148 = phi i32  [ %op1158, %label1157 ], [ %op1165, %label1164 ]
# %op1149 = sdiv i32  %op1131, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1150 = sdiv i32  %op1130, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1151 = add i32  %op1129, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1127
	lu12i.w $t0, -1
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1127
.long_func_label1152:
# %op1153 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1129
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1154 = load i32 , i32 * %op1153
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1155 = mul i32  1, %op1154
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1156 = add i32  %op1128, %op1155
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1157
	lu12i.w $t0, -1
	ori $t0, $t0, 508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1157
.long_func_label1157:
# %op1158 = phi i32  [ %op1128, %label1139 ], [ %op1156, %label1152 ]
# br label %label1147
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1147
.long_func_label1159:
# %op1160 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1129
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1161 = load i32 , i32 * %op1160
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1162 = mul i32  1, %op1161
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1163 = add i32  %op1128, %op1162
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1164
	lu12i.w $t0, -1
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1164
.long_func_label1164:
# %op1165 = phi i32  [ %op1128, %label1144 ], [ %op1163, %label1159 ]
# br label %label1147
	lu12i.w $t0, -1
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1147
.long_func_label1166:
# %op1167 = phi i32  [ 0, %label1138 ], [ %op1187, %label1186 ]
# %op1168 = phi i32  [ 0, %label1138 ], [ %op1190, %label1186 ]
# %op1169 = phi i32  [ %op1120, %label1138 ], [ %op1189, %label1186 ]
# %op1170 = phi i32  [ %op1119, %label1138 ], [ %op1188, %label1186 ]
# %op1171 = icmp slt i32  %op1168, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1172 = zext i1  %op1171 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1173 = icmp ne i32  %op1172, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label201
	addi.d $t2, $zero, 0
	b false_label201
true_label201:
	addi.d $t2, $zero, 1
false_label201:
	lu12i.w $t8, -1
	ori $t8, $t8, 455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1173, label %label1174, label %label1177
	lu12i.w $t0, -1
	ori $t0, $t0, 455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1174
	b .long_func_label1177
.long_func_label1174:
# %op1175 = srem i32  %op1170, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1176 = icmp ne i32  %op1175, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label202
	addi.d $t2, $zero, 0
	b false_label202
true_label202:
	addi.d $t2, $zero, 1
false_label202:
	lu12i.w $t8, -1
	ori $t8, $t8, 447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1176, label %label1191, label %label1186
	lu12i.w $t0, -1
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1191
	b .long_func_label1186
.long_func_label1177:
# %op1178 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 446
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1179 = zext i1  %op1178 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 446
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1180 = icmp ne i32  %op1179, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label204
	addi.d $t2, $zero, 0
	b false_label204
true_label204:
	addi.d $t2, $zero, 1
false_label204:
	lu12i.w $t8, -1
	ori $t8, $t8, 439
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1180, label %label1194, label %label1195
	lu12i.w $t0, -1
	ori $t0, $t0, 439
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1194
	b .long_func_label1195
.long_func_label1181:
# %op1182 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1168
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1183 = load i32 , i32 * %op1182
	lu12i.w $t0, -1
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1184 = mul i32  1, %op1183
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1185 = add i32  %op1167, %op1184
	lu12i.w $t0, -1
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1186
	lu12i.w $t0, -1
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1186
.long_func_label1186:
# %op1187 = phi i32  [ %op1167, %label1174 ], [ %op1167, %label1191 ], [ %op1185, %label1181 ]
# %op1188 = sdiv i32  %op1170, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1189 = sdiv i32  %op1169, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1190 = add i32  %op1168, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1166
	lu12i.w $t0, -1
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1166
.long_func_label1191:
# %op1192 = srem i32  %op1169, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1193 = icmp ne i32  %op1192, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label205
	addi.d $t2, $zero, 0
	b false_label205
true_label205:
	addi.d $t2, $zero, 1
false_label205:
	lu12i.w $t8, -1
	ori $t8, $t8, 391
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1193, label %label1181, label %label1186
	lu12i.w $t0, -1
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 391
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1181
	b .long_func_label1186
.long_func_label1194:
# br label %label1199
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1199
.long_func_label1195:
# %op1196 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1197 = load i32 , i32 * %op1196
	lu12i.w $t0, -1
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1198 = mul i32  %op1167, %op1197
	lu12i.w $t0, -1
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1201
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1201
.long_func_label1199:
# %op1200 = phi i32  [ 0, %label1194 ], [ %op1202, %label1212 ]
# br label %label1118
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1118
.long_func_label1201:
# %op1202 = phi i32  [ 0, %label1195 ], [ %op1219, %label1218 ]
# %op1203 = phi i32  [ 0, %label1195 ], [ %op1222, %label1218 ]
# %op1204 = phi i32  [ 65535, %label1195 ], [ %op1221, %label1218 ]
# %op1205 = phi i32  [ %op1198, %label1195 ], [ %op1220, %label1218 ]
# %op1206 = icmp slt i32  %op1203, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 347
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1207 = zext i1  %op1206 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 347
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1208 = icmp ne i32  %op1207, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label207
	addi.d $t2, $zero, 0
	b false_label207
true_label207:
	addi.d $t2, $zero, 1
false_label207:
	lu12i.w $t8, -1
	ori $t8, $t8, 339
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1208, label %label1209, label %label1212
	lu12i.w $t0, -1
	ori $t0, $t0, 339
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1209
	b .long_func_label1212
.long_func_label1209:
# %op1210 = srem i32  %op1205, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1211 = icmp ne i32  %op1210, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label208
	addi.d $t2, $zero, 0
	b false_label208
true_label208:
	addi.d $t2, $zero, 1
false_label208:
	lu12i.w $t8, -1
	ori $t8, $t8, 331
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1211, label %label1223, label %label1218
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 331
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1223
	b .long_func_label1218
.long_func_label1212:
# br label %label1199
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1199
.long_func_label1213:
# %op1214 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1203
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1215 = load i32 , i32 * %op1214
	lu12i.w $t0, -1
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1216 = mul i32  1, %op1215
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1217 = add i32  %op1202, %op1216
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1218
	lu12i.w $t0, -1
	ori $t0, $t0, 308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1218
.long_func_label1218:
# %op1219 = phi i32  [ %op1202, %label1209 ], [ %op1202, %label1223 ], [ %op1217, %label1213 ]
# %op1220 = sdiv i32  %op1205, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1221 = sdiv i32  %op1204, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1222 = add i32  %op1203, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1201
	lu12i.w $t0, -1
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1201
.long_func_label1223:
# %op1224 = srem i32  %op1204, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1225 = icmp ne i32  %op1224, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label209
	addi.d $t2, $zero, 0
	b false_label209
true_label209:
	addi.d $t2, $zero, 1
false_label209:
	lu12i.w $t8, -1
	ori $t8, $t8, 287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1225, label %label1213, label %label1218
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1213
	b .long_func_label1218
.long_func_label1226:
# %op1227 = icmp slt i32  %op976, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 286
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1228 = zext i1  %op1227 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 286
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1229 = icmp ne i32  %op1228, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label211
	addi.d $t2, $zero, 0
	b false_label211
true_label211:
	addi.d $t2, $zero, 1
false_label211:
	lu12i.w $t8, -1
	ori $t8, $t8, 279
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1229, label %label1236, label %label1237
	lu12i.w $t0, -1
	ori $t0, $t0, 279
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1236
	b .long_func_label1237
.long_func_label1230:
# %op1231 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 278
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1232 = zext i1  %op1231 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 278
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1233 = icmp ne i32  %op1232, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label213
	addi.d $t2, $zero, 0
	b false_label213
true_label213:
	addi.d $t2, $zero, 1
false_label213:
	lu12i.w $t8, -1
	ori $t8, $t8, 271
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1233, label %label1240, label %label1244
	lu12i.w $t0, -1
	ori $t0, $t0, 271
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1240
	b .long_func_label1244
.long_func_label1234:
# %op1235 = phi i32  [ %op1239, %label1238 ], [ %op1246, %label1245 ]
# br label %label974
	lu12i.w $t0, -1
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label974
.long_func_label1236:
# br label %label1238
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1238
.long_func_label1237:
# br label %label1238
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1238
.long_func_label1238:
# %op1239 = phi i32  [ 65535, %label1236 ], [ 0, %label1237 ]
# br label %label1234
	lu12i.w $t0, -1
	ori $t0, $t0, 260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1234
.long_func_label1240:
# %op1241 = icmp sgt i32  %op976, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1242 = zext i1  %op1241 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1243 = icmp ne i32  %op1242, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label215
	addi.d $t2, $zero, 0
	b false_label215
true_label215:
	addi.d $t2, $zero, 1
false_label215:
	lu12i.w $t8, -1
	ori $t8, $t8, 251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1243, label %label1247, label %label1257
	lu12i.w $t0, -1
	ori $t0, $t0, 251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1247
	b .long_func_label1257
.long_func_label1244:
# br label %label1245
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1245
.long_func_label1245:
# %op1246 = phi i32  [ %op1262, %label1261 ], [ %op976, %label1244 ]
# br label %label1234
	lu12i.w $t0, -1
	ori $t0, $t0, 244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1234
.long_func_label1247:
# %op1248 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1249 = load i32 , i32 * %op1248
	lu12i.w $t0, -1
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1250 = sdiv i32  %op976, %op1249
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1251 = add i32  %op1250, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1252 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1253 = add i32  %op1252, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1254 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1253
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1255 = load i32 , i32 * %op1254
	lu12i.w $t0, -1
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1256 = sub i32  %op1251, %op1255
	lu12i.w $t0, -1
	ori $t0, $t0, 220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1261
	lu12i.w $t0, -1
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1261
.long_func_label1257:
# %op1258 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1259 = load i32 , i32 * %op1258
	lu12i.w $t0, -1
	ori $t0, $t0, 184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1260 = sdiv i32  %op976, %op1259
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1261
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1261
.long_func_label1261:
# %op1262 = phi i32  [ %op1256, %label1247 ], [ %op1260, %label1257 ]
# br label %label1245
	lu12i.w $t0, -1
	ori $t0, $t0, 172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1245
.long_func_label1263:
# %op1264 = icmp slt i32  %op652, 0
	ld.w $t0, $fp, -2036
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 171
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1265 = zext i1  %op1264 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 171
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1266 = icmp ne i32  %op1265, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label217
	addi.d $t2, $zero, 0
	b false_label217
true_label217:
	addi.d $t2, $zero, 1
false_label217:
	lu12i.w $t8, -1
	ori $t8, $t8, 163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1266, label %label1273, label %label1274
	lu12i.w $t0, -1
	ori $t0, $t0, 163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1273
	b .long_func_label1274
.long_func_label1267:
# %op1268 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 162
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1269 = zext i1  %op1268 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 162
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1270 = icmp ne i32  %op1269, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label219
	addi.d $t2, $zero, 0
	b false_label219
true_label219:
	addi.d $t2, $zero, 1
false_label219:
	lu12i.w $t8, -1
	ori $t8, $t8, 155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1270, label %label1277, label %label1281
	lu12i.w $t0, -1
	ori $t0, $t0, 155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1277
	b .long_func_label1281
.long_func_label1271:
# %op1272 = phi i32  [ %op1276, %label1275 ], [ %op1283, %label1282 ]
# br label %label650
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2032
	lu12i.w $t0, -1
	ori $t0, $t0, 148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2036
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2040
	b .long_func_label650
.long_func_label1273:
# br label %label1275
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -1
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1275
.long_func_label1274:
# br label %label1275
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1275
.long_func_label1275:
# %op1276 = phi i32  [ 65535, %label1273 ], [ 0, %label1274 ]
# br label %label1271
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1271
.long_func_label1277:
# %op1278 = icmp sgt i32  %op652, 32767
	ld.w $t0, $fp, -2036
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 143
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1279 = zext i1  %op1278 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 143
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1280 = icmp ne i32  %op1279, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label221
	addi.d $t2, $zero, 0
	b false_label221
true_label221:
	addi.d $t2, $zero, 1
false_label221:
	lu12i.w $t8, -1
	ori $t8, $t8, 135
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1280, label %label1284, label %label1294
	lu12i.w $t0, -1
	ori $t0, $t0, 135
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1284
	b .long_func_label1294
.long_func_label1281:
# br label %label1282
	ld.w $t0, $fp, -2036
	lu12i.w $t8, -1
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1282
.long_func_label1282:
# %op1283 = phi i32  [ %op1299, %label1298 ], [ %op652, %label1281 ]
# br label %label1271
	lu12i.w $t0, -1
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1271
.long_func_label1284:
# %op1285 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1286 = load i32 , i32 * %op1285
	lu12i.w $t0, -1
	ori $t0, $t0, 120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1287 = sdiv i32  %op652, %op1286
	ld.w $t0, $fp, -2036
	lu12i.w $t1, -1
	ori $t1, $t1, 116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1288 = add i32  %op1287, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1289 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1290 = add i32  %op1289, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1291 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1290
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1292 = load i32 , i32 * %op1291
	lu12i.w $t0, -1
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1293 = sub i32  %op1288, %op1292
	lu12i.w $t0, -1
	ori $t0, $t0, 108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1298
	lu12i.w $t0, -1
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1298
.long_func_label1294:
# %op1295 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1296 = load i32 , i32 * %op1295
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1297 = sdiv i32  %op652, %op1296
	ld.w $t0, $fp, -2036
	lu12i.w $t1, -1
	ori $t1, $t1, 68
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1298
	lu12i.w $t0, -1
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1298
.long_func_label1298:
# %op1299 = phi i32  [ %op1293, %label1284 ], [ %op1297, %label1294 ]
# br label %label1282
	lu12i.w $t0, -1
	ori $t0, $t0, 60
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1282
.long_func_label1300:
# %op1301 = phi i32  [ 2, %label658 ], [ %op1316, %label1315 ]
# %op1302 = icmp slt i32  %op1301, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 55
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1303 = zext i1  %op1302 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 55
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 48
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1304 = icmp ne i32  %op1303, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 48
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label223
	addi.d $t2, $zero, 0
	b false_label223
true_label223:
	addi.d $t2, $zero, 1
false_label223:
	lu12i.w $t8, -1
	ori $t8, $t8, 47
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1304, label %label1305, label %label1306
	lu12i.w $t0, -1
	ori $t0, $t0, 47
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1305
	b .long_func_label1306
.long_func_label1305:
# br label %label1307
	addi.w $t0, $zero, 2
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1307
.long_func_label1306:
# br label %label1958
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1958
.long_func_label1307:
# %op1308 = phi i32  [ 2, %label1305 ], [ %op1635, %label1929 ]
# %op1309 = phi i32  [ %op1301, %label1305 ], [ %op1930, %label1929 ]
# %op1310 = phi i32  [ 1, %label1305 ], [ %op1345, %label1929 ]
# %op1311 = icmp sgt i32  %op1309, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 31
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1312 = zext i1  %op1311 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 31
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1313 = icmp ne i32  %op1312, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label225
	addi.d $t2, $zero, 0
	b false_label225
true_label225:
	addi.d $t2, $zero, 1
false_label225:
	lu12i.w $t8, -1
	ori $t8, $t8, 23
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1313, label %label1314, label %label1315
	lu12i.w $t0, -1
	ori $t0, $t0, 23
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1314
	b .long_func_label1315
.long_func_label1314:
# br label %label1317
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -1
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1317
.long_func_label1315:
# call void @putint(i32  %op1310)
	lu12i.w $a0, -1
	ori $a0, $a0, 32
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op1316 = add i32  %op1301, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1300
	lu12i.w $t0, -1
	ori $t0, $t0, 16
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1300
.long_func_label1317:
# %op1318 = phi i32  [ 0, %label1314 ], [ %op1336, %label1335 ]
# %op1319 = phi i32  [ 0, %label1314 ], [ %op1339, %label1335 ]
# %op1320 = phi i32  [ 1, %label1314 ], [ %op1338, %label1335 ]
# %op1321 = phi i32  [ %op1309, %label1314 ], [ %op1337, %label1335 ]
# %op1322 = icmp slt i32  %op1319, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4095
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1323 = zext i1  %op1322 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4095
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1324 = icmp ne i32  %op1323, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label227
	addi.d $t2, $zero, 0
	b false_label227
true_label227:
	addi.d $t2, $zero, 1
false_label227:
	lu12i.w $t8, -2
	ori $t8, $t8, 4087
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1324, label %label1325, label %label1328
	lu12i.w $t0, -2
	ori $t0, $t0, 4087
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1325
	b .long_func_label1328
.long_func_label1325:
# %op1326 = srem i32  %op1321, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1327 = icmp ne i32  %op1326, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label228
	addi.d $t2, $zero, 0
	b false_label228
true_label228:
	addi.d $t2, $zero, 1
false_label228:
	lu12i.w $t8, -2
	ori $t8, $t8, 4079
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1327, label %label1340, label %label1335
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4079
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1340
	b .long_func_label1335
.long_func_label1328:
# %op1329 = icmp ne i32  %op1318, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label229
	addi.d $t2, $zero, 0
	b false_label229
true_label229:
	addi.d $t2, $zero, 1
false_label229:
	lu12i.w $t8, -2
	ori $t8, $t8, 4078
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1329, label %label1343, label %label1344
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4078
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1343
	b .long_func_label1344
.long_func_label1330:
# %op1331 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1319
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 8
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1332 = load i32 , i32 * %op1331
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1333 = mul i32  1, %op1332
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 4060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1334 = add i32  %op1318, %op1333
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1335
	lu12i.w $t0, -2
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1335
.long_func_label1335:
# %op1336 = phi i32  [ %op1318, %label1325 ], [ %op1318, %label1340 ], [ %op1334, %label1330 ]
# %op1337 = sdiv i32  %op1321, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1338 = sdiv i32  %op1320, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 4
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1339 = add i32  %op1319, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1317
	lu12i.w $t0, -2
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1317
.long_func_label1340:
# %op1341 = srem i32  %op1320, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 4
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1342 = icmp ne i32  %op1341, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label230
	addi.d $t2, $zero, 0
	b false_label230
true_label230:
	addi.d $t2, $zero, 1
false_label230:
	lu12i.w $t8, -2
	ori $t8, $t8, 4031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1342, label %label1330, label %label1335
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1330
	b .long_func_label1335
.long_func_label1343:
# br label %label1346
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1346
.long_func_label1344:
# %op1345 = phi i32  [ %op1310, %label1328 ], [ %op1349, %label1352 ]
# br label %label1632
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1632
.long_func_label1346:
# %op1347 = phi i32  [ %op1310, %label1343 ], [ %op1488, %label1603 ]
# %op1348 = phi i32  [ %op1308, %label1343 ], [ %op1604, %label1603 ]
# %op1349 = phi i32  [ 0, %label1343 ], [ %op1381, %label1603 ]
# %op1350 = icmp ne i32  %op1348, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label231
	addi.d $t2, $zero, 0
	b false_label231
true_label231:
	addi.d $t2, $zero, 1
false_label231:
	lu12i.w $t8, -2
	ori $t8, $t8, 4011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1350, label %label1351, label %label1352
	lu12i.w $t0, -2
	ori $t0, $t0, 4011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1351
	b .long_func_label1352
.long_func_label1351:
# br label %label1353
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1353
.long_func_label1352:
# br label %label1344
	lu12i.w $t0, -2
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1344
.long_func_label1353:
# %op1354 = phi i32  [ 0, %label1351 ], [ %op1372, %label1371 ]
# %op1355 = phi i32  [ 0, %label1351 ], [ %op1375, %label1371 ]
# %op1356 = phi i32  [ 1, %label1351 ], [ %op1374, %label1371 ]
# %op1357 = phi i32  [ %op1348, %label1351 ], [ %op1373, %label1371 ]
# %op1358 = icmp slt i32  %op1355, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3991
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1359 = zext i1  %op1358 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3991
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1360 = icmp ne i32  %op1359, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label233
	addi.d $t2, $zero, 0
	b false_label233
true_label233:
	addi.d $t2, $zero, 1
false_label233:
	lu12i.w $t8, -2
	ori $t8, $t8, 3983
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1360, label %label1361, label %label1364
	lu12i.w $t0, -2
	ori $t0, $t0, 3983
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1361
	b .long_func_label1364
.long_func_label1361:
# %op1362 = srem i32  %op1357, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1363 = icmp ne i32  %op1362, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label234
	addi.d $t2, $zero, 0
	b false_label234
true_label234:
	addi.d $t2, $zero, 1
false_label234:
	lu12i.w $t8, -2
	ori $t8, $t8, 3975
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1363, label %label1376, label %label1371
	lu12i.w $t0, -2
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3975
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1376
	b .long_func_label1371
.long_func_label1364:
# %op1365 = icmp ne i32  %op1354, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label235
	addi.d $t2, $zero, 0
	b false_label235
true_label235:
	addi.d $t2, $zero, 1
false_label235:
	lu12i.w $t8, -2
	ori $t8, $t8, 3974
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1365, label %label1379, label %label1380
	lu12i.w $t0, -2
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3974
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1379
	b .long_func_label1380
.long_func_label1366:
# %op1367 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1355
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 4000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1368 = load i32 , i32 * %op1367
	lu12i.w $t0, -2
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1369 = mul i32  1, %op1368
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1370 = add i32  %op1354, %op1369
	lu12i.w $t0, -2
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1371
	lu12i.w $t0, -2
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1371
.long_func_label1371:
# %op1372 = phi i32  [ %op1354, %label1361 ], [ %op1354, %label1376 ], [ %op1370, %label1366 ]
# %op1373 = sdiv i32  %op1357, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1374 = sdiv i32  %op1356, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1375 = add i32  %op1355, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1353
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1353
.long_func_label1376:
# %op1377 = srem i32  %op1356, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1378 = icmp ne i32  %op1377, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label236
	addi.d $t2, $zero, 0
	b false_label236
true_label236:
	addi.d $t2, $zero, 1
false_label236:
	lu12i.w $t8, -2
	ori $t8, $t8, 3927
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1378, label %label1366, label %label1371
	lu12i.w $t0, -2
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3927
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1366
	b .long_func_label1371
.long_func_label1379:
# br label %label1382
	lu12i.w $t0, -2
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1382
.long_func_label1380:
# %op1381 = phi i32  [ %op1349, %label1364 ], [ %op1383, %label1387 ]
# br label %label1487
	lu12i.w $t0, -2
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1487
.long_func_label1382:
# %op1383 = phi i32  [ %op1349, %label1379 ], [ %op1389, %label1460 ]
# %op1384 = phi i32  [ %op1347, %label1379 ], [ %op1461, %label1460 ]
# %op1385 = icmp ne i32  %op1384, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label237
	addi.d $t2, $zero, 0
	b false_label237
true_label237:
	addi.d $t2, $zero, 1
false_label237:
	lu12i.w $t8, -2
	ori $t8, $t8, 3911
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1385, label %label1386, label %label1387
	lu12i.w $t0, -2
	ori $t0, $t0, 3911
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1386
	b .long_func_label1387
.long_func_label1386:
# br label %label1388
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1388
.long_func_label1387:
# br label %label1380
	lu12i.w $t0, -2
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1380
.long_func_label1388:
# %op1389 = phi i32  [ 0, %label1386 ], [ %op1409, %label1408 ]
# %op1390 = phi i32  [ 0, %label1386 ], [ %op1412, %label1408 ]
# %op1391 = phi i32  [ %op1384, %label1386 ], [ %op1411, %label1408 ]
# %op1392 = phi i32  [ %op1383, %label1386 ], [ %op1410, %label1408 ]
# %op1393 = icmp slt i32  %op1390, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1394 = zext i1  %op1393 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1395 = icmp ne i32  %op1394, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label239
	addi.d $t2, $zero, 0
	b false_label239
true_label239:
	addi.d $t2, $zero, 1
false_label239:
	lu12i.w $t8, -2
	ori $t8, $t8, 3883
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1395, label %label1396, label %label1399
	lu12i.w $t0, -2
	ori $t0, $t0, 3883
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1396
	b .long_func_label1399
.long_func_label1396:
# %op1397 = srem i32  %op1392, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1398 = icmp ne i32  %op1397, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label240
	addi.d $t2, $zero, 0
	b false_label240
true_label240:
	addi.d $t2, $zero, 1
false_label240:
	lu12i.w $t8, -2
	ori $t8, $t8, 3875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1398, label %label1400, label %label1405
	lu12i.w $t0, -2
	ori $t0, $t0, 3875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1400
	b .long_func_label1405
.long_func_label1399:
# br label %label1427
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1427
.long_func_label1400:
# %op1401 = srem i32  %op1391, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1402 = icmp eq i32  %op1401, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label241
	addi.d $t2, $zero, 0
	b false_label241
true_label241:
	addi.d $t2, $zero, 1
false_label241:
	lu12i.w $t8, -2
	ori $t8, $t8, 3867
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1403 = zext i1  %op1402 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3867
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1404 = icmp ne i32  %op1403, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label242
	addi.d $t2, $zero, 0
	b false_label242
true_label242:
	addi.d $t2, $zero, 1
false_label242:
	lu12i.w $t8, -2
	ori $t8, $t8, 3859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1404, label %label1413, label %label1418
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1413
	b .long_func_label1418
.long_func_label1405:
# %op1406 = srem i32  %op1391, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1407 = icmp ne i32  %op1406, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label243
	addi.d $t2, $zero, 0
	b false_label243
true_label243:
	addi.d $t2, $zero, 1
false_label243:
	lu12i.w $t8, -2
	ori $t8, $t8, 3851
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1407, label %label1420, label %label1425
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3851
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1420
	b .long_func_label1425
.long_func_label1408:
# %op1409 = phi i32  [ %op1419, %label1418 ], [ %op1426, %label1425 ]
# %op1410 = sdiv i32  %op1392, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1411 = sdiv i32  %op1391, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1412 = add i32  %op1390, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1388
	lu12i.w $t0, -2
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1388
.long_func_label1413:
# %op1414 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1390
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1415 = load i32 , i32 * %op1414
	lu12i.w $t0, -2
	ori $t0, $t0, 3824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1416 = mul i32  1, %op1415
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1417 = add i32  %op1389, %op1416
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1418
	lu12i.w $t0, -2
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1418
.long_func_label1418:
# %op1419 = phi i32  [ %op1389, %label1400 ], [ %op1417, %label1413 ]
# br label %label1408
	lu12i.w $t0, -2
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1408
.long_func_label1420:
# %op1421 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1390
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1422 = load i32 , i32 * %op1421
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1423 = mul i32  1, %op1422
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1424 = add i32  %op1389, %op1423
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1425
	lu12i.w $t0, -2
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1425
.long_func_label1425:
# %op1426 = phi i32  [ %op1389, %label1405 ], [ %op1424, %label1420 ]
# br label %label1408
	lu12i.w $t0, -2
	ori $t0, $t0, 3784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1408
.long_func_label1427:
# %op1428 = phi i32  [ 0, %label1399 ], [ %op1448, %label1447 ]
# %op1429 = phi i32  [ 0, %label1399 ], [ %op1451, %label1447 ]
# %op1430 = phi i32  [ %op1384, %label1399 ], [ %op1450, %label1447 ]
# %op1431 = phi i32  [ %op1383, %label1399 ], [ %op1449, %label1447 ]
# %op1432 = icmp slt i32  %op1429, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3767
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1433 = zext i1  %op1432 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3767
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1434 = icmp ne i32  %op1433, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label245
	addi.d $t2, $zero, 0
	b false_label245
true_label245:
	addi.d $t2, $zero, 1
false_label245:
	lu12i.w $t8, -2
	ori $t8, $t8, 3759
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1434, label %label1435, label %label1438
	lu12i.w $t0, -2
	ori $t0, $t0, 3759
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1435
	b .long_func_label1438
.long_func_label1435:
# %op1436 = srem i32  %op1431, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1437 = icmp ne i32  %op1436, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label246
	addi.d $t2, $zero, 0
	b false_label246
true_label246:
	addi.d $t2, $zero, 1
false_label246:
	lu12i.w $t8, -2
	ori $t8, $t8, 3751
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1437, label %label1452, label %label1447
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3751
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1452
	b .long_func_label1447
.long_func_label1438:
# %op1439 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3750
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1440 = zext i1  %op1439 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3750
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1441 = icmp ne i32  %op1440, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label248
	addi.d $t2, $zero, 0
	b false_label248
true_label248:
	addi.d $t2, $zero, 1
false_label248:
	lu12i.w $t8, -2
	ori $t8, $t8, 3743
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1441, label %label1455, label %label1456
	lu12i.w $t0, -2
	ori $t0, $t0, 3743
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1455
	b .long_func_label1456
.long_func_label1442:
# %op1443 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1429
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1444 = load i32 , i32 * %op1443
	lu12i.w $t0, -2
	ori $t0, $t0, 3728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1445 = mul i32  1, %op1444
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1446 = add i32  %op1428, %op1445
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1447
	lu12i.w $t0, -2
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1447
.long_func_label1447:
# %op1448 = phi i32  [ %op1428, %label1435 ], [ %op1428, %label1452 ], [ %op1446, %label1442 ]
# %op1449 = sdiv i32  %op1431, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1450 = sdiv i32  %op1430, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1451 = add i32  %op1429, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1427
	lu12i.w $t0, -2
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1427
.long_func_label1452:
# %op1453 = srem i32  %op1430, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1454 = icmp ne i32  %op1453, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label249
	addi.d $t2, $zero, 0
	b false_label249
true_label249:
	addi.d $t2, $zero, 1
false_label249:
	lu12i.w $t8, -2
	ori $t8, $t8, 3695
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1454, label %label1442, label %label1447
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3695
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1442
	b .long_func_label1447
.long_func_label1455:
# br label %label1460
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1460
.long_func_label1456:
# %op1457 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 3680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1458 = load i32 , i32 * %op1457
	lu12i.w $t0, -2
	ori $t0, $t0, 3680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1459 = mul i32  %op1428, %op1458
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1462
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1462
.long_func_label1460:
# %op1461 = phi i32  [ 0, %label1455 ], [ %op1463, %label1473 ]
# br label %label1382
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1382
.long_func_label1462:
# %op1463 = phi i32  [ 0, %label1456 ], [ %op1480, %label1479 ]
# %op1464 = phi i32  [ 0, %label1456 ], [ %op1483, %label1479 ]
# %op1465 = phi i32  [ 65535, %label1456 ], [ %op1482, %label1479 ]
# %op1466 = phi i32  [ %op1459, %label1456 ], [ %op1481, %label1479 ]
# %op1467 = icmp slt i32  %op1464, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3651
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1468 = zext i1  %op1467 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3651
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1469 = icmp ne i32  %op1468, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label251
	addi.d $t2, $zero, 0
	b false_label251
true_label251:
	addi.d $t2, $zero, 1
false_label251:
	lu12i.w $t8, -2
	ori $t8, $t8, 3643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1469, label %label1470, label %label1473
	lu12i.w $t0, -2
	ori $t0, $t0, 3643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1470
	b .long_func_label1473
.long_func_label1470:
# %op1471 = srem i32  %op1466, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1472 = icmp ne i32  %op1471, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label252
	addi.d $t2, $zero, 0
	b false_label252
true_label252:
	addi.d $t2, $zero, 1
false_label252:
	lu12i.w $t8, -2
	ori $t8, $t8, 3635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1472, label %label1484, label %label1479
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1484
	b .long_func_label1479
.long_func_label1473:
# br label %label1460
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1460
.long_func_label1474:
# %op1475 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1464
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1476 = load i32 , i32 * %op1475
	lu12i.w $t0, -2
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1477 = mul i32  1, %op1476
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1478 = add i32  %op1463, %op1477
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1479
	lu12i.w $t0, -2
	ori $t0, $t0, 3612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1479
.long_func_label1479:
# %op1480 = phi i32  [ %op1463, %label1470 ], [ %op1463, %label1484 ], [ %op1478, %label1474 ]
# %op1481 = sdiv i32  %op1466, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1482 = sdiv i32  %op1465, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1483 = add i32  %op1464, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1462
	lu12i.w $t0, -2
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1462
.long_func_label1484:
# %op1485 = srem i32  %op1465, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1486 = icmp ne i32  %op1485, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label253
	addi.d $t2, $zero, 0
	b false_label253
true_label253:
	addi.d $t2, $zero, 1
false_label253:
	lu12i.w $t8, -2
	ori $t8, $t8, 3591
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1486, label %label1474, label %label1479
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3591
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1474
	b .long_func_label1479
.long_func_label1487:
# %op1488 = phi i32  [ %op1347, %label1380 ], [ %op1497, %label1568 ]
# %op1489 = phi i32  [ %op1347, %label1380 ], [ %op1569, %label1568 ]
# %op1490 = icmp ne i32  %op1489, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label254
	addi.d $t2, $zero, 0
	b false_label254
true_label254:
	addi.d $t2, $zero, 1
false_label254:
	lu12i.w $t8, -2
	ori $t8, $t8, 3579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1490, label %label1491, label %label1492
	lu12i.w $t0, -2
	ori $t0, $t0, 3579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1491
	b .long_func_label1492
.long_func_label1491:
# br label %label1496
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1496
.long_func_label1492:
# %op1493 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label255
	addi.d $t2, $zero, 0
	b false_label255
true_label255:
	addi.d $t2, $zero, 1
false_label255:
	lu12i.w $t8, -2
	ori $t8, $t8, 3578
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1494 = zext i1  %op1493 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3578
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1495 = icmp ne i32  %op1494, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label256
	addi.d $t2, $zero, 0
	b false_label256
true_label256:
	addi.d $t2, $zero, 1
false_label256:
	lu12i.w $t8, -2
	ori $t8, $t8, 3571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1495, label %label1595, label %label1599
	lu12i.w $t0, -2
	ori $t0, $t0, 3571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1595
	b .long_func_label1599
.long_func_label1496:
# %op1497 = phi i32  [ 0, %label1491 ], [ %op1517, %label1516 ]
# %op1498 = phi i32  [ 0, %label1491 ], [ %op1520, %label1516 ]
# %op1499 = phi i32  [ %op1489, %label1491 ], [ %op1519, %label1516 ]
# %op1500 = phi i32  [ %op1488, %label1491 ], [ %op1518, %label1516 ]
# %op1501 = icmp slt i32  %op1498, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3551
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1502 = zext i1  %op1501 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3551
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1503 = icmp ne i32  %op1502, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label258
	addi.d $t2, $zero, 0
	b false_label258
true_label258:
	addi.d $t2, $zero, 1
false_label258:
	lu12i.w $t8, -2
	ori $t8, $t8, 3543
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1503, label %label1504, label %label1507
	lu12i.w $t0, -2
	ori $t0, $t0, 3543
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1504
	b .long_func_label1507
.long_func_label1504:
# %op1505 = srem i32  %op1500, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1506 = icmp ne i32  %op1505, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label259
	addi.d $t2, $zero, 0
	b false_label259
true_label259:
	addi.d $t2, $zero, 1
false_label259:
	lu12i.w $t8, -2
	ori $t8, $t8, 3535
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1506, label %label1508, label %label1513
	lu12i.w $t0, -2
	ori $t0, $t0, 3535
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1508
	b .long_func_label1513
.long_func_label1507:
# br label %label1535
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1535
.long_func_label1508:
# %op1509 = srem i32  %op1499, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1510 = icmp eq i32  %op1509, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label260
	addi.d $t2, $zero, 0
	b false_label260
true_label260:
	addi.d $t2, $zero, 1
false_label260:
	lu12i.w $t8, -2
	ori $t8, $t8, 3527
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1511 = zext i1  %op1510 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3527
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1512 = icmp ne i32  %op1511, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label261
	addi.d $t2, $zero, 0
	b false_label261
true_label261:
	addi.d $t2, $zero, 1
false_label261:
	lu12i.w $t8, -2
	ori $t8, $t8, 3519
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1512, label %label1521, label %label1526
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3519
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1521
	b .long_func_label1526
.long_func_label1513:
# %op1514 = srem i32  %op1499, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1515 = icmp ne i32  %op1514, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label262
	addi.d $t2, $zero, 0
	b false_label262
true_label262:
	addi.d $t2, $zero, 1
false_label262:
	lu12i.w $t8, -2
	ori $t8, $t8, 3511
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1515, label %label1528, label %label1533
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3511
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1528
	b .long_func_label1533
.long_func_label1516:
# %op1517 = phi i32  [ %op1527, %label1526 ], [ %op1534, %label1533 ]
# %op1518 = sdiv i32  %op1500, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1519 = sdiv i32  %op1499, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1520 = add i32  %op1498, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1496
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1496
.long_func_label1521:
# %op1522 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1498
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1523 = load i32 , i32 * %op1522
	lu12i.w $t0, -2
	ori $t0, $t0, 3480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1524 = mul i32  1, %op1523
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1525 = add i32  %op1497, %op1524
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1526
	lu12i.w $t0, -2
	ori $t0, $t0, 3468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1526
.long_func_label1526:
# %op1527 = phi i32  [ %op1497, %label1508 ], [ %op1525, %label1521 ]
# br label %label1516
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1516
.long_func_label1528:
# %op1529 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1498
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1530 = load i32 , i32 * %op1529
	lu12i.w $t0, -2
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1531 = mul i32  1, %op1530
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1532 = add i32  %op1497, %op1531
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1533
	lu12i.w $t0, -2
	ori $t0, $t0, 3444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1533
.long_func_label1533:
# %op1534 = phi i32  [ %op1497, %label1513 ], [ %op1532, %label1528 ]
# br label %label1516
	lu12i.w $t0, -2
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1516
.long_func_label1535:
# %op1536 = phi i32  [ 0, %label1507 ], [ %op1556, %label1555 ]
# %op1537 = phi i32  [ 0, %label1507 ], [ %op1559, %label1555 ]
# %op1538 = phi i32  [ %op1489, %label1507 ], [ %op1558, %label1555 ]
# %op1539 = phi i32  [ %op1488, %label1507 ], [ %op1557, %label1555 ]
# %op1540 = icmp slt i32  %op1537, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3423
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1541 = zext i1  %op1540 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3423
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1542 = icmp ne i32  %op1541, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label264
	addi.d $t2, $zero, 0
	b false_label264
true_label264:
	addi.d $t2, $zero, 1
false_label264:
	lu12i.w $t8, -2
	ori $t8, $t8, 3415
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1542, label %label1543, label %label1546
	lu12i.w $t0, -2
	ori $t0, $t0, 3415
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1543
	b .long_func_label1546
.long_func_label1543:
# %op1544 = srem i32  %op1539, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1545 = icmp ne i32  %op1544, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label265
	addi.d $t2, $zero, 0
	b false_label265
true_label265:
	addi.d $t2, $zero, 1
false_label265:
	lu12i.w $t8, -2
	ori $t8, $t8, 3407
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1545, label %label1560, label %label1555
	lu12i.w $t0, -2
	ori $t0, $t0, 3436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3407
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1560
	b .long_func_label1555
.long_func_label1546:
# %op1547 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3406
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1548 = zext i1  %op1547 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3406
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1549 = icmp ne i32  %op1548, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label267
	addi.d $t2, $zero, 0
	b false_label267
true_label267:
	addi.d $t2, $zero, 1
false_label267:
	lu12i.w $t8, -2
	ori $t8, $t8, 3399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1549, label %label1563, label %label1564
	lu12i.w $t0, -2
	ori $t0, $t0, 3399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1563
	b .long_func_label1564
.long_func_label1550:
# %op1551 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1537
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1552 = load i32 , i32 * %op1551
	lu12i.w $t0, -2
	ori $t0, $t0, 3384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1553 = mul i32  1, %op1552
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1554 = add i32  %op1536, %op1553
	lu12i.w $t0, -2
	ori $t0, $t0, 3436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1555
	lu12i.w $t0, -2
	ori $t0, $t0, 3372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1555
.long_func_label1555:
# %op1556 = phi i32  [ %op1536, %label1543 ], [ %op1536, %label1560 ], [ %op1554, %label1550 ]
# %op1557 = sdiv i32  %op1539, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1558 = sdiv i32  %op1538, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1559 = add i32  %op1537, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1535
	lu12i.w $t0, -2
	ori $t0, $t0, 3368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1535
.long_func_label1560:
# %op1561 = srem i32  %op1538, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1562 = icmp ne i32  %op1561, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label268
	addi.d $t2, $zero, 0
	b false_label268
true_label268:
	addi.d $t2, $zero, 1
false_label268:
	lu12i.w $t8, -2
	ori $t8, $t8, 3351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1562, label %label1550, label %label1555
	lu12i.w $t0, -2
	ori $t0, $t0, 3436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1550
	b .long_func_label1555
.long_func_label1563:
# br label %label1568
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1568
.long_func_label1564:
# %op1565 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1566 = load i32 , i32 * %op1565
	lu12i.w $t0, -2
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1567 = mul i32  %op1536, %op1566
	lu12i.w $t0, -2
	ori $t0, $t0, 3436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1570
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1570
.long_func_label1568:
# %op1569 = phi i32  [ 0, %label1563 ], [ %op1571, %label1581 ]
# br label %label1487
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1487
.long_func_label1570:
# %op1571 = phi i32  [ 0, %label1564 ], [ %op1588, %label1587 ]
# %op1572 = phi i32  [ 0, %label1564 ], [ %op1591, %label1587 ]
# %op1573 = phi i32  [ 65535, %label1564 ], [ %op1590, %label1587 ]
# %op1574 = phi i32  [ %op1567, %label1564 ], [ %op1589, %label1587 ]
# %op1575 = icmp slt i32  %op1572, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3307
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1576 = zext i1  %op1575 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3307
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1577 = icmp ne i32  %op1576, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label270
	addi.d $t2, $zero, 0
	b false_label270
true_label270:
	addi.d $t2, $zero, 1
false_label270:
	lu12i.w $t8, -2
	ori $t8, $t8, 3299
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1577, label %label1578, label %label1581
	lu12i.w $t0, -2
	ori $t0, $t0, 3299
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1578
	b .long_func_label1581
.long_func_label1578:
# %op1579 = srem i32  %op1574, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1580 = icmp ne i32  %op1579, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label271
	addi.d $t2, $zero, 0
	b false_label271
true_label271:
	addi.d $t2, $zero, 1
false_label271:
	lu12i.w $t8, -2
	ori $t8, $t8, 3291
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1580, label %label1592, label %label1587
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3291
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1592
	b .long_func_label1587
.long_func_label1581:
# br label %label1568
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1568
.long_func_label1582:
# %op1583 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1572
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1584 = load i32 , i32 * %op1583
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1585 = mul i32  1, %op1584
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1586 = add i32  %op1571, %op1585
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1587
	lu12i.w $t0, -2
	ori $t0, $t0, 3268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1587
.long_func_label1587:
# %op1588 = phi i32  [ %op1571, %label1578 ], [ %op1571, %label1592 ], [ %op1586, %label1582 ]
# %op1589 = sdiv i32  %op1574, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1590 = sdiv i32  %op1573, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1591 = add i32  %op1572, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1570
	lu12i.w $t0, -2
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1570
.long_func_label1592:
# %op1593 = srem i32  %op1573, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1594 = icmp ne i32  %op1593, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label272
	addi.d $t2, $zero, 0
	b false_label272
true_label272:
	addi.d $t2, $zero, 1
false_label272:
	lu12i.w $t8, -2
	ori $t8, $t8, 3247
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1594, label %label1582, label %label1587
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3247
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1582
	b .long_func_label1587
.long_func_label1595:
# %op1596 = icmp slt i32  %op1348, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3246
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1597 = zext i1  %op1596 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3246
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1598 = icmp ne i32  %op1597, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label274
	addi.d $t2, $zero, 0
	b false_label274
true_label274:
	addi.d $t2, $zero, 1
false_label274:
	lu12i.w $t8, -2
	ori $t8, $t8, 3239
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1598, label %label1605, label %label1606
	lu12i.w $t0, -2
	ori $t0, $t0, 3239
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1605
	b .long_func_label1606
.long_func_label1599:
# %op1600 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3238
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1601 = zext i1  %op1600 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3238
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1602 = icmp ne i32  %op1601, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label276
	addi.d $t2, $zero, 0
	b false_label276
true_label276:
	addi.d $t2, $zero, 1
false_label276:
	lu12i.w $t8, -2
	ori $t8, $t8, 3231
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1602, label %label1609, label %label1613
	lu12i.w $t0, -2
	ori $t0, $t0, 3231
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1609
	b .long_func_label1613
.long_func_label1603:
# %op1604 = phi i32  [ %op1608, %label1607 ], [ %op1615, %label1614 ]
# br label %label1346
	lu12i.w $t0, -2
	ori $t0, $t0, 3584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1346
.long_func_label1605:
# br label %label1607
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1607
.long_func_label1606:
# br label %label1607
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1607
.long_func_label1607:
# %op1608 = phi i32  [ 65535, %label1605 ], [ 0, %label1606 ]
# br label %label1603
	lu12i.w $t0, -2
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1603
.long_func_label1609:
# %op1610 = icmp sgt i32  %op1348, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1611 = zext i1  %op1610 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1612 = icmp ne i32  %op1611, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label278
	addi.d $t2, $zero, 0
	b false_label278
true_label278:
	addi.d $t2, $zero, 1
false_label278:
	lu12i.w $t8, -2
	ori $t8, $t8, 3211
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1612, label %label1616, label %label1626
	lu12i.w $t0, -2
	ori $t0, $t0, 3211
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1616
	b .long_func_label1626
.long_func_label1613:
# br label %label1614
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1614
.long_func_label1614:
# %op1615 = phi i32  [ %op1631, %label1630 ], [ %op1348, %label1613 ]
# br label %label1603
	lu12i.w $t0, -2
	ori $t0, $t0, 3204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1603
.long_func_label1616:
# %op1617 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1618 = load i32 , i32 * %op1617
	lu12i.w $t0, -2
	ori $t0, $t0, 3192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1619 = sdiv i32  %op1348, %op1618
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1620 = add i32  %op1619, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 3184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1621 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1622 = add i32  %op1621, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1623 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1622
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1624 = load i32 , i32 * %op1623
	lu12i.w $t0, -2
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1625 = sub i32  %op1620, %op1624
	lu12i.w $t0, -2
	ori $t0, $t0, 3180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1630
	lu12i.w $t0, -2
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1630
.long_func_label1626:
# %op1627 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1628 = load i32 , i32 * %op1627
	lu12i.w $t0, -2
	ori $t0, $t0, 3144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1629 = sdiv i32  %op1348, %op1628
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1630
	lu12i.w $t0, -2
	ori $t0, $t0, 3136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1630
.long_func_label1630:
# %op1631 = phi i32  [ %op1625, %label1616 ], [ %op1629, %label1626 ]
# br label %label1614
	lu12i.w $t0, -2
	ori $t0, $t0, 3132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1614
.long_func_label1632:
# %op1633 = phi i32  [ %op1308, %label1344 ], [ %op1777, %label1892 ]
# %op1634 = phi i32  [ %op1308, %label1344 ], [ %op1893, %label1892 ]
# %op1635 = phi i32  [ 0, %label1344 ], [ %op1670, %label1892 ]
# %op1636 = icmp ne i32  %op1634, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label279
	addi.d $t2, $zero, 0
	b false_label279
true_label279:
	addi.d $t2, $zero, 1
false_label279:
	lu12i.w $t8, -2
	ori $t8, $t8, 3119
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1636, label %label1637, label %label1638
	lu12i.w $t0, -2
	ori $t0, $t0, 3119
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1637
	b .long_func_label1638
.long_func_label1637:
# br label %label1642
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1642
.long_func_label1638:
# %op1639 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label280
	addi.d $t2, $zero, 0
	b false_label280
true_label280:
	addi.d $t2, $zero, 1
false_label280:
	lu12i.w $t8, -2
	ori $t8, $t8, 3118
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1640 = zext i1  %op1639 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3118
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1641 = icmp ne i32  %op1640, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label281
	addi.d $t2, $zero, 0
	b false_label281
true_label281:
	addi.d $t2, $zero, 1
false_label281:
	lu12i.w $t8, -2
	ori $t8, $t8, 3111
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1641, label %label1921, label %label1925
	lu12i.w $t0, -2
	ori $t0, $t0, 3111
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1921
	b .long_func_label1925
.long_func_label1642:
# %op1643 = phi i32  [ 0, %label1637 ], [ %op1661, %label1660 ]
# %op1644 = phi i32  [ 0, %label1637 ], [ %op1664, %label1660 ]
# %op1645 = phi i32  [ 1, %label1637 ], [ %op1663, %label1660 ]
# %op1646 = phi i32  [ %op1634, %label1637 ], [ %op1662, %label1660 ]
# %op1647 = icmp slt i32  %op1644, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1648 = zext i1  %op1647 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1649 = icmp ne i32  %op1648, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label283
	addi.d $t2, $zero, 0
	b false_label283
true_label283:
	addi.d $t2, $zero, 1
false_label283:
	lu12i.w $t8, -2
	ori $t8, $t8, 3083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1649, label %label1650, label %label1653
	lu12i.w $t0, -2
	ori $t0, $t0, 3083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1650
	b .long_func_label1653
.long_func_label1650:
# %op1651 = srem i32  %op1646, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1652 = icmp ne i32  %op1651, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label284
	addi.d $t2, $zero, 0
	b false_label284
true_label284:
	addi.d $t2, $zero, 1
false_label284:
	lu12i.w $t8, -2
	ori $t8, $t8, 3075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1652, label %label1665, label %label1660
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1665
	b .long_func_label1660
.long_func_label1653:
# %op1654 = icmp ne i32  %op1643, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label285
	addi.d $t2, $zero, 0
	b false_label285
true_label285:
	addi.d $t2, $zero, 1
false_label285:
	lu12i.w $t8, -2
	ori $t8, $t8, 3074
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1654, label %label1668, label %label1669
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3074
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1668
	b .long_func_label1669
.long_func_label1655:
# %op1656 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1644
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1657 = load i32 , i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 3064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1658 = mul i32  1, %op1657
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1659 = add i32  %op1643, %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1660
	lu12i.w $t0, -2
	ori $t0, $t0, 3052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1660
.long_func_label1660:
# %op1661 = phi i32  [ %op1643, %label1650 ], [ %op1643, %label1665 ], [ %op1659, %label1655 ]
# %op1662 = sdiv i32  %op1646, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1663 = sdiv i32  %op1645, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1664 = add i32  %op1644, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1642
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1642
.long_func_label1665:
# %op1666 = srem i32  %op1645, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1667 = icmp ne i32  %op1666, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label286
	addi.d $t2, $zero, 0
	b false_label286
true_label286:
	addi.d $t2, $zero, 1
false_label286:
	lu12i.w $t8, -2
	ori $t8, $t8, 3031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1667, label %label1655, label %label1660
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1655
	b .long_func_label1660
.long_func_label1668:
# br label %label1671
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1671
.long_func_label1669:
# %op1670 = phi i32  [ %op1635, %label1653 ], [ %op1672, %label1676 ]
# br label %label1776
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1776
.long_func_label1671:
# %op1672 = phi i32  [ %op1635, %label1668 ], [ %op1678, %label1749 ]
# %op1673 = phi i32  [ %op1633, %label1668 ], [ %op1750, %label1749 ]
# %op1674 = icmp ne i32  %op1673, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label287
	addi.d $t2, $zero, 0
	b false_label287
true_label287:
	addi.d $t2, $zero, 1
false_label287:
	lu12i.w $t8, -2
	ori $t8, $t8, 3015
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1674, label %label1675, label %label1676
	lu12i.w $t0, -2
	ori $t0, $t0, 3015
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1675
	b .long_func_label1676
.long_func_label1675:
# br label %label1677
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1677
.long_func_label1676:
# br label %label1669
	lu12i.w $t0, -2
	ori $t0, $t0, 3020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1669
.long_func_label1677:
# %op1678 = phi i32  [ 0, %label1675 ], [ %op1698, %label1697 ]
# %op1679 = phi i32  [ 0, %label1675 ], [ %op1701, %label1697 ]
# %op1680 = phi i32  [ %op1673, %label1675 ], [ %op1700, %label1697 ]
# %op1681 = phi i32  [ %op1672, %label1675 ], [ %op1699, %label1697 ]
# %op1682 = icmp slt i32  %op1679, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1683 = zext i1  %op1682 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1684 = icmp ne i32  %op1683, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label289
	addi.d $t2, $zero, 0
	b false_label289
true_label289:
	addi.d $t2, $zero, 1
false_label289:
	lu12i.w $t8, -2
	ori $t8, $t8, 2987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1684, label %label1685, label %label1688
	lu12i.w $t0, -2
	ori $t0, $t0, 2987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1685
	b .long_func_label1688
.long_func_label1685:
# %op1686 = srem i32  %op1681, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1687 = icmp ne i32  %op1686, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label290
	addi.d $t2, $zero, 0
	b false_label290
true_label290:
	addi.d $t2, $zero, 1
false_label290:
	lu12i.w $t8, -2
	ori $t8, $t8, 2979
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1687, label %label1689, label %label1694
	lu12i.w $t0, -2
	ori $t0, $t0, 2979
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1689
	b .long_func_label1694
.long_func_label1688:
# br label %label1716
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1716
.long_func_label1689:
# %op1690 = srem i32  %op1680, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1691 = icmp eq i32  %op1690, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label291
	addi.d $t2, $zero, 0
	b false_label291
true_label291:
	addi.d $t2, $zero, 1
false_label291:
	lu12i.w $t8, -2
	ori $t8, $t8, 2971
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1692 = zext i1  %op1691 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2971
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1693 = icmp ne i32  %op1692, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label292
	addi.d $t2, $zero, 0
	b false_label292
true_label292:
	addi.d $t2, $zero, 1
false_label292:
	lu12i.w $t8, -2
	ori $t8, $t8, 2963
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1693, label %label1702, label %label1707
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2963
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1702
	b .long_func_label1707
.long_func_label1694:
# %op1695 = srem i32  %op1680, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1696 = icmp ne i32  %op1695, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label293
	addi.d $t2, $zero, 0
	b false_label293
true_label293:
	addi.d $t2, $zero, 1
false_label293:
	lu12i.w $t8, -2
	ori $t8, $t8, 2955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1696, label %label1709, label %label1714
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1709
	b .long_func_label1714
.long_func_label1697:
# %op1698 = phi i32  [ %op1708, %label1707 ], [ %op1715, %label1714 ]
# %op1699 = sdiv i32  %op1681, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1700 = sdiv i32  %op1680, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1701 = add i32  %op1679, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1677
.long_func_label1702:
# %op1703 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1679
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1704 = load i32 , i32 * %op1703
	lu12i.w $t0, -2
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1705 = mul i32  1, %op1704
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1706 = add i32  %op1678, %op1705
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1707
	lu12i.w $t0, -2
	ori $t0, $t0, 2916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1707
.long_func_label1707:
# %op1708 = phi i32  [ %op1678, %label1689 ], [ %op1706, %label1702 ]
# br label %label1697
	lu12i.w $t0, -2
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1697
.long_func_label1709:
# %op1710 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1679
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1711 = load i32 , i32 * %op1710
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1712 = mul i32  1, %op1711
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1713 = add i32  %op1678, %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1714
	lu12i.w $t0, -2
	ori $t0, $t0, 2892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1714
.long_func_label1714:
# %op1715 = phi i32  [ %op1678, %label1694 ], [ %op1713, %label1709 ]
# br label %label1697
	lu12i.w $t0, -2
	ori $t0, $t0, 2888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1697
.long_func_label1716:
# %op1717 = phi i32  [ 0, %label1688 ], [ %op1737, %label1736 ]
# %op1718 = phi i32  [ 0, %label1688 ], [ %op1740, %label1736 ]
# %op1719 = phi i32  [ %op1673, %label1688 ], [ %op1739, %label1736 ]
# %op1720 = phi i32  [ %op1672, %label1688 ], [ %op1738, %label1736 ]
# %op1721 = icmp slt i32  %op1718, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2871
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1722 = zext i1  %op1721 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2871
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1723 = icmp ne i32  %op1722, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label295
	addi.d $t2, $zero, 0
	b false_label295
true_label295:
	addi.d $t2, $zero, 1
false_label295:
	lu12i.w $t8, -2
	ori $t8, $t8, 2863
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1723, label %label1724, label %label1727
	lu12i.w $t0, -2
	ori $t0, $t0, 2863
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1724
	b .long_func_label1727
.long_func_label1724:
# %op1725 = srem i32  %op1720, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1726 = icmp ne i32  %op1725, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label296
	addi.d $t2, $zero, 0
	b false_label296
true_label296:
	addi.d $t2, $zero, 1
false_label296:
	lu12i.w $t8, -2
	ori $t8, $t8, 2855
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1726, label %label1741, label %label1736
	lu12i.w $t0, -2
	ori $t0, $t0, 2884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2855
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1741
	b .long_func_label1736
.long_func_label1727:
# %op1728 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2854
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1729 = zext i1  %op1728 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2854
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1730 = icmp ne i32  %op1729, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label298
	addi.d $t2, $zero, 0
	b false_label298
true_label298:
	addi.d $t2, $zero, 1
false_label298:
	lu12i.w $t8, -2
	ori $t8, $t8, 2847
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1730, label %label1744, label %label1745
	lu12i.w $t0, -2
	ori $t0, $t0, 2847
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1744
	b .long_func_label1745
.long_func_label1731:
# %op1732 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1718
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1733 = load i32 , i32 * %op1732
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1734 = mul i32  1, %op1733
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1735 = add i32  %op1717, %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 2884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1736
	lu12i.w $t0, -2
	ori $t0, $t0, 2820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1736
.long_func_label1736:
# %op1737 = phi i32  [ %op1717, %label1724 ], [ %op1717, %label1741 ], [ %op1735, %label1731 ]
# %op1738 = sdiv i32  %op1720, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1739 = sdiv i32  %op1719, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1740 = add i32  %op1718, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1716
	lu12i.w $t0, -2
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1716
.long_func_label1741:
# %op1742 = srem i32  %op1719, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1743 = icmp ne i32  %op1742, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label299
	addi.d $t2, $zero, 0
	b false_label299
true_label299:
	addi.d $t2, $zero, 1
false_label299:
	lu12i.w $t8, -2
	ori $t8, $t8, 2799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1743, label %label1731, label %label1736
	lu12i.w $t0, -2
	ori $t0, $t0, 2884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1731
	b .long_func_label1736
.long_func_label1744:
# br label %label1749
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1749
.long_func_label1745:
# %op1746 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1747 = load i32 , i32 * %op1746
	lu12i.w $t0, -2
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1748 = mul i32  %op1717, %op1747
	lu12i.w $t0, -2
	ori $t0, $t0, 2884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1751
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1751
.long_func_label1749:
# %op1750 = phi i32  [ 0, %label1744 ], [ %op1752, %label1762 ]
# br label %label1671
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1671
.long_func_label1751:
# %op1752 = phi i32  [ 0, %label1745 ], [ %op1769, %label1768 ]
# %op1753 = phi i32  [ 0, %label1745 ], [ %op1772, %label1768 ]
# %op1754 = phi i32  [ 65535, %label1745 ], [ %op1771, %label1768 ]
# %op1755 = phi i32  [ %op1748, %label1745 ], [ %op1770, %label1768 ]
# %op1756 = icmp slt i32  %op1753, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1757 = zext i1  %op1756 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1758 = icmp ne i32  %op1757, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label301
	addi.d $t2, $zero, 0
	b false_label301
true_label301:
	addi.d $t2, $zero, 1
false_label301:
	lu12i.w $t8, -2
	ori $t8, $t8, 2747
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1758, label %label1759, label %label1762
	lu12i.w $t0, -2
	ori $t0, $t0, 2747
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1759
	b .long_func_label1762
.long_func_label1759:
# %op1760 = srem i32  %op1755, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1761 = icmp ne i32  %op1760, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label302
	addi.d $t2, $zero, 0
	b false_label302
true_label302:
	addi.d $t2, $zero, 1
false_label302:
	lu12i.w $t8, -2
	ori $t8, $t8, 2739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1761, label %label1773, label %label1768
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1773
	b .long_func_label1768
.long_func_label1762:
# br label %label1749
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1749
.long_func_label1763:
# %op1764 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1753
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1765 = load i32 , i32 * %op1764
	lu12i.w $t0, -2
	ori $t0, $t0, 2728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1766 = mul i32  1, %op1765
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1767 = add i32  %op1752, %op1766
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1768
	lu12i.w $t0, -2
	ori $t0, $t0, 2716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1768
.long_func_label1768:
# %op1769 = phi i32  [ %op1752, %label1759 ], [ %op1752, %label1773 ], [ %op1767, %label1763 ]
# %op1770 = sdiv i32  %op1755, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1771 = sdiv i32  %op1754, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1772 = add i32  %op1753, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1751
	lu12i.w $t0, -2
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1751
.long_func_label1773:
# %op1774 = srem i32  %op1754, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1775 = icmp ne i32  %op1774, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label303
	addi.d $t2, $zero, 0
	b false_label303
true_label303:
	addi.d $t2, $zero, 1
false_label303:
	lu12i.w $t8, -2
	ori $t8, $t8, 2695
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1775, label %label1763, label %label1768
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2695
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1763
	b .long_func_label1768
.long_func_label1776:
# %op1777 = phi i32  [ %op1633, %label1669 ], [ %op1786, %label1857 ]
# %op1778 = phi i32  [ %op1633, %label1669 ], [ %op1858, %label1857 ]
# %op1779 = icmp ne i32  %op1778, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label304
	addi.d $t2, $zero, 0
	b false_label304
true_label304:
	addi.d $t2, $zero, 1
false_label304:
	lu12i.w $t8, -2
	ori $t8, $t8, 2683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1779, label %label1780, label %label1781
	lu12i.w $t0, -2
	ori $t0, $t0, 2683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1780
	b .long_func_label1781
.long_func_label1780:
# br label %label1785
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1785
.long_func_label1781:
# %op1782 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label305
	addi.d $t2, $zero, 0
	b false_label305
true_label305:
	addi.d $t2, $zero, 1
false_label305:
	lu12i.w $t8, -2
	ori $t8, $t8, 2682
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1783 = zext i1  %op1782 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2682
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1784 = icmp ne i32  %op1783, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label306
	addi.d $t2, $zero, 0
	b false_label306
true_label306:
	addi.d $t2, $zero, 1
false_label306:
	lu12i.w $t8, -2
	ori $t8, $t8, 2675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1784, label %label1884, label %label1888
	lu12i.w $t0, -2
	ori $t0, $t0, 2675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1884
	b .long_func_label1888
.long_func_label1785:
# %op1786 = phi i32  [ 0, %label1780 ], [ %op1806, %label1805 ]
# %op1787 = phi i32  [ 0, %label1780 ], [ %op1809, %label1805 ]
# %op1788 = phi i32  [ %op1778, %label1780 ], [ %op1808, %label1805 ]
# %op1789 = phi i32  [ %op1777, %label1780 ], [ %op1807, %label1805 ]
# %op1790 = icmp slt i32  %op1787, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1791 = zext i1  %op1790 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1792 = icmp ne i32  %op1791, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label308
	addi.d $t2, $zero, 0
	b false_label308
true_label308:
	addi.d $t2, $zero, 1
false_label308:
	lu12i.w $t8, -2
	ori $t8, $t8, 2647
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1792, label %label1793, label %label1796
	lu12i.w $t0, -2
	ori $t0, $t0, 2647
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1793
	b .long_func_label1796
.long_func_label1793:
# %op1794 = srem i32  %op1789, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1795 = icmp ne i32  %op1794, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label309
	addi.d $t2, $zero, 0
	b false_label309
true_label309:
	addi.d $t2, $zero, 1
false_label309:
	lu12i.w $t8, -2
	ori $t8, $t8, 2639
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1795, label %label1797, label %label1802
	lu12i.w $t0, -2
	ori $t0, $t0, 2639
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1797
	b .long_func_label1802
.long_func_label1796:
# br label %label1824
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1824
.long_func_label1797:
# %op1798 = srem i32  %op1788, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1799 = icmp eq i32  %op1798, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label310
	addi.d $t2, $zero, 0
	b false_label310
true_label310:
	addi.d $t2, $zero, 1
false_label310:
	lu12i.w $t8, -2
	ori $t8, $t8, 2631
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1800 = zext i1  %op1799 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2631
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1801 = icmp ne i32  %op1800, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label311
	addi.d $t2, $zero, 0
	b false_label311
true_label311:
	addi.d $t2, $zero, 1
false_label311:
	lu12i.w $t8, -2
	ori $t8, $t8, 2623
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1801, label %label1810, label %label1815
	lu12i.w $t0, -2
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2623
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1810
	b .long_func_label1815
.long_func_label1802:
# %op1803 = srem i32  %op1788, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1804 = icmp ne i32  %op1803, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label312
	addi.d $t2, $zero, 0
	b false_label312
true_label312:
	addi.d $t2, $zero, 1
false_label312:
	lu12i.w $t8, -2
	ori $t8, $t8, 2615
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1804, label %label1817, label %label1822
	lu12i.w $t0, -2
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2615
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1817
	b .long_func_label1822
.long_func_label1805:
# %op1806 = phi i32  [ %op1816, %label1815 ], [ %op1823, %label1822 ]
# %op1807 = sdiv i32  %op1789, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1808 = sdiv i32  %op1788, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1809 = add i32  %op1787, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1785
	lu12i.w $t0, -2
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1785
.long_func_label1810:
# %op1811 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1787
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1812 = load i32 , i32 * %op1811
	lu12i.w $t0, -2
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1813 = mul i32  1, %op1812
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1814 = add i32  %op1786, %op1813
	lu12i.w $t0, -2
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1815
	lu12i.w $t0, -2
	ori $t0, $t0, 2572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1815
.long_func_label1815:
# %op1816 = phi i32  [ %op1786, %label1797 ], [ %op1814, %label1810 ]
# br label %label1805
	lu12i.w $t0, -2
	ori $t0, $t0, 2568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1805
.long_func_label1817:
# %op1818 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1787
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1819 = load i32 , i32 * %op1818
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1820 = mul i32  1, %op1819
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1821 = add i32  %op1786, %op1820
	lu12i.w $t0, -2
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1822
	lu12i.w $t0, -2
	ori $t0, $t0, 2548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1822
.long_func_label1822:
# %op1823 = phi i32  [ %op1786, %label1802 ], [ %op1821, %label1817 ]
# br label %label1805
	lu12i.w $t0, -2
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1805
.long_func_label1824:
# %op1825 = phi i32  [ 0, %label1796 ], [ %op1845, %label1844 ]
# %op1826 = phi i32  [ 0, %label1796 ], [ %op1848, %label1844 ]
# %op1827 = phi i32  [ %op1778, %label1796 ], [ %op1847, %label1844 ]
# %op1828 = phi i32  [ %op1777, %label1796 ], [ %op1846, %label1844 ]
# %op1829 = icmp slt i32  %op1826, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2527
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1830 = zext i1  %op1829 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2527
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1831 = icmp ne i32  %op1830, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label314
	addi.d $t2, $zero, 0
	b false_label314
true_label314:
	addi.d $t2, $zero, 1
false_label314:
	lu12i.w $t8, -2
	ori $t8, $t8, 2519
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1831, label %label1832, label %label1835
	lu12i.w $t0, -2
	ori $t0, $t0, 2519
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1832
	b .long_func_label1835
.long_func_label1832:
# %op1833 = srem i32  %op1828, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1834 = icmp ne i32  %op1833, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label315
	addi.d $t2, $zero, 0
	b false_label315
true_label315:
	addi.d $t2, $zero, 1
false_label315:
	lu12i.w $t8, -2
	ori $t8, $t8, 2511
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1834, label %label1849, label %label1844
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2511
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1849
	b .long_func_label1844
.long_func_label1835:
# %op1836 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2510
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1837 = zext i1  %op1836 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2510
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1838 = icmp ne i32  %op1837, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label317
	addi.d $t2, $zero, 0
	b false_label317
true_label317:
	addi.d $t2, $zero, 1
false_label317:
	lu12i.w $t8, -2
	ori $t8, $t8, 2503
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1838, label %label1852, label %label1853
	lu12i.w $t0, -2
	ori $t0, $t0, 2503
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1852
	b .long_func_label1853
.long_func_label1839:
# %op1840 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1826
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1841 = load i32 , i32 * %op1840
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1842 = mul i32  1, %op1841
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1843 = add i32  %op1825, %op1842
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1844
	lu12i.w $t0, -2
	ori $t0, $t0, 2476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1844
.long_func_label1844:
# %op1845 = phi i32  [ %op1825, %label1832 ], [ %op1825, %label1849 ], [ %op1843, %label1839 ]
# %op1846 = sdiv i32  %op1828, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1847 = sdiv i32  %op1827, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1848 = add i32  %op1826, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1824
	lu12i.w $t0, -2
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1824
.long_func_label1849:
# %op1850 = srem i32  %op1827, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1851 = icmp ne i32  %op1850, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label318
	addi.d $t2, $zero, 0
	b false_label318
true_label318:
	addi.d $t2, $zero, 1
false_label318:
	lu12i.w $t8, -2
	ori $t8, $t8, 2455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1851, label %label1839, label %label1844
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1839
	b .long_func_label1844
.long_func_label1852:
# br label %label1857
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1857
.long_func_label1853:
# %op1854 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1855 = load i32 , i32 * %op1854
	lu12i.w $t0, -2
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1856 = mul i32  %op1825, %op1855
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1859
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1859
.long_func_label1857:
# %op1858 = phi i32  [ 0, %label1852 ], [ %op1860, %label1870 ]
# br label %label1776
	lu12i.w $t0, -2
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1776
.long_func_label1859:
# %op1860 = phi i32  [ 0, %label1853 ], [ %op1877, %label1876 ]
# %op1861 = phi i32  [ 0, %label1853 ], [ %op1880, %label1876 ]
# %op1862 = phi i32  [ 65535, %label1853 ], [ %op1879, %label1876 ]
# %op1863 = phi i32  [ %op1856, %label1853 ], [ %op1878, %label1876 ]
# %op1864 = icmp slt i32  %op1861, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1865 = zext i1  %op1864 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1866 = icmp ne i32  %op1865, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label320
	addi.d $t2, $zero, 0
	b false_label320
true_label320:
	addi.d $t2, $zero, 1
false_label320:
	lu12i.w $t8, -2
	ori $t8, $t8, 2403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1866, label %label1867, label %label1870
	lu12i.w $t0, -2
	ori $t0, $t0, 2403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1867
	b .long_func_label1870
.long_func_label1867:
# %op1868 = srem i32  %op1863, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1869 = icmp ne i32  %op1868, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label321
	addi.d $t2, $zero, 0
	b false_label321
true_label321:
	addi.d $t2, $zero, 1
false_label321:
	lu12i.w $t8, -2
	ori $t8, $t8, 2395
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1869, label %label1881, label %label1876
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2395
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1881
	b .long_func_label1876
.long_func_label1870:
# br label %label1857
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1857
.long_func_label1871:
# %op1872 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1861
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1873 = load i32 , i32 * %op1872
	lu12i.w $t0, -2
	ori $t0, $t0, 2384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1874 = mul i32  1, %op1873
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1875 = add i32  %op1860, %op1874
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1876
	lu12i.w $t0, -2
	ori $t0, $t0, 2372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1876
.long_func_label1876:
# %op1877 = phi i32  [ %op1860, %label1867 ], [ %op1860, %label1881 ], [ %op1875, %label1871 ]
# %op1878 = sdiv i32  %op1863, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1879 = sdiv i32  %op1862, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1880 = add i32  %op1861, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1859
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1859
.long_func_label1881:
# %op1882 = srem i32  %op1862, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1883 = icmp ne i32  %op1882, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label322
	addi.d $t2, $zero, 0
	b false_label322
true_label322:
	addi.d $t2, $zero, 1
false_label322:
	lu12i.w $t8, -2
	ori $t8, $t8, 2351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1883, label %label1871, label %label1876
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1871
	b .long_func_label1876
.long_func_label1884:
# %op1885 = icmp slt i32  %op1634, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2350
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1886 = zext i1  %op1885 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2350
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1887 = icmp ne i32  %op1886, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label324
	addi.d $t2, $zero, 0
	b false_label324
true_label324:
	addi.d $t2, $zero, 1
false_label324:
	lu12i.w $t8, -2
	ori $t8, $t8, 2343
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1887, label %label1894, label %label1895
	lu12i.w $t0, -2
	ori $t0, $t0, 2343
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1894
	b .long_func_label1895
.long_func_label1888:
# %op1889 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2342
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1890 = zext i1  %op1889 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2342
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1891 = icmp ne i32  %op1890, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label326
	addi.d $t2, $zero, 0
	b false_label326
true_label326:
	addi.d $t2, $zero, 1
false_label326:
	lu12i.w $t8, -2
	ori $t8, $t8, 2335
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1891, label %label1898, label %label1902
	lu12i.w $t0, -2
	ori $t0, $t0, 2335
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1898
	b .long_func_label1902
.long_func_label1892:
# %op1893 = phi i32  [ %op1897, %label1896 ], [ %op1904, %label1903 ]
# br label %label1632
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1632
.long_func_label1894:
# br label %label1896
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1896
.long_func_label1895:
# br label %label1896
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1896
.long_func_label1896:
# %op1897 = phi i32  [ 65535, %label1894 ], [ 0, %label1895 ]
# br label %label1892
	lu12i.w $t0, -2
	ori $t0, $t0, 2324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1892
.long_func_label1898:
# %op1899 = icmp sgt i32  %op1634, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2323
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1900 = zext i1  %op1899 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2323
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1901 = icmp ne i32  %op1900, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label328
	addi.d $t2, $zero, 0
	b false_label328
true_label328:
	addi.d $t2, $zero, 1
false_label328:
	lu12i.w $t8, -2
	ori $t8, $t8, 2315
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1901, label %label1905, label %label1915
	lu12i.w $t0, -2
	ori $t0, $t0, 2315
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1905
	b .long_func_label1915
.long_func_label1902:
# br label %label1903
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1903
.long_func_label1903:
# %op1904 = phi i32  [ %op1920, %label1919 ], [ %op1634, %label1902 ]
# br label %label1892
	lu12i.w $t0, -2
	ori $t0, $t0, 2308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1892
.long_func_label1905:
# %op1906 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1907 = load i32 , i32 * %op1906
	lu12i.w $t0, -2
	ori $t0, $t0, 2296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1908 = sdiv i32  %op1634, %op1907
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1909 = add i32  %op1908, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1910 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1911 = add i32  %op1910, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1912 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1911
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1913 = load i32 , i32 * %op1912
	lu12i.w $t0, -2
	ori $t0, $t0, 2264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1914 = sub i32  %op1909, %op1913
	lu12i.w $t0, -2
	ori $t0, $t0, 2284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1919
	lu12i.w $t0, -2
	ori $t0, $t0, 2256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1919
.long_func_label1915:
# %op1916 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1917 = load i32 , i32 * %op1916
	lu12i.w $t0, -2
	ori $t0, $t0, 2248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1918 = sdiv i32  %op1634, %op1917
	lu12i.w $t0, -2
	ori $t0, $t0, 3124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1919
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1919
.long_func_label1919:
# %op1920 = phi i32  [ %op1914, %label1905 ], [ %op1918, %label1915 ]
# br label %label1903
	lu12i.w $t0, -2
	ori $t0, $t0, 2236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1903
.long_func_label1921:
# %op1922 = icmp slt i32  %op1309, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1923 = zext i1  %op1922 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1924 = icmp ne i32  %op1923, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label330
	addi.d $t2, $zero, 0
	b false_label330
true_label330:
	addi.d $t2, $zero, 1
false_label330:
	lu12i.w $t8, -2
	ori $t8, $t8, 2227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1924, label %label1931, label %label1932
	lu12i.w $t0, -2
	ori $t0, $t0, 2227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1931
	b .long_func_label1932
.long_func_label1925:
# %op1926 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2226
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1927 = zext i1  %op1926 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2226
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1928 = icmp ne i32  %op1927, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label332
	addi.d $t2, $zero, 0
	b false_label332
true_label332:
	addi.d $t2, $zero, 1
false_label332:
	lu12i.w $t8, -2
	ori $t8, $t8, 2219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1928, label %label1935, label %label1939
	lu12i.w $t0, -2
	ori $t0, $t0, 2219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1935
	b .long_func_label1939
.long_func_label1929:
# %op1930 = phi i32  [ %op1934, %label1933 ], [ %op1941, %label1940 ]
# br label %label1307
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1307
.long_func_label1931:
# br label %label1933
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1933
.long_func_label1932:
# br label %label1933
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1933
.long_func_label1933:
# %op1934 = phi i32  [ 65535, %label1931 ], [ 0, %label1932 ]
# br label %label1929
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1929
.long_func_label1935:
# %op1936 = icmp sgt i32  %op1309, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2207
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1937 = zext i1  %op1936 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2207
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1938 = icmp ne i32  %op1937, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label334
	addi.d $t2, $zero, 0
	b false_label334
true_label334:
	addi.d $t2, $zero, 1
false_label334:
	lu12i.w $t8, -2
	ori $t8, $t8, 2199
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1938, label %label1942, label %label1952
	lu12i.w $t0, -2
	ori $t0, $t0, 2199
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1942
	b .long_func_label1952
.long_func_label1939:
# br label %label1940
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1940
.long_func_label1940:
# %op1941 = phi i32  [ %op1957, %label1956 ], [ %op1309, %label1939 ]
# br label %label1929
	lu12i.w $t0, -2
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1929
.long_func_label1942:
# %op1943 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1944 = load i32 , i32 * %op1943
	lu12i.w $t0, -2
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1945 = sdiv i32  %op1309, %op1944
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1946 = add i32  %op1945, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1947 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1948 = add i32  %op1947, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1949 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1948
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1950 = load i32 , i32 * %op1949
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1951 = sub i32  %op1946, %op1950
	lu12i.w $t0, -2
	ori $t0, $t0, 2172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1956
	lu12i.w $t0, -2
	ori $t0, $t0, 2144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1956
.long_func_label1952:
# %op1953 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1954 = load i32 , i32 * %op1953
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1955 = sdiv i32  %op1309, %op1954
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1956
	lu12i.w $t0, -2
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1956
.long_func_label1956:
# %op1957 = phi i32  [ %op1951, %label1942 ], [ %op1955, %label1952 ]
# br label %label1940
	lu12i.w $t0, -2
	ori $t0, $t0, 2124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1940
.long_func_label1958:
# %op1959 = phi i32  [ 0, %label1306 ], [ %op2622, %label2621 ]
# %op1960 = icmp slt i32  %op1959, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2119
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1961 = zext i1  %op1960 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2119
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1962 = icmp ne i32  %op1961, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label336
	addi.d $t2, $zero, 0
	b false_label336
true_label336:
	addi.d $t2, $zero, 1
false_label336:
	lu12i.w $t8, -2
	ori $t8, $t8, 2111
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1962, label %label1963, label %label1964
	lu12i.w $t0, -2
	ori $t0, $t0, 2111
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1963
	b .long_func_label1964
.long_func_label1963:
# br label %label1965
	addi.w $t0, $zero, 2
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1965
.long_func_label1964:
# ret i32  0
	addi.w $a0, $zero, 0
	b long_func_ret
.long_func_label1965:
# %op1966 = phi i32  [ 2, %label1963 ], [ %op2297, %label2591 ]
# %op1967 = phi i32  [ %op1959, %label1963 ], [ %op2592, %label2591 ]
# %op1968 = phi i32  [ 1, %label1963 ], [ %op2007, %label2591 ]
# %op1969 = icmp sgt i32  %op1967, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2095
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1970 = zext i1  %op1969 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2095
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1971 = icmp ne i32  %op1970, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label338
	addi.d $t2, $zero, 0
	b false_label338
true_label338:
	addi.d $t2, $zero, 1
false_label338:
	lu12i.w $t8, -2
	ori $t8, $t8, 2087
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1971, label %label1972, label %label1973
	lu12i.w $t0, -2
	ori $t0, $t0, 2087
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1972
	b .long_func_label1973
.long_func_label1972:
# br label %label1979
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1979
.long_func_label1973:
# %op1974 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1959
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1975 = load i32 , i32 * %op1974
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1976 = icmp ne i32  %op1975, %op1968
	lu12i.w $t0, -2
	ori $t0, $t0, 2068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label339
	addi.d $t2, $zero, 0
	b false_label339
true_label339:
	addi.d $t2, $zero, 1
false_label339:
	lu12i.w $t8, -2
	ori $t8, $t8, 2067
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1977 = zext i1  %op1976 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2067
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1978 = icmp ne i32  %op1977, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label340
	addi.d $t2, $zero, 0
	b false_label340
true_label340:
	addi.d $t2, $zero, 1
false_label340:
	lu12i.w $t8, -2
	ori $t8, $t8, 2059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1978, label %label2620, label %label2621
	lu12i.w $t0, -2
	ori $t0, $t0, 2059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2620
	b .long_func_label2621
.long_func_label1979:
# %op1980 = phi i32  [ 0, %label1972 ], [ %op1998, %label1997 ]
# %op1981 = phi i32  [ 0, %label1972 ], [ %op2001, %label1997 ]
# %op1982 = phi i32  [ 1, %label1972 ], [ %op2000, %label1997 ]
# %op1983 = phi i32  [ %op1967, %label1972 ], [ %op1999, %label1997 ]
# %op1984 = icmp slt i32  %op1981, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2039
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1985 = zext i1  %op1984 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1986 = icmp ne i32  %op1985, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label342
	addi.d $t2, $zero, 0
	b false_label342
true_label342:
	addi.d $t2, $zero, 1
false_label342:
	lu12i.w $t8, -2
	ori $t8, $t8, 2031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1986, label %label1987, label %label1990
	lu12i.w $t0, -2
	ori $t0, $t0, 2031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1987
	b .long_func_label1990
.long_func_label1987:
# %op1988 = srem i32  %op1983, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1989 = icmp ne i32  %op1988, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label343
	addi.d $t2, $zero, 0
	b false_label343
true_label343:
	addi.d $t2, $zero, 1
false_label343:
	lu12i.w $t8, -2
	ori $t8, $t8, 2023
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1989, label %label2002, label %label1997
	lu12i.w $t0, -2
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2023
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2002
	b .long_func_label1997
.long_func_label1990:
# %op1991 = icmp ne i32  %op1980, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label344
	addi.d $t2, $zero, 0
	b false_label344
true_label344:
	addi.d $t2, $zero, 1
false_label344:
	lu12i.w $t8, -2
	ori $t8, $t8, 2022
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1991, label %label2005, label %label2006
	lu12i.w $t0, -2
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2022
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2005
	b .long_func_label2006
.long_func_label1992:
# %op1993 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1981
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1994 = load i32 , i32 * %op1993
	lu12i.w $t0, -2
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1995 = mul i32  1, %op1994
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1996 = add i32  %op1980, %op1995
	lu12i.w $t0, -2
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1997
	lu12i.w $t0, -2
	ori $t0, $t0, 1996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1997
.long_func_label1997:
# %op1998 = phi i32  [ %op1980, %label1987 ], [ %op1980, %label2002 ], [ %op1996, %label1992 ]
# %op1999 = sdiv i32  %op1983, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2000 = sdiv i32  %op1982, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2001 = add i32  %op1981, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1979
	lu12i.w $t0, -2
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1979
.long_func_label2002:
# %op2003 = srem i32  %op1982, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2004 = icmp ne i32  %op2003, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label345
	addi.d $t2, $zero, 0
	b false_label345
true_label345:
	addi.d $t2, $zero, 1
false_label345:
	lu12i.w $t8, -2
	ori $t8, $t8, 1975
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2004, label %label1992, label %label1997
	lu12i.w $t0, -2
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1975
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1992
	b .long_func_label1997
.long_func_label2005:
# br label %label2008
	lu12i.w $t0, -2
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2008
.long_func_label2006:
# %op2007 = phi i32  [ %op1968, %label1990 ], [ %op2011, %label2014 ]
# br label %label2294
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2294
.long_func_label2008:
# %op2009 = phi i32  [ %op1968, %label2005 ], [ %op2150, %label2265 ]
# %op2010 = phi i32  [ %op1966, %label2005 ], [ %op2266, %label2265 ]
# %op2011 = phi i32  [ 0, %label2005 ], [ %op2043, %label2265 ]
# %op2012 = icmp ne i32  %op2010, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label346
	addi.d $t2, $zero, 0
	b false_label346
true_label346:
	addi.d $t2, $zero, 1
false_label346:
	lu12i.w $t8, -2
	ori $t8, $t8, 1955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2012, label %label2013, label %label2014
	lu12i.w $t0, -2
	ori $t0, $t0, 1955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2013
	b .long_func_label2014
.long_func_label2013:
# br label %label2015
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2015
.long_func_label2014:
# br label %label2006
	lu12i.w $t0, -2
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2006
.long_func_label2015:
# %op2016 = phi i32  [ 0, %label2013 ], [ %op2034, %label2033 ]
# %op2017 = phi i32  [ 0, %label2013 ], [ %op2037, %label2033 ]
# %op2018 = phi i32  [ 1, %label2013 ], [ %op2036, %label2033 ]
# %op2019 = phi i32  [ %op2010, %label2013 ], [ %op2035, %label2033 ]
# %op2020 = icmp slt i32  %op2017, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1935
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2021 = zext i1  %op2020 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1935
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2022 = icmp ne i32  %op2021, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label348
	addi.d $t2, $zero, 0
	b false_label348
true_label348:
	addi.d $t2, $zero, 1
false_label348:
	lu12i.w $t8, -2
	ori $t8, $t8, 1927
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2022, label %label2023, label %label2026
	lu12i.w $t0, -2
	ori $t0, $t0, 1927
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2023
	b .long_func_label2026
.long_func_label2023:
# %op2024 = srem i32  %op2019, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2025 = icmp ne i32  %op2024, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label349
	addi.d $t2, $zero, 0
	b false_label349
true_label349:
	addi.d $t2, $zero, 1
false_label349:
	lu12i.w $t8, -2
	ori $t8, $t8, 1919
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2025, label %label2038, label %label2033
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1919
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2038
	b .long_func_label2033
.long_func_label2026:
# %op2027 = icmp ne i32  %op2016, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label350
	addi.d $t2, $zero, 0
	b false_label350
true_label350:
	addi.d $t2, $zero, 1
false_label350:
	lu12i.w $t8, -2
	ori $t8, $t8, 1918
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2027, label %label2041, label %label2042
	lu12i.w $t0, -2
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1918
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2041
	b .long_func_label2042
.long_func_label2028:
# %op2029 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2017
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2030 = load i32 , i32 * %op2029
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2031 = mul i32  1, %op2030
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2032 = add i32  %op2016, %op2031
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2033
	lu12i.w $t0, -2
	ori $t0, $t0, 1892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2033
.long_func_label2033:
# %op2034 = phi i32  [ %op2016, %label2023 ], [ %op2016, %label2038 ], [ %op2032, %label2028 ]
# %op2035 = sdiv i32  %op2019, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2036 = sdiv i32  %op2018, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2037 = add i32  %op2017, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2015
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2015
.long_func_label2038:
# %op2039 = srem i32  %op2018, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2040 = icmp ne i32  %op2039, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label351
	addi.d $t2, $zero, 0
	b false_label351
true_label351:
	addi.d $t2, $zero, 1
false_label351:
	lu12i.w $t8, -2
	ori $t8, $t8, 1871
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2040, label %label2028, label %label2033
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1871
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2028
	b .long_func_label2033
.long_func_label2041:
# br label %label2044
	lu12i.w $t0, -2
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2044
.long_func_label2042:
# %op2043 = phi i32  [ %op2011, %label2026 ], [ %op2045, %label2049 ]
# br label %label2149
	lu12i.w $t0, -2
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2149
.long_func_label2044:
# %op2045 = phi i32  [ %op2011, %label2041 ], [ %op2051, %label2122 ]
# %op2046 = phi i32  [ %op2009, %label2041 ], [ %op2123, %label2122 ]
# %op2047 = icmp ne i32  %op2046, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label352
	addi.d $t2, $zero, 0
	b false_label352
true_label352:
	addi.d $t2, $zero, 1
false_label352:
	lu12i.w $t8, -2
	ori $t8, $t8, 1855
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2047, label %label2048, label %label2049
	lu12i.w $t0, -2
	ori $t0, $t0, 1855
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2048
	b .long_func_label2049
.long_func_label2048:
# br label %label2050
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2050
.long_func_label2049:
# br label %label2042
	lu12i.w $t0, -2
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2042
.long_func_label2050:
# %op2051 = phi i32  [ 0, %label2048 ], [ %op2071, %label2070 ]
# %op2052 = phi i32  [ 0, %label2048 ], [ %op2074, %label2070 ]
# %op2053 = phi i32  [ %op2046, %label2048 ], [ %op2073, %label2070 ]
# %op2054 = phi i32  [ %op2045, %label2048 ], [ %op2072, %label2070 ]
# %op2055 = icmp slt i32  %op2052, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1835
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2056 = zext i1  %op2055 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1835
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2057 = icmp ne i32  %op2056, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label354
	addi.d $t2, $zero, 0
	b false_label354
true_label354:
	addi.d $t2, $zero, 1
false_label354:
	lu12i.w $t8, -2
	ori $t8, $t8, 1827
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2057, label %label2058, label %label2061
	lu12i.w $t0, -2
	ori $t0, $t0, 1827
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2058
	b .long_func_label2061
.long_func_label2058:
# %op2059 = srem i32  %op2054, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2060 = icmp ne i32  %op2059, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label355
	addi.d $t2, $zero, 0
	b false_label355
true_label355:
	addi.d $t2, $zero, 1
false_label355:
	lu12i.w $t8, -2
	ori $t8, $t8, 1819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2060, label %label2062, label %label2067
	lu12i.w $t0, -2
	ori $t0, $t0, 1819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2062
	b .long_func_label2067
.long_func_label2061:
# br label %label2089
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2089
.long_func_label2062:
# %op2063 = srem i32  %op2053, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2064 = icmp eq i32  %op2063, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label356
	addi.d $t2, $zero, 0
	b false_label356
true_label356:
	addi.d $t2, $zero, 1
false_label356:
	lu12i.w $t8, -2
	ori $t8, $t8, 1811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2065 = zext i1  %op2064 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2066 = icmp ne i32  %op2065, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label357
	addi.d $t2, $zero, 0
	b false_label357
true_label357:
	addi.d $t2, $zero, 1
false_label357:
	lu12i.w $t8, -2
	ori $t8, $t8, 1803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2066, label %label2075, label %label2080
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2075
	b .long_func_label2080
.long_func_label2067:
# %op2068 = srem i32  %op2053, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2069 = icmp ne i32  %op2068, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label358
	addi.d $t2, $zero, 0
	b false_label358
true_label358:
	addi.d $t2, $zero, 1
false_label358:
	lu12i.w $t8, -2
	ori $t8, $t8, 1795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2069, label %label2082, label %label2087
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2082
	b .long_func_label2087
.long_func_label2070:
# %op2071 = phi i32  [ %op2081, %label2080 ], [ %op2088, %label2087 ]
# %op2072 = sdiv i32  %op2054, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2073 = sdiv i32  %op2053, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2074 = add i32  %op2052, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2050
	lu12i.w $t0, -2
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2050
.long_func_label2075:
# %op2076 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2052
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2077 = load i32 , i32 * %op2076
	lu12i.w $t0, -2
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2078 = mul i32  1, %op2077
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2079 = add i32  %op2051, %op2078
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2080
	lu12i.w $t0, -2
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2080
.long_func_label2080:
# %op2081 = phi i32  [ %op2051, %label2062 ], [ %op2079, %label2075 ]
# br label %label2070
	lu12i.w $t0, -2
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2070
.long_func_label2082:
# %op2083 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2052
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2084 = load i32 , i32 * %op2083
	lu12i.w $t0, -2
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2085 = mul i32  1, %op2084
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2086 = add i32  %op2051, %op2085
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2087
	lu12i.w $t0, -2
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2087
.long_func_label2087:
# %op2088 = phi i32  [ %op2051, %label2067 ], [ %op2086, %label2082 ]
# br label %label2070
	lu12i.w $t0, -2
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2070
.long_func_label2089:
# %op2090 = phi i32  [ 0, %label2061 ], [ %op2110, %label2109 ]
# %op2091 = phi i32  [ 0, %label2061 ], [ %op2113, %label2109 ]
# %op2092 = phi i32  [ %op2046, %label2061 ], [ %op2112, %label2109 ]
# %op2093 = phi i32  [ %op2045, %label2061 ], [ %op2111, %label2109 ]
# %op2094 = icmp slt i32  %op2091, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1711
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2095 = zext i1  %op2094 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1711
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2096 = icmp ne i32  %op2095, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label360
	addi.d $t2, $zero, 0
	b false_label360
true_label360:
	addi.d $t2, $zero, 1
false_label360:
	lu12i.w $t8, -2
	ori $t8, $t8, 1703
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2096, label %label2097, label %label2100
	lu12i.w $t0, -2
	ori $t0, $t0, 1703
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2097
	b .long_func_label2100
.long_func_label2097:
# %op2098 = srem i32  %op2093, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2099 = icmp ne i32  %op2098, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label361
	addi.d $t2, $zero, 0
	b false_label361
true_label361:
	addi.d $t2, $zero, 1
false_label361:
	lu12i.w $t8, -2
	ori $t8, $t8, 1695
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2099, label %label2114, label %label2109
	lu12i.w $t0, -2
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1695
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2114
	b .long_func_label2109
.long_func_label2100:
# %op2101 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1694
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2102 = zext i1  %op2101 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1694
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2103 = icmp ne i32  %op2102, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label363
	addi.d $t2, $zero, 0
	b false_label363
true_label363:
	addi.d $t2, $zero, 1
false_label363:
	lu12i.w $t8, -2
	ori $t8, $t8, 1687
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2103, label %label2117, label %label2118
	lu12i.w $t0, -2
	ori $t0, $t0, 1687
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2117
	b .long_func_label2118
.long_func_label2104:
# %op2105 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2091
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2106 = load i32 , i32 * %op2105
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2107 = mul i32  1, %op2106
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2108 = add i32  %op2090, %op2107
	lu12i.w $t0, -2
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2109
	lu12i.w $t0, -2
	ori $t0, $t0, 1660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2109
.long_func_label2109:
# %op2110 = phi i32  [ %op2090, %label2097 ], [ %op2090, %label2114 ], [ %op2108, %label2104 ]
# %op2111 = sdiv i32  %op2093, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2112 = sdiv i32  %op2092, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2113 = add i32  %op2091, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2089
	lu12i.w $t0, -2
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2089
.long_func_label2114:
# %op2115 = srem i32  %op2092, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2116 = icmp ne i32  %op2115, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label364
	addi.d $t2, $zero, 0
	b false_label364
true_label364:
	addi.d $t2, $zero, 1
false_label364:
	lu12i.w $t8, -2
	ori $t8, $t8, 1639
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2116, label %label2104, label %label2109
	lu12i.w $t0, -2
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1639
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2104
	b .long_func_label2109
.long_func_label2117:
# br label %label2122
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2122
.long_func_label2118:
# %op2119 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2120 = load i32 , i32 * %op2119
	lu12i.w $t0, -2
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2121 = mul i32  %op2090, %op2120
	lu12i.w $t0, -2
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2124
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2124
.long_func_label2122:
# %op2123 = phi i32  [ 0, %label2117 ], [ %op2125, %label2135 ]
# br label %label2044
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2044
.long_func_label2124:
# %op2125 = phi i32  [ 0, %label2118 ], [ %op2142, %label2141 ]
# %op2126 = phi i32  [ 0, %label2118 ], [ %op2145, %label2141 ]
# %op2127 = phi i32  [ 65535, %label2118 ], [ %op2144, %label2141 ]
# %op2128 = phi i32  [ %op2121, %label2118 ], [ %op2143, %label2141 ]
# %op2129 = icmp slt i32  %op2126, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1595
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2130 = zext i1  %op2129 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1595
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2131 = icmp ne i32  %op2130, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label366
	addi.d $t2, $zero, 0
	b false_label366
true_label366:
	addi.d $t2, $zero, 1
false_label366:
	lu12i.w $t8, -2
	ori $t8, $t8, 1587
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2131, label %label2132, label %label2135
	lu12i.w $t0, -2
	ori $t0, $t0, 1587
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2132
	b .long_func_label2135
.long_func_label2132:
# %op2133 = srem i32  %op2128, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2134 = icmp ne i32  %op2133, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label367
	addi.d $t2, $zero, 0
	b false_label367
true_label367:
	addi.d $t2, $zero, 1
false_label367:
	lu12i.w $t8, -2
	ori $t8, $t8, 1579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2134, label %label2146, label %label2141
	lu12i.w $t0, -2
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2146
	b .long_func_label2141
.long_func_label2135:
# br label %label2122
	lu12i.w $t0, -2
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2122
.long_func_label2136:
# %op2137 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2126
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2138 = load i32 , i32 * %op2137
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2139 = mul i32  1, %op2138
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2140 = add i32  %op2125, %op2139
	lu12i.w $t0, -2
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2141
	lu12i.w $t0, -2
	ori $t0, $t0, 1556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2141
.long_func_label2141:
# %op2142 = phi i32  [ %op2125, %label2132 ], [ %op2125, %label2146 ], [ %op2140, %label2136 ]
# %op2143 = sdiv i32  %op2128, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2144 = sdiv i32  %op2127, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2145 = add i32  %op2126, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2124
	lu12i.w $t0, -2
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2124
.long_func_label2146:
# %op2147 = srem i32  %op2127, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2148 = icmp ne i32  %op2147, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label368
	addi.d $t2, $zero, 0
	b false_label368
true_label368:
	addi.d $t2, $zero, 1
false_label368:
	lu12i.w $t8, -2
	ori $t8, $t8, 1535
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2148, label %label2136, label %label2141
	lu12i.w $t0, -2
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1535
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2136
	b .long_func_label2141
.long_func_label2149:
# %op2150 = phi i32  [ %op2009, %label2042 ], [ %op2159, %label2230 ]
# %op2151 = phi i32  [ %op2009, %label2042 ], [ %op2231, %label2230 ]
# %op2152 = icmp ne i32  %op2151, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label369
	addi.d $t2, $zero, 0
	b false_label369
true_label369:
	addi.d $t2, $zero, 1
false_label369:
	lu12i.w $t8, -2
	ori $t8, $t8, 1523
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2152, label %label2153, label %label2154
	lu12i.w $t0, -2
	ori $t0, $t0, 1523
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2153
	b .long_func_label2154
.long_func_label2153:
# br label %label2158
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2158
.long_func_label2154:
# %op2155 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label370
	addi.d $t2, $zero, 0
	b false_label370
true_label370:
	addi.d $t2, $zero, 1
false_label370:
	lu12i.w $t8, -2
	ori $t8, $t8, 1522
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2156 = zext i1  %op2155 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1522
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2157 = icmp ne i32  %op2156, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label371
	addi.d $t2, $zero, 0
	b false_label371
true_label371:
	addi.d $t2, $zero, 1
false_label371:
	lu12i.w $t8, -2
	ori $t8, $t8, 1515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2157, label %label2257, label %label2261
	lu12i.w $t0, -2
	ori $t0, $t0, 1515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2257
	b .long_func_label2261
.long_func_label2158:
# %op2159 = phi i32  [ 0, %label2153 ], [ %op2179, %label2178 ]
# %op2160 = phi i32  [ 0, %label2153 ], [ %op2182, %label2178 ]
# %op2161 = phi i32  [ %op2151, %label2153 ], [ %op2181, %label2178 ]
# %op2162 = phi i32  [ %op2150, %label2153 ], [ %op2180, %label2178 ]
# %op2163 = icmp slt i32  %op2160, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1495
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2164 = zext i1  %op2163 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1495
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2165 = icmp ne i32  %op2164, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label373
	addi.d $t2, $zero, 0
	b false_label373
true_label373:
	addi.d $t2, $zero, 1
false_label373:
	lu12i.w $t8, -2
	ori $t8, $t8, 1487
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2165, label %label2166, label %label2169
	lu12i.w $t0, -2
	ori $t0, $t0, 1487
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2166
	b .long_func_label2169
.long_func_label2166:
# %op2167 = srem i32  %op2162, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2168 = icmp ne i32  %op2167, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label374
	addi.d $t2, $zero, 0
	b false_label374
true_label374:
	addi.d $t2, $zero, 1
false_label374:
	lu12i.w $t8, -2
	ori $t8, $t8, 1479
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2168, label %label2170, label %label2175
	lu12i.w $t0, -2
	ori $t0, $t0, 1479
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2170
	b .long_func_label2175
.long_func_label2169:
# br label %label2197
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2197
.long_func_label2170:
# %op2171 = srem i32  %op2161, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2172 = icmp eq i32  %op2171, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label375
	addi.d $t2, $zero, 0
	b false_label375
true_label375:
	addi.d $t2, $zero, 1
false_label375:
	lu12i.w $t8, -2
	ori $t8, $t8, 1471
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2173 = zext i1  %op2172 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1471
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2174 = icmp ne i32  %op2173, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label376
	addi.d $t2, $zero, 0
	b false_label376
true_label376:
	addi.d $t2, $zero, 1
false_label376:
	lu12i.w $t8, -2
	ori $t8, $t8, 1463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2174, label %label2183, label %label2188
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2183
	b .long_func_label2188
.long_func_label2175:
# %op2176 = srem i32  %op2161, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2177 = icmp ne i32  %op2176, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label377
	addi.d $t2, $zero, 0
	b false_label377
true_label377:
	addi.d $t2, $zero, 1
false_label377:
	lu12i.w $t8, -2
	ori $t8, $t8, 1455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2177, label %label2190, label %label2195
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2190
	b .long_func_label2195
.long_func_label2178:
# %op2179 = phi i32  [ %op2189, %label2188 ], [ %op2196, %label2195 ]
# %op2180 = sdiv i32  %op2162, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2181 = sdiv i32  %op2161, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2182 = add i32  %op2160, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2158
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2158
.long_func_label2183:
# %op2184 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2160
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2185 = load i32 , i32 * %op2184
	lu12i.w $t0, -2
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2186 = mul i32  1, %op2185
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2187 = add i32  %op2159, %op2186
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2188
	lu12i.w $t0, -2
	ori $t0, $t0, 1412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2188
.long_func_label2188:
# %op2189 = phi i32  [ %op2159, %label2170 ], [ %op2187, %label2183 ]
# br label %label2178
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2178
.long_func_label2190:
# %op2191 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2160
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2192 = load i32 , i32 * %op2191
	lu12i.w $t0, -2
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2193 = mul i32  1, %op2192
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2194 = add i32  %op2159, %op2193
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2195
	lu12i.w $t0, -2
	ori $t0, $t0, 1388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2195
.long_func_label2195:
# %op2196 = phi i32  [ %op2159, %label2175 ], [ %op2194, %label2190 ]
# br label %label2178
	lu12i.w $t0, -2
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2178
.long_func_label2197:
# %op2198 = phi i32  [ 0, %label2169 ], [ %op2218, %label2217 ]
# %op2199 = phi i32  [ 0, %label2169 ], [ %op2221, %label2217 ]
# %op2200 = phi i32  [ %op2151, %label2169 ], [ %op2220, %label2217 ]
# %op2201 = phi i32  [ %op2150, %label2169 ], [ %op2219, %label2217 ]
# %op2202 = icmp slt i32  %op2199, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1367
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2203 = zext i1  %op2202 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1367
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2204 = icmp ne i32  %op2203, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label379
	addi.d $t2, $zero, 0
	b false_label379
true_label379:
	addi.d $t2, $zero, 1
false_label379:
	lu12i.w $t8, -2
	ori $t8, $t8, 1359
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2204, label %label2205, label %label2208
	lu12i.w $t0, -2
	ori $t0, $t0, 1359
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2205
	b .long_func_label2208
.long_func_label2205:
# %op2206 = srem i32  %op2201, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2207 = icmp ne i32  %op2206, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label380
	addi.d $t2, $zero, 0
	b false_label380
true_label380:
	addi.d $t2, $zero, 1
false_label380:
	lu12i.w $t8, -2
	ori $t8, $t8, 1351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2207, label %label2222, label %label2217
	lu12i.w $t0, -2
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2222
	b .long_func_label2217
.long_func_label2208:
# %op2209 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1350
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2210 = zext i1  %op2209 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1350
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2211 = icmp ne i32  %op2210, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label382
	addi.d $t2, $zero, 0
	b false_label382
true_label382:
	addi.d $t2, $zero, 1
false_label382:
	lu12i.w $t8, -2
	ori $t8, $t8, 1343
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2211, label %label2225, label %label2226
	lu12i.w $t0, -2
	ori $t0, $t0, 1343
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2225
	b .long_func_label2226
.long_func_label2212:
# %op2213 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2199
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2214 = load i32 , i32 * %op2213
	lu12i.w $t0, -2
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2215 = mul i32  1, %op2214
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2216 = add i32  %op2198, %op2215
	lu12i.w $t0, -2
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2217
	lu12i.w $t0, -2
	ori $t0, $t0, 1316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2217
.long_func_label2217:
# %op2218 = phi i32  [ %op2198, %label2205 ], [ %op2198, %label2222 ], [ %op2216, %label2212 ]
# %op2219 = sdiv i32  %op2201, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2220 = sdiv i32  %op2200, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2221 = add i32  %op2199, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2197
	lu12i.w $t0, -2
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2197
.long_func_label2222:
# %op2223 = srem i32  %op2200, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2224 = icmp ne i32  %op2223, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label383
	addi.d $t2, $zero, 0
	b false_label383
true_label383:
	addi.d $t2, $zero, 1
false_label383:
	lu12i.w $t8, -2
	ori $t8, $t8, 1295
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2224, label %label2212, label %label2217
	lu12i.w $t0, -2
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1295
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2212
	b .long_func_label2217
.long_func_label2225:
# br label %label2230
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2230
.long_func_label2226:
# %op2227 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2228 = load i32 , i32 * %op2227
	lu12i.w $t0, -2
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2229 = mul i32  %op2198, %op2228
	lu12i.w $t0, -2
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2232
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2232
.long_func_label2230:
# %op2231 = phi i32  [ 0, %label2225 ], [ %op2233, %label2243 ]
# br label %label2149
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2149
.long_func_label2232:
# %op2233 = phi i32  [ 0, %label2226 ], [ %op2250, %label2249 ]
# %op2234 = phi i32  [ 0, %label2226 ], [ %op2253, %label2249 ]
# %op2235 = phi i32  [ 65535, %label2226 ], [ %op2252, %label2249 ]
# %op2236 = phi i32  [ %op2229, %label2226 ], [ %op2251, %label2249 ]
# %op2237 = icmp slt i32  %op2234, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2238 = zext i1  %op2237 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2239 = icmp ne i32  %op2238, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label385
	addi.d $t2, $zero, 0
	b false_label385
true_label385:
	addi.d $t2, $zero, 1
false_label385:
	lu12i.w $t8, -2
	ori $t8, $t8, 1243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2239, label %label2240, label %label2243
	lu12i.w $t0, -2
	ori $t0, $t0, 1243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2240
	b .long_func_label2243
.long_func_label2240:
# %op2241 = srem i32  %op2236, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2242 = icmp ne i32  %op2241, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label386
	addi.d $t2, $zero, 0
	b false_label386
true_label386:
	addi.d $t2, $zero, 1
false_label386:
	lu12i.w $t8, -2
	ori $t8, $t8, 1235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2242, label %label2254, label %label2249
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2254
	b .long_func_label2249
.long_func_label2243:
# br label %label2230
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2230
.long_func_label2244:
# %op2245 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2234
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2246 = load i32 , i32 * %op2245
	lu12i.w $t0, -2
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2247 = mul i32  1, %op2246
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2248 = add i32  %op2233, %op2247
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1216
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2249
	lu12i.w $t0, -2
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2249
.long_func_label2249:
# %op2250 = phi i32  [ %op2233, %label2240 ], [ %op2233, %label2254 ], [ %op2248, %label2244 ]
# %op2251 = sdiv i32  %op2236, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2252 = sdiv i32  %op2235, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2253 = add i32  %op2234, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2232
	lu12i.w $t0, -2
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2232
.long_func_label2254:
# %op2255 = srem i32  %op2235, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2256 = icmp ne i32  %op2255, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label387
	addi.d $t2, $zero, 0
	b false_label387
true_label387:
	addi.d $t2, $zero, 1
false_label387:
	lu12i.w $t8, -2
	ori $t8, $t8, 1191
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2256, label %label2244, label %label2249
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1191
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2244
	b .long_func_label2249
.long_func_label2257:
# %op2258 = icmp slt i32  %op2010, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1190
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2259 = zext i1  %op2258 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1190
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2260 = icmp ne i32  %op2259, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label389
	addi.d $t2, $zero, 0
	b false_label389
true_label389:
	addi.d $t2, $zero, 1
false_label389:
	lu12i.w $t8, -2
	ori $t8, $t8, 1183
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2260, label %label2267, label %label2268
	lu12i.w $t0, -2
	ori $t0, $t0, 1183
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2267
	b .long_func_label2268
.long_func_label2261:
# %op2262 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1182
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2263 = zext i1  %op2262 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1182
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2264 = icmp ne i32  %op2263, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label391
	addi.d $t2, $zero, 0
	b false_label391
true_label391:
	addi.d $t2, $zero, 1
false_label391:
	lu12i.w $t8, -2
	ori $t8, $t8, 1175
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2264, label %label2271, label %label2275
	lu12i.w $t0, -2
	ori $t0, $t0, 1175
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2271
	b .long_func_label2275
.long_func_label2265:
# %op2266 = phi i32  [ %op2270, %label2269 ], [ %op2277, %label2276 ]
# br label %label2008
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2008
.long_func_label2267:
# br label %label2269
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2269
.long_func_label2268:
# br label %label2269
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2269
.long_func_label2269:
# %op2270 = phi i32  [ 65535, %label2267 ], [ 0, %label2268 ]
# br label %label2265
	lu12i.w $t0, -2
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2265
.long_func_label2271:
# %op2272 = icmp sgt i32  %op2010, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2273 = zext i1  %op2272 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2274 = icmp ne i32  %op2273, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label393
	addi.d $t2, $zero, 0
	b false_label393
true_label393:
	addi.d $t2, $zero, 1
false_label393:
	lu12i.w $t8, -2
	ori $t8, $t8, 1155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2274, label %label2278, label %label2288
	lu12i.w $t0, -2
	ori $t0, $t0, 1155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2278
	b .long_func_label2288
.long_func_label2275:
# br label %label2276
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2276
.long_func_label2276:
# %op2277 = phi i32  [ %op2293, %label2292 ], [ %op2010, %label2275 ]
# br label %label2265
	lu12i.w $t0, -2
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2265
.long_func_label2278:
# %op2279 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2280 = load i32 , i32 * %op2279
	lu12i.w $t0, -2
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2281 = sdiv i32  %op2010, %op2280
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2282 = add i32  %op2281, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2283 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2284 = add i32  %op2283, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2285 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2284
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2286 = load i32 , i32 * %op2285
	lu12i.w $t0, -2
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2287 = sub i32  %op2282, %op2286
	lu12i.w $t0, -2
	ori $t0, $t0, 1124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2292
	lu12i.w $t0, -2
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2292
.long_func_label2288:
# %op2289 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2290 = load i32 , i32 * %op2289
	lu12i.w $t0, -2
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2291 = sdiv i32  %op2010, %op2290
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2292
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2292
.long_func_label2292:
# %op2293 = phi i32  [ %op2287, %label2278 ], [ %op2291, %label2288 ]
# br label %label2276
	lu12i.w $t0, -2
	ori $t0, $t0, 1076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2276
.long_func_label2294:
# %op2295 = phi i32  [ %op1966, %label2006 ], [ %op2439, %label2554 ]
# %op2296 = phi i32  [ %op1966, %label2006 ], [ %op2555, %label2554 ]
# %op2297 = phi i32  [ 0, %label2006 ], [ %op2332, %label2554 ]
# %op2298 = icmp ne i32  %op2296, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label394
	addi.d $t2, $zero, 0
	b false_label394
true_label394:
	addi.d $t2, $zero, 1
false_label394:
	lu12i.w $t8, -2
	ori $t8, $t8, 1063
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2298, label %label2299, label %label2300
	lu12i.w $t0, -2
	ori $t0, $t0, 1063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2299
	b .long_func_label2300
.long_func_label2299:
# br label %label2304
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 1
	lu12i.w $t8, -2
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2304
.long_func_label2300:
# %op2301 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label395
	addi.d $t2, $zero, 0
	b false_label395
true_label395:
	addi.d $t2, $zero, 1
false_label395:
	lu12i.w $t8, -2
	ori $t8, $t8, 1062
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2302 = zext i1  %op2301 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1062
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2303 = icmp ne i32  %op2302, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label396
	addi.d $t2, $zero, 0
	b false_label396
true_label396:
	addi.d $t2, $zero, 1
false_label396:
	lu12i.w $t8, -2
	ori $t8, $t8, 1055
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2303, label %label2583, label %label2587
	lu12i.w $t0, -2
	ori $t0, $t0, 1055
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2583
	b .long_func_label2587
.long_func_label2304:
# %op2305 = phi i32  [ 0, %label2299 ], [ %op2323, %label2322 ]
# %op2306 = phi i32  [ 0, %label2299 ], [ %op2326, %label2322 ]
# %op2307 = phi i32  [ 1, %label2299 ], [ %op2325, %label2322 ]
# %op2308 = phi i32  [ %op2296, %label2299 ], [ %op2324, %label2322 ]
# %op2309 = icmp slt i32  %op2306, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1035
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2310 = zext i1  %op2309 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1035
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2311 = icmp ne i32  %op2310, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label398
	addi.d $t2, $zero, 0
	b false_label398
true_label398:
	addi.d $t2, $zero, 1
false_label398:
	lu12i.w $t8, -2
	ori $t8, $t8, 1027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2311, label %label2312, label %label2315
	lu12i.w $t0, -2
	ori $t0, $t0, 1027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2312
	b .long_func_label2315
.long_func_label2312:
# %op2313 = srem i32  %op2308, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2314 = icmp ne i32  %op2313, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label399
	addi.d $t2, $zero, 0
	b false_label399
true_label399:
	addi.d $t2, $zero, 1
false_label399:
	lu12i.w $t8, -2
	ori $t8, $t8, 1019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2314, label %label2327, label %label2322
	lu12i.w $t0, -2
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2327
	b .long_func_label2322
.long_func_label2315:
# %op2316 = icmp ne i32  %op2305, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label400
	addi.d $t2, $zero, 0
	b false_label400
true_label400:
	addi.d $t2, $zero, 1
false_label400:
	lu12i.w $t8, -2
	ori $t8, $t8, 1018
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2316, label %label2330, label %label2331
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1018
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2330
	b .long_func_label2331
.long_func_label2317:
# %op2318 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2306
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2319 = load i32 , i32 * %op2318
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2320 = mul i32  1, %op2319
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2321 = add i32  %op2305, %op2320
	lu12i.w $t0, -2
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2322
	lu12i.w $t0, -2
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2322
.long_func_label2322:
# %op2323 = phi i32  [ %op2305, %label2312 ], [ %op2305, %label2327 ], [ %op2321, %label2317 ]
# %op2324 = sdiv i32  %op2308, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2325 = sdiv i32  %op2307, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2326 = add i32  %op2306, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2304
	lu12i.w $t0, -2
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2304
.long_func_label2327:
# %op2328 = srem i32  %op2307, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2329 = icmp ne i32  %op2328, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label401
	addi.d $t2, $zero, 0
	b false_label401
true_label401:
	addi.d $t2, $zero, 1
false_label401:
	lu12i.w $t8, -2
	ori $t8, $t8, 975
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2329, label %label2317, label %label2322
	lu12i.w $t0, -2
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 975
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2317
	b .long_func_label2322
.long_func_label2330:
# br label %label2333
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2333
.long_func_label2331:
# %op2332 = phi i32  [ %op2297, %label2315 ], [ %op2334, %label2338 ]
# br label %label2438
	lu12i.w $t0, -2
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2438
.long_func_label2333:
# %op2334 = phi i32  [ %op2297, %label2330 ], [ %op2340, %label2411 ]
# %op2335 = phi i32  [ %op2295, %label2330 ], [ %op2412, %label2411 ]
# %op2336 = icmp ne i32  %op2335, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label402
	addi.d $t2, $zero, 0
	b false_label402
true_label402:
	addi.d $t2, $zero, 1
false_label402:
	lu12i.w $t8, -2
	ori $t8, $t8, 959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2336, label %label2337, label %label2338
	lu12i.w $t0, -2
	ori $t0, $t0, 959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2337
	b .long_func_label2338
.long_func_label2337:
# br label %label2339
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2339
.long_func_label2338:
# br label %label2331
	lu12i.w $t0, -2
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2331
.long_func_label2339:
# %op2340 = phi i32  [ 0, %label2337 ], [ %op2360, %label2359 ]
# %op2341 = phi i32  [ 0, %label2337 ], [ %op2363, %label2359 ]
# %op2342 = phi i32  [ %op2335, %label2337 ], [ %op2362, %label2359 ]
# %op2343 = phi i32  [ %op2334, %label2337 ], [ %op2361, %label2359 ]
# %op2344 = icmp slt i32  %op2341, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2345 = zext i1  %op2344 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2346 = icmp ne i32  %op2345, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label404
	addi.d $t2, $zero, 0
	b false_label404
true_label404:
	addi.d $t2, $zero, 1
false_label404:
	lu12i.w $t8, -2
	ori $t8, $t8, 931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2346, label %label2347, label %label2350
	lu12i.w $t0, -2
	ori $t0, $t0, 931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2347
	b .long_func_label2350
.long_func_label2347:
# %op2348 = srem i32  %op2343, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2349 = icmp ne i32  %op2348, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label405
	addi.d $t2, $zero, 0
	b false_label405
true_label405:
	addi.d $t2, $zero, 1
false_label405:
	lu12i.w $t8, -2
	ori $t8, $t8, 923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2349, label %label2351, label %label2356
	lu12i.w $t0, -2
	ori $t0, $t0, 923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2351
	b .long_func_label2356
.long_func_label2350:
# br label %label2378
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2378
.long_func_label2351:
# %op2352 = srem i32  %op2342, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2353 = icmp eq i32  %op2352, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label406
	addi.d $t2, $zero, 0
	b false_label406
true_label406:
	addi.d $t2, $zero, 1
false_label406:
	lu12i.w $t8, -2
	ori $t8, $t8, 915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2354 = zext i1  %op2353 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2355 = icmp ne i32  %op2354, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label407
	addi.d $t2, $zero, 0
	b false_label407
true_label407:
	addi.d $t2, $zero, 1
false_label407:
	lu12i.w $t8, -2
	ori $t8, $t8, 907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2355, label %label2364, label %label2369
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2364
	b .long_func_label2369
.long_func_label2356:
# %op2357 = srem i32  %op2342, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2358 = icmp ne i32  %op2357, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label408
	addi.d $t2, $zero, 0
	b false_label408
true_label408:
	addi.d $t2, $zero, 1
false_label408:
	lu12i.w $t8, -2
	ori $t8, $t8, 899
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2358, label %label2371, label %label2376
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 899
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2371
	b .long_func_label2376
.long_func_label2359:
# %op2360 = phi i32  [ %op2370, %label2369 ], [ %op2377, %label2376 ]
# %op2361 = sdiv i32  %op2343, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2362 = sdiv i32  %op2342, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2363 = add i32  %op2341, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2339
	lu12i.w $t0, -2
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2339
.long_func_label2364:
# %op2365 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2341
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2366 = load i32 , i32 * %op2365
	lu12i.w $t0, -2
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2367 = mul i32  1, %op2366
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2368 = add i32  %op2340, %op2367
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2369
	lu12i.w $t0, -2
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2369
.long_func_label2369:
# %op2370 = phi i32  [ %op2340, %label2351 ], [ %op2368, %label2364 ]
# br label %label2359
	lu12i.w $t0, -2
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2359
.long_func_label2371:
# %op2372 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2341
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2373 = load i32 , i32 * %op2372
	lu12i.w $t0, -2
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2374 = mul i32  1, %op2373
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2375 = add i32  %op2340, %op2374
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2376
	lu12i.w $t0, -2
	ori $t0, $t0, 836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2376
.long_func_label2376:
# %op2377 = phi i32  [ %op2340, %label2356 ], [ %op2375, %label2371 ]
# br label %label2359
	lu12i.w $t0, -2
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2359
.long_func_label2378:
# %op2379 = phi i32  [ 0, %label2350 ], [ %op2399, %label2398 ]
# %op2380 = phi i32  [ 0, %label2350 ], [ %op2402, %label2398 ]
# %op2381 = phi i32  [ %op2335, %label2350 ], [ %op2401, %label2398 ]
# %op2382 = phi i32  [ %op2334, %label2350 ], [ %op2400, %label2398 ]
# %op2383 = icmp slt i32  %op2380, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2384 = zext i1  %op2383 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2385 = icmp ne i32  %op2384, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label410
	addi.d $t2, $zero, 0
	b false_label410
true_label410:
	addi.d $t2, $zero, 1
false_label410:
	lu12i.w $t8, -2
	ori $t8, $t8, 807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2385, label %label2386, label %label2389
	lu12i.w $t0, -2
	ori $t0, $t0, 807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2386
	b .long_func_label2389
.long_func_label2386:
# %op2387 = srem i32  %op2382, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2388 = icmp ne i32  %op2387, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label411
	addi.d $t2, $zero, 0
	b false_label411
true_label411:
	addi.d $t2, $zero, 1
false_label411:
	lu12i.w $t8, -2
	ori $t8, $t8, 799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2388, label %label2403, label %label2398
	lu12i.w $t0, -2
	ori $t0, $t0, 828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2403
	b .long_func_label2398
.long_func_label2389:
# %op2390 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 798
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2391 = zext i1  %op2390 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 798
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2392 = icmp ne i32  %op2391, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label413
	addi.d $t2, $zero, 0
	b false_label413
true_label413:
	addi.d $t2, $zero, 1
false_label413:
	lu12i.w $t8, -2
	ori $t8, $t8, 791
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2392, label %label2406, label %label2407
	lu12i.w $t0, -2
	ori $t0, $t0, 791
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2406
	b .long_func_label2407
.long_func_label2393:
# %op2394 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2380
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2395 = load i32 , i32 * %op2394
	lu12i.w $t0, -2
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2396 = mul i32  1, %op2395
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2397 = add i32  %op2379, %op2396
	lu12i.w $t0, -2
	ori $t0, $t0, 828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2398
	lu12i.w $t0, -2
	ori $t0, $t0, 764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2398
.long_func_label2398:
# %op2399 = phi i32  [ %op2379, %label2386 ], [ %op2379, %label2403 ], [ %op2397, %label2393 ]
# %op2400 = sdiv i32  %op2382, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2401 = sdiv i32  %op2381, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2402 = add i32  %op2380, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2378
	lu12i.w $t0, -2
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2378
.long_func_label2403:
# %op2404 = srem i32  %op2381, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2405 = icmp ne i32  %op2404, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label414
	addi.d $t2, $zero, 0
	b false_label414
true_label414:
	addi.d $t2, $zero, 1
false_label414:
	lu12i.w $t8, -2
	ori $t8, $t8, 743
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2405, label %label2393, label %label2398
	lu12i.w $t0, -2
	ori $t0, $t0, 828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 743
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2393
	b .long_func_label2398
.long_func_label2406:
# br label %label2411
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2411
.long_func_label2407:
# %op2408 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2409 = load i32 , i32 * %op2408
	lu12i.w $t0, -2
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2410 = mul i32  %op2379, %op2409
	lu12i.w $t0, -2
	ori $t0, $t0, 828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2413
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2413
.long_func_label2411:
# %op2412 = phi i32  [ 0, %label2406 ], [ %op2414, %label2424 ]
# br label %label2333
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2333
.long_func_label2413:
# %op2414 = phi i32  [ 0, %label2407 ], [ %op2431, %label2430 ]
# %op2415 = phi i32  [ 0, %label2407 ], [ %op2434, %label2430 ]
# %op2416 = phi i32  [ 65535, %label2407 ], [ %op2433, %label2430 ]
# %op2417 = phi i32  [ %op2410, %label2407 ], [ %op2432, %label2430 ]
# %op2418 = icmp slt i32  %op2415, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2419 = zext i1  %op2418 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2420 = icmp ne i32  %op2419, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label416
	addi.d $t2, $zero, 0
	b false_label416
true_label416:
	addi.d $t2, $zero, 1
false_label416:
	lu12i.w $t8, -2
	ori $t8, $t8, 691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2420, label %label2421, label %label2424
	lu12i.w $t0, -2
	ori $t0, $t0, 691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2421
	b .long_func_label2424
.long_func_label2421:
# %op2422 = srem i32  %op2417, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2423 = icmp ne i32  %op2422, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label417
	addi.d $t2, $zero, 0
	b false_label417
true_label417:
	addi.d $t2, $zero, 1
false_label417:
	lu12i.w $t8, -2
	ori $t8, $t8, 683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2423, label %label2435, label %label2430
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2435
	b .long_func_label2430
.long_func_label2424:
# br label %label2411
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2411
.long_func_label2425:
# %op2426 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2415
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2427 = load i32 , i32 * %op2426
	lu12i.w $t0, -2
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2428 = mul i32  1, %op2427
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2429 = add i32  %op2414, %op2428
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2430
	lu12i.w $t0, -2
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2430
.long_func_label2430:
# %op2431 = phi i32  [ %op2414, %label2421 ], [ %op2414, %label2435 ], [ %op2429, %label2425 ]
# %op2432 = sdiv i32  %op2417, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2433 = sdiv i32  %op2416, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2434 = add i32  %op2415, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2413
	lu12i.w $t0, -2
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2413
.long_func_label2435:
# %op2436 = srem i32  %op2416, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2437 = icmp ne i32  %op2436, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label418
	addi.d $t2, $zero, 0
	b false_label418
true_label418:
	addi.d $t2, $zero, 1
false_label418:
	lu12i.w $t8, -2
	ori $t8, $t8, 639
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2437, label %label2425, label %label2430
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 639
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2425
	b .long_func_label2430
.long_func_label2438:
# %op2439 = phi i32  [ %op2295, %label2331 ], [ %op2448, %label2519 ]
# %op2440 = phi i32  [ %op2295, %label2331 ], [ %op2520, %label2519 ]
# %op2441 = icmp ne i32  %op2440, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label419
	addi.d $t2, $zero, 0
	b false_label419
true_label419:
	addi.d $t2, $zero, 1
false_label419:
	lu12i.w $t8, -2
	ori $t8, $t8, 627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2441, label %label2442, label %label2443
	lu12i.w $t0, -2
	ori $t0, $t0, 627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2442
	b .long_func_label2443
.long_func_label2442:
# br label %label2447
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2447
.long_func_label2443:
# %op2444 = icmp sge i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label420
	addi.d $t2, $zero, 0
	b false_label420
true_label420:
	addi.d $t2, $zero, 1
false_label420:
	lu12i.w $t8, -2
	ori $t8, $t8, 626
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2445 = zext i1  %op2444 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 626
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2446 = icmp ne i32  %op2445, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label421
	addi.d $t2, $zero, 0
	b false_label421
true_label421:
	addi.d $t2, $zero, 1
false_label421:
	lu12i.w $t8, -2
	ori $t8, $t8, 619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2446, label %label2546, label %label2550
	lu12i.w $t0, -2
	ori $t0, $t0, 619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2546
	b .long_func_label2550
.long_func_label2447:
# %op2448 = phi i32  [ 0, %label2442 ], [ %op2468, %label2467 ]
# %op2449 = phi i32  [ 0, %label2442 ], [ %op2471, %label2467 ]
# %op2450 = phi i32  [ %op2440, %label2442 ], [ %op2470, %label2467 ]
# %op2451 = phi i32  [ %op2439, %label2442 ], [ %op2469, %label2467 ]
# %op2452 = icmp slt i32  %op2449, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2453 = zext i1  %op2452 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2454 = icmp ne i32  %op2453, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label423
	addi.d $t2, $zero, 0
	b false_label423
true_label423:
	addi.d $t2, $zero, 1
false_label423:
	lu12i.w $t8, -2
	ori $t8, $t8, 591
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2454, label %label2455, label %label2458
	lu12i.w $t0, -2
	ori $t0, $t0, 591
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2455
	b .long_func_label2458
.long_func_label2455:
# %op2456 = srem i32  %op2451, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2457 = icmp ne i32  %op2456, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label424
	addi.d $t2, $zero, 0
	b false_label424
true_label424:
	addi.d $t2, $zero, 1
false_label424:
	lu12i.w $t8, -2
	ori $t8, $t8, 583
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2457, label %label2459, label %label2464
	lu12i.w $t0, -2
	ori $t0, $t0, 583
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2459
	b .long_func_label2464
.long_func_label2458:
# br label %label2486
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2486
.long_func_label2459:
# %op2460 = srem i32  %op2450, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2461 = icmp eq i32  %op2460, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label425
	addi.d $t2, $zero, 0
	b false_label425
true_label425:
	addi.d $t2, $zero, 1
false_label425:
	lu12i.w $t8, -2
	ori $t8, $t8, 575
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2462 = zext i1  %op2461 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 575
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2463 = icmp ne i32  %op2462, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label426
	addi.d $t2, $zero, 0
	b false_label426
true_label426:
	addi.d $t2, $zero, 1
false_label426:
	lu12i.w $t8, -2
	ori $t8, $t8, 567
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2463, label %label2472, label %label2477
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 567
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2472
	b .long_func_label2477
.long_func_label2464:
# %op2465 = srem i32  %op2450, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2466 = icmp ne i32  %op2465, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label427
	addi.d $t2, $zero, 0
	b false_label427
true_label427:
	addi.d $t2, $zero, 1
false_label427:
	lu12i.w $t8, -2
	ori $t8, $t8, 559
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2466, label %label2479, label %label2484
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 559
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2479
	b .long_func_label2484
.long_func_label2467:
# %op2468 = phi i32  [ %op2478, %label2477 ], [ %op2485, %label2484 ]
# %op2469 = sdiv i32  %op2451, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2470 = sdiv i32  %op2450, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2471 = add i32  %op2449, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2447
	lu12i.w $t0, -2
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2447
.long_func_label2472:
# %op2473 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2449
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2474 = load i32 , i32 * %op2473
	lu12i.w $t0, -2
	ori $t0, $t0, 528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2475 = mul i32  1, %op2474
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2476 = add i32  %op2448, %op2475
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2477
	lu12i.w $t0, -2
	ori $t0, $t0, 516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2477
.long_func_label2477:
# %op2478 = phi i32  [ %op2448, %label2459 ], [ %op2476, %label2472 ]
# br label %label2467
	lu12i.w $t0, -2
	ori $t0, $t0, 512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2467
.long_func_label2479:
# %op2480 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2449
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2481 = load i32 , i32 * %op2480
	lu12i.w $t0, -2
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2482 = mul i32  1, %op2481
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 500
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2483 = add i32  %op2448, %op2482
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2484
	lu12i.w $t0, -2
	ori $t0, $t0, 492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2484
.long_func_label2484:
# %op2485 = phi i32  [ %op2448, %label2464 ], [ %op2483, %label2479 ]
# br label %label2467
	lu12i.w $t0, -2
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2467
.long_func_label2486:
# %op2487 = phi i32  [ 0, %label2458 ], [ %op2507, %label2506 ]
# %op2488 = phi i32  [ 0, %label2458 ], [ %op2510, %label2506 ]
# %op2489 = phi i32  [ %op2440, %label2458 ], [ %op2509, %label2506 ]
# %op2490 = phi i32  [ %op2439, %label2458 ], [ %op2508, %label2506 ]
# %op2491 = icmp slt i32  %op2488, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 471
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2492 = zext i1  %op2491 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 471
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2493 = icmp ne i32  %op2492, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label429
	addi.d $t2, $zero, 0
	b false_label429
true_label429:
	addi.d $t2, $zero, 1
false_label429:
	lu12i.w $t8, -2
	ori $t8, $t8, 463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2493, label %label2494, label %label2497
	lu12i.w $t0, -2
	ori $t0, $t0, 463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2494
	b .long_func_label2497
.long_func_label2494:
# %op2495 = srem i32  %op2490, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2496 = icmp ne i32  %op2495, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label430
	addi.d $t2, $zero, 0
	b false_label430
true_label430:
	addi.d $t2, $zero, 1
false_label430:
	lu12i.w $t8, -2
	ori $t8, $t8, 455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2496, label %label2511, label %label2506
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2511
	b .long_func_label2506
.long_func_label2497:
# %op2498 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 454
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2499 = zext i1  %op2498 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 454
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2500 = icmp ne i32  %op2499, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label432
	addi.d $t2, $zero, 0
	b false_label432
true_label432:
	addi.d $t2, $zero, 1
false_label432:
	lu12i.w $t8, -2
	ori $t8, $t8, 447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2500, label %label2514, label %label2515
	lu12i.w $t0, -2
	ori $t0, $t0, 447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2514
	b .long_func_label2515
.long_func_label2501:
# %op2502 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2488
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2503 = load i32 , i32 * %op2502
	lu12i.w $t0, -2
	ori $t0, $t0, 432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2504 = mul i32  1, %op2503
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2505 = add i32  %op2487, %op2504
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2506
	lu12i.w $t0, -2
	ori $t0, $t0, 420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2506
.long_func_label2506:
# %op2507 = phi i32  [ %op2487, %label2494 ], [ %op2487, %label2511 ], [ %op2505, %label2501 ]
# %op2508 = sdiv i32  %op2490, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2509 = sdiv i32  %op2489, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2510 = add i32  %op2488, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2486
	lu12i.w $t0, -2
	ori $t0, $t0, 416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2486
.long_func_label2511:
# %op2512 = srem i32  %op2489, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2513 = icmp ne i32  %op2512, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label433
	addi.d $t2, $zero, 0
	b false_label433
true_label433:
	addi.d $t2, $zero, 1
false_label433:
	lu12i.w $t8, -2
	ori $t8, $t8, 399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2513, label %label2501, label %label2506
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2501
	b .long_func_label2506
.long_func_label2514:
# br label %label2519
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2519
.long_func_label2515:
# %op2516 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2517 = load i32 , i32 * %op2516
	lu12i.w $t0, -2
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2518 = mul i32  %op2487, %op2517
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2521
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2521
.long_func_label2519:
# %op2520 = phi i32  [ 0, %label2514 ], [ %op2522, %label2532 ]
# br label %label2438
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2438
.long_func_label2521:
# %op2522 = phi i32  [ 0, %label2515 ], [ %op2539, %label2538 ]
# %op2523 = phi i32  [ 0, %label2515 ], [ %op2542, %label2538 ]
# %op2524 = phi i32  [ 65535, %label2515 ], [ %op2541, %label2538 ]
# %op2525 = phi i32  [ %op2518, %label2515 ], [ %op2540, %label2538 ]
# %op2526 = icmp slt i32  %op2523, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 355
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2527 = zext i1  %op2526 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 355
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2528 = icmp ne i32  %op2527, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label435
	addi.d $t2, $zero, 0
	b false_label435
true_label435:
	addi.d $t2, $zero, 1
false_label435:
	lu12i.w $t8, -2
	ori $t8, $t8, 347
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2528, label %label2529, label %label2532
	lu12i.w $t0, -2
	ori $t0, $t0, 347
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2529
	b .long_func_label2532
.long_func_label2529:
# %op2530 = srem i32  %op2525, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2531 = icmp ne i32  %op2530, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label436
	addi.d $t2, $zero, 0
	b false_label436
true_label436:
	addi.d $t2, $zero, 1
false_label436:
	lu12i.w $t8, -2
	ori $t8, $t8, 339
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2531, label %label2543, label %label2538
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 339
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2543
	b .long_func_label2538
.long_func_label2532:
# br label %label2519
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2519
.long_func_label2533:
# %op2534 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2523
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2535 = load i32 , i32 * %op2534
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2536 = mul i32  1, %op2535
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2537 = add i32  %op2522, %op2536
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2538
	lu12i.w $t0, -2
	ori $t0, $t0, 316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2538
.long_func_label2538:
# %op2539 = phi i32  [ %op2522, %label2529 ], [ %op2522, %label2543 ], [ %op2537, %label2533 ]
# %op2540 = sdiv i32  %op2525, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2541 = sdiv i32  %op2524, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2542 = add i32  %op2523, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2521
	lu12i.w $t0, -2
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2521
.long_func_label2543:
# %op2544 = srem i32  %op2524, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2545 = icmp ne i32  %op2544, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label437
	addi.d $t2, $zero, 0
	b false_label437
true_label437:
	addi.d $t2, $zero, 1
false_label437:
	lu12i.w $t8, -2
	ori $t8, $t8, 295
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2545, label %label2533, label %label2538
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 295
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2533
	b .long_func_label2538
.long_func_label2546:
# %op2547 = icmp slt i32  %op2296, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 294
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2548 = zext i1  %op2547 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 294
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2549 = icmp ne i32  %op2548, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label439
	addi.d $t2, $zero, 0
	b false_label439
true_label439:
	addi.d $t2, $zero, 1
false_label439:
	lu12i.w $t8, -2
	ori $t8, $t8, 287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2549, label %label2556, label %label2557
	lu12i.w $t0, -2
	ori $t0, $t0, 287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2556
	b .long_func_label2557
.long_func_label2550:
# %op2551 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 286
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2552 = zext i1  %op2551 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 286
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2553 = icmp ne i32  %op2552, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label441
	addi.d $t2, $zero, 0
	b false_label441
true_label441:
	addi.d $t2, $zero, 1
false_label441:
	lu12i.w $t8, -2
	ori $t8, $t8, 279
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2553, label %label2560, label %label2564
	lu12i.w $t0, -2
	ori $t0, $t0, 279
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2560
	b .long_func_label2564
.long_func_label2554:
# %op2555 = phi i32  [ %op2559, %label2558 ], [ %op2566, %label2565 ]
# br label %label2294
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2294
.long_func_label2556:
# br label %label2558
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2558
.long_func_label2557:
# br label %label2558
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2558
.long_func_label2558:
# %op2559 = phi i32  [ 65535, %label2556 ], [ 0, %label2557 ]
# br label %label2554
	lu12i.w $t0, -2
	ori $t0, $t0, 268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2554
.long_func_label2560:
# %op2561 = icmp sgt i32  %op2296, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 267
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2562 = zext i1  %op2561 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 267
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2563 = icmp ne i32  %op2562, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label443
	addi.d $t2, $zero, 0
	b false_label443
true_label443:
	addi.d $t2, $zero, 1
false_label443:
	lu12i.w $t8, -2
	ori $t8, $t8, 259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2563, label %label2567, label %label2577
	lu12i.w $t0, -2
	ori $t0, $t0, 259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2567
	b .long_func_label2577
.long_func_label2564:
# br label %label2565
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2565
.long_func_label2565:
# %op2566 = phi i32  [ %op2582, %label2581 ], [ %op2296, %label2564 ]
# br label %label2554
	lu12i.w $t0, -2
	ori $t0, $t0, 252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2554
.long_func_label2567:
# %op2568 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2569 = load i32 , i32 * %op2568
	lu12i.w $t0, -2
	ori $t0, $t0, 240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2570 = sdiv i32  %op2296, %op2569
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2571 = add i32  %op2570, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2572 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2573 = add i32  %op2572, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2574 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2573
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2575 = load i32 , i32 * %op2574
	lu12i.w $t0, -2
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2576 = sub i32  %op2571, %op2575
	lu12i.w $t0, -2
	ori $t0, $t0, 228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2581
	lu12i.w $t0, -2
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2581
.long_func_label2577:
# %op2578 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2579 = load i32 , i32 * %op2578
	lu12i.w $t0, -2
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2580 = sdiv i32  %op2296, %op2579
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2581
	lu12i.w $t0, -2
	ori $t0, $t0, 184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2581
.long_func_label2581:
# %op2582 = phi i32  [ %op2576, %label2567 ], [ %op2580, %label2577 ]
# br label %label2565
	lu12i.w $t0, -2
	ori $t0, $t0, 180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2565
.long_func_label2583:
# %op2584 = icmp slt i32  %op1967, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 179
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2585 = zext i1  %op2584 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 179
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2586 = icmp ne i32  %op2585, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label445
	addi.d $t2, $zero, 0
	b false_label445
true_label445:
	addi.d $t2, $zero, 1
false_label445:
	lu12i.w $t8, -2
	ori $t8, $t8, 171
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2586, label %label2593, label %label2594
	lu12i.w $t0, -2
	ori $t0, $t0, 171
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2593
	b .long_func_label2594
.long_func_label2587:
# %op2588 = icmp sgt i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 170
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2589 = zext i1  %op2588 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 170
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2590 = icmp ne i32  %op2589, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label447
	addi.d $t2, $zero, 0
	b false_label447
true_label447:
	addi.d $t2, $zero, 1
false_label447:
	lu12i.w $t8, -2
	ori $t8, $t8, 163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2590, label %label2597, label %label2601
	lu12i.w $t0, -2
	ori $t0, $t0, 163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2597
	b .long_func_label2601
.long_func_label2591:
# %op2592 = phi i32  [ %op2596, %label2595 ], [ %op2603, %label2602 ]
# br label %label1965
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1965
.long_func_label2593:
# br label %label2595
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	lu12i.w $t8, -2
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2595
.long_func_label2594:
# br label %label2595
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2595
.long_func_label2595:
# %op2596 = phi i32  [ 65535, %label2593 ], [ 0, %label2594 ]
# br label %label2591
	lu12i.w $t0, -2
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2591
.long_func_label2597:
# %op2598 = icmp sgt i32  %op1967, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 151
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2599 = zext i1  %op2598 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 151
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2600 = icmp ne i32  %op2599, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label449
	addi.d $t2, $zero, 0
	b false_label449
true_label449:
	addi.d $t2, $zero, 1
false_label449:
	lu12i.w $t8, -2
	ori $t8, $t8, 143
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2600, label %label2604, label %label2614
	lu12i.w $t0, -2
	ori $t0, $t0, 143
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2604
	b .long_func_label2614
.long_func_label2601:
# br label %label2602
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2602
.long_func_label2602:
# %op2603 = phi i32  [ %op2619, %label2618 ], [ %op1967, %label2601 ]
# br label %label2591
	lu12i.w $t0, -2
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2591
.long_func_label2604:
# %op2605 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2606 = load i32 , i32 * %op2605
	lu12i.w $t0, -2
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2607 = sdiv i32  %op1967, %op2606
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2608 = add i32  %op2607, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2609 = sub i32  15, 1
	addi.w $t0, $zero, 15
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2610 = add i32  %op2609, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2611 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2610
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2612 = load i32 , i32 * %op2611
	lu12i.w $t0, -2
	ori $t0, $t0, 96
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2613 = sub i32  %op2608, %op2612
	lu12i.w $t0, -2
	ori $t0, $t0, 116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 92
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2618
	lu12i.w $t0, -2
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2618
.long_func_label2614:
# %op2615 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2616 = load i32 , i32 * %op2615
	lu12i.w $t0, -2
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 76
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2617 = sdiv i32  %op1967, %op2616
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 76
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2618
	lu12i.w $t0, -2
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2618
.long_func_label2618:
# %op2619 = phi i32  [ %op2613, %label2604 ], [ %op2617, %label2614 ]
# br label %label2602
	lu12i.w $t0, -2
	ori $t0, $t0, 68
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label2602
.long_func_label2620:
# ret i32  1
	addi.w $a0, $zero, 1
	b long_func_ret
.long_func_label2621:
# %op2622 = add i32  %op1959, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label1958
	lu12i.w $t0, -2
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_func_label1958
long_func_ret:
	lu12i.w $t0, 1
	ori $t0, $t0, 4032
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
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
# %op0 = call i32  @long_func()
	bl long_func
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
