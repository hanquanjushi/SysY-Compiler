# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ints
	.type ints, @object
	.size ints, 40000
ints:
	.space 40000
	.globl intt
	.type intt, @object
	.size intt, 4
intt:
	.space 4
	.globl chas
	.type chas, @object
	.size chas, 40000
chas:
	.space 40000
	.globl chat
	.type chat, @object
	.size chat, 4
chat:
	.space 4
	.globl i
	.data
	.type i, @object
	.size i, 4
i:
	.word 0
	.globl ii
	.data
	.type ii, @object
	.size ii, 4
ii:
	.word 1
	.globl c
	.type c, @object
	.size c, 4
c:
	.space 4
	.globl get
	.type get, @object
	.size get, 40000
get:
	.space 40000
	.globl get2
	.type get2, @object
	.size get2, 40000
get2:
	.space 40000
	.text
	.globl isdigit
	.type isdigit, @function
isdigit:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
.isdigit_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = icmp sge i32  %op2, 48
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -41
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op5, label %label8, label %label7
	ld.b $t0, $fp, -49
	bnez $t0, .isdigit_label8
	b .isdigit_label7
.isdigit_label6:
# ret i32  1
	addi.w $a0, $zero, 1
	b isdigit_ret
.isdigit_label7:
# ret i32  0
	addi.w $a0, $zero, 0
	b isdigit_ret
.isdigit_label8:
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = icmp sle i32  %op9, 57
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op12, label %label6, label %label7
	ld.b $t0, $fp, -65
	bnez $t0, .isdigit_label6
	b .isdigit_label7
isdigit_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl power
	.type power, @function
power:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.power_label_entry:
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
# %op4 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  1, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label5
	b .power_label5
.power_label5:
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -73
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# br i1  %op9, label %label10, label %label16
	ld.b $t0, $fp, -81
	bnez $t0, .power_label10
	b .power_label16
.power_label10:
# %op11 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = mul i32  %op11, %op12
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op13, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op15 = sub i32  %op14, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op15, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label5
	b .power_label5
.power_label16:
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# ret i32  %op17
	ld.w $a0, $fp, -108
	b power_ret
power_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getstr
	.type getstr, @function
getstr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.d $a0, $fp, -24
.getstr_label_entry:
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
# %op3 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -56
# store i32  %op3, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .getstr_label5
.getstr_label5:
# %op6 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op7 = icmp ne i32  %op6, 13
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 13
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -73
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -81
# br i1  %op9, label %label20, label %label18
	ld.b $t0, $fp, -81
	bnez $t0, .getstr_label20
	b .getstr_label18
.getstr_label10:
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op14 = getelementptr i32 , i32 * %op13, i32  %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -92
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# store i32  %op11, i32 * %op14
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# store i32  %op16, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# %op17 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -124
# store i32  %op17, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# br label %label5
	b .getstr_label5
.getstr_label18:
# %op19 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op19
	ld.w $a0, $fp, -128
	b getstr_ret
.getstr_label20:
# %op21 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op22 = icmp ne i32  %op21, 10
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 10
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -133
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -141
# br i1  %op24, label %label10, label %label18
	ld.b $t0, $fp, -141
	bnez $t0, .getstr_label10
	b .getstr_label18
getstr_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intpush
	.type intpush, @function
intpush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.intpush_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# store i32  %op3, i32 * @intt
	la.local $t0, intt
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op5
	la.local $t0, ints
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# store i32  %op4, i32 * %op6
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intpush_ret
intpush_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl chapush
	.type chapush, @function
chapush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.chapush_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# store i32  %op3, i32 * @chat
	la.local $t0, chat
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op5
	la.local $t0, chas
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# store i32  %op4, i32 * %op6
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b chapush_ret
chapush_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intpop
	.type intpop, @function
intpop:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.intpop_label_entry:
# %op0 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = sub i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @intt
	la.local $t0, intt
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op3
	la.local $t0, ints
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -40
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op5
	ld.w $a0, $fp, -44
	b intpop_ret
intpop_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl chapop
	.type chapop, @function
chapop:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.chapop_label_entry:
# %op0 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = sub i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @chat
	la.local $t0, chat
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op3
	la.local $t0, chas
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -40
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op5
	ld.w $a0, $fp, -44
	b chapop_ret
chapop_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intadd
	.type intadd, @function
intadd:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
.intadd_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op2
	la.local $t0, ints
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op5 = mul i32  %op4, 10
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op6 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op6
	la.local $t0, ints
	ld.w $t1, $fp, -60
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# store i32  %op5, i32 * %op7
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op8 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op8
	la.local $t0, ints
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op11 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op12 = add i32  %op10, %op11
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op13 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op14 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op13
	la.local $t0, ints
	ld.w $t1, $fp, -104
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# store i32  %op12, i32 * %op14
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intadd_ret
intadd_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl find
	.type find, @function
find:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.find_label_entry:
# %op0 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op1
	la.local $t0, get2
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -32
# store i32  32, i32 * %op2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = add i32  %op4, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op5
	la.local $t0, get2
	ld.w $t1, $fp, -44
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# store i32  %op3, i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op8 = add i32  %op7, 2
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# store i32  %op8, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op10 = icmp eq i32  %op9, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -69
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -77
# br i1  %op12, label %label13, label %label14
	ld.b $t0, $fp, -77
	bnez $t0, .find_label13
	b .find_label14
.find_label13:
# ret i32  0
	addi.w $a0, $zero, 0
	b find_ret
.find_label14:
# ret i32  1
	addi.w $a0, $zero, 1
	b find_ret
find_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	lu12i.w $t0, 0
	ori $t0, $t0, 2128
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.main_label_entry:
# store i32  0, i32 * @intt
	la.local $t0, intt
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * @chat
	la.local $t0, chat
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  0
	la.local $t0, get
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -40
# %op2 = call i32  @getstr(i32 * %op1)
	ld.d $a0, $fp, -40
	bl getstr
	st.w $a0, $fp, -44
# store i32  %op2, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * @i
	la.local $t0, i
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
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label17
	ld.b $t0, $fp, -61
	bnez $t0, .main_label9
	b .main_label17
.main_label9:
# %op10 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op11 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op10
	la.local $t0, get
	ld.w $t1, $fp, -68
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op13 = call i32  @isdigit(i32  %op12)
	ld.w $a0, $fp, -84
	bl isdigit
	st.w $a0, $fp, -88
# %op14 = icmp eq i32  %op13, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -89
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -97
# br i1  %op16, label %label18, label %label26
	ld.b $t0, $fp, -97
	bnez $t0, .main_label18
	b .main_label26
.main_label17:
# br label %label323
	b .main_label323
.main_label18:
# %op19 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op20 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op19
	la.local $t0, get
	ld.w $t1, $fp, -104
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op22 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op22
	la.local $t0, get2
	ld.w $t1, $fp, -120
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# store i32  %op21, i32 * %op23
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op24 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op25 = add i32  %op24, 1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# store i32  %op25, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# br label %label33
	b .main_label33
.main_label26:
# %op27 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op28 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op27
	la.local $t0, get
	ld.w $t1, $fp, -140
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -152
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op30 = icmp eq i32  %op29, 40
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 40
	beq  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -157
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -165
# br i1  %op32, label %label36, label %label37
	ld.b $t0, $fp, -165
	bnez $t0, .main_label36
	b .main_label37
.main_label33:
# %op34 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op35 = add i32  %op34, 1
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# store i32  %op35, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label36:
# call void @chapush(i32  40)
	addi.w $a0, $zero, 40
	bl chapush
# br label %label37
	b .main_label37
.main_label37:
# %op38 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op39 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op38
	la.local $t0, get
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op40 = load i32 , i32 * %op39
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op41 = icmp eq i32  %op40, 94
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -197
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -205
# br i1  %op43, label %label44, label %label45
	ld.b $t0, $fp, -205
	bnez $t0, .main_label44
	b .main_label45
.main_label44:
# call void @chapush(i32  94)
	addi.w $a0, $zero, 94
	bl chapush
# br label %label45
	b .main_label45
.main_label45:
# %op46 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op47 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op46
	la.local $t0, get
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op49 = icmp eq i32  %op48, 41
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 41
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -229
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -229
	st.w $t0, $fp, -236
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -237
# br i1  %op51, label %label52, label %label54
	ld.b $t0, $fp, -237
	bnez $t0, .main_label52
	b .main_label54
.main_label52:
# %op53 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -244
# store i32  %op53, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# br label %label61
	b .main_label61
.main_label54:
# %op55 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op56 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op55
	la.local $t0, get
	ld.w $t1, $fp, -248
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op58 = icmp eq i32  %op57, 43
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -261
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -269
# br i1  %op60, label %label77, label %label78
	ld.b $t0, $fp, -269
	bnez $t0, .main_label77
	b .main_label78
.main_label61:
# %op62 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op63 = icmp ne i32  %op62, 40
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 40
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -277
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -277
	st.w $t0, $fp, -284
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -285
# br i1  %op65, label %label66, label %label76
	ld.b $t0, $fp, -285
	bnez $t0, .main_label66
	b .main_label76
.main_label66:
# %op67 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op68 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op67
	la.local $t0, get2
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  32, i32 * %op68
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op70 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op71 = add i32  %op70, 1
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# %op72 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op71
	la.local $t0, get2
	ld.w $t1, $fp, -316
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# store i32  %op69, i32 * %op72
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -308
	st.w $t1, $t0, 0
# %op73 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op74 = add i32  %op73, 2
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# store i32  %op74, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -336
	st.w $t1, $t0, 0
# %op75 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -340
# store i32  %op75, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# br label %label61
	b .main_label61
.main_label76:
# br label %label54
	b .main_label54
.main_label77:
# br label %label85
	b .main_label85
.main_label78:
# %op79 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op80 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op79
	la.local $t0, get
	ld.w $t1, $fp, -344
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op81 = load i32 , i32 * %op80
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op82 = icmp eq i32  %op81, 45
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -357
# %op83 = zext i1  %op82 to i32 
	ld.b $t0, $fp, -357
	st.w $t0, $fp, -364
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -365
# br i1  %op84, label %label135, label %label136
	ld.b $t0, $fp, -365
	bnez $t0, .main_label135
	b .main_label136
.main_label85:
# %op86 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op87 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op86
	la.local $t0, chas
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op88 = load i32 , i32 * %op87
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op89 = icmp eq i32  %op88, 43
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -389
# %op90 = zext i1  %op89 to i32 
	ld.b $t0, $fp, -389
	st.w $t0, $fp, -396
# %op91 = icmp ne i32  %op90, 0
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -397
# br i1  %op91, label %label92, label %label126
	ld.b $t0, $fp, -397
	bnez $t0, .main_label92
	b .main_label126
.main_label92:
# %op93 = call i32  @find()
	bl find
	st.w $a0, $fp, -404
# %op94 = icmp eq i32  %op93, 0
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -405
# %op95 = zext i1  %op94 to i32 
	ld.b $t0, $fp, -405
	st.w $t0, $fp, -412
# %op96 = icmp ne i32  %op95, 0
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -413
# br i1  %op96, label %label133, label %label134
	ld.b $t0, $fp, -413
	bnez $t0, .main_label133
	b .main_label134
.main_label97:
# call void @chapush(i32  43)
	addi.w $a0, $zero, 43
	bl chapush
# br label %label78
	b .main_label78
.main_label98:
# %op99 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op100 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op99
	la.local $t0, chas
	ld.w $t1, $fp, -420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# %op101 = load i32 , i32 * %op100
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op102 = icmp eq i32  %op101, 94
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -437
# %op103 = zext i1  %op102 to i32 
	ld.b $t0, $fp, -437
	st.w $t0, $fp, -444
# %op104 = icmp ne i32  %op103, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -445
# br i1  %op104, label %label92, label %label97
	ld.b $t0, $fp, -445
	bnez $t0, .main_label92
	b .main_label97
.main_label105:
# %op106 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op107 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op106
	la.local $t0, chas
	ld.w $t1, $fp, -452
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -464
# %op108 = load i32 , i32 * %op107
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op109 = icmp eq i32  %op108, 37
	ld.w $t0, $fp, -468
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -469
# %op110 = zext i1  %op109 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op111 = icmp ne i32  %op110, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -477
# br i1  %op111, label %label92, label %label98
	ld.b $t0, $fp, -477
	bnez $t0, .main_label92
	b .main_label98
.main_label112:
# %op113 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op114 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op113
	la.local $t0, chas
	ld.w $t1, $fp, -484
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -496
# %op115 = load i32 , i32 * %op114
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op116 = icmp eq i32  %op115, 47
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -501
# %op117 = zext i1  %op116 to i32 
	ld.b $t0, $fp, -501
	st.w $t0, $fp, -508
# %op118 = icmp ne i32  %op117, 0
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -509
# br i1  %op118, label %label92, label %label105
	ld.b $t0, $fp, -509
	bnez $t0, .main_label92
	b .main_label105
.main_label119:
# %op120 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op121 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op120
	la.local $t0, chas
	ld.w $t1, $fp, -516
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -528
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op123 = icmp eq i32  %op122, 42
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -533
# %op124 = zext i1  %op123 to i32 
	ld.b $t0, $fp, -533
	st.w $t0, $fp, -540
# %op125 = icmp ne i32  %op124, 0
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -541
# br i1  %op125, label %label92, label %label112
	ld.b $t0, $fp, -541
	bnez $t0, .main_label92
	b .main_label112
.main_label126:
# %op127 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op128 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op127
	la.local $t0, chas
	ld.w $t1, $fp, -548
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -560
# %op129 = load i32 , i32 * %op128
	ld.d $t0, $fp, -560
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op130 = icmp eq i32  %op129, 45
	ld.w $t0, $fp, -564
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -565
# %op131 = zext i1  %op130 to i32 
	ld.b $t0, $fp, -565
	st.w $t0, $fp, -572
# %op132 = icmp ne i32  %op131, 0
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -573
# br i1  %op132, label %label92, label %label119
	ld.b $t0, $fp, -573
	bnez $t0, .main_label92
	b .main_label119
.main_label133:
# br label %label97
	b .main_label97
.main_label134:
# br label %label85
	b .main_label85
.main_label135:
# br label %label143
	b .main_label143
.main_label136:
# %op137 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op138 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op137
	la.local $t0, get
	ld.w $t1, $fp, -580
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -592
# %op139 = load i32 , i32 * %op138
	ld.d $t0, $fp, -592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op140 = icmp eq i32  %op139, 42
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -597
# %op141 = zext i1  %op140 to i32 
	ld.b $t0, $fp, -597
	st.w $t0, $fp, -604
# %op142 = icmp ne i32  %op141, 0
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -605
# br i1  %op142, label %label193, label %label194
	ld.b $t0, $fp, -605
	bnez $t0, .main_label193
	b .main_label194
.main_label143:
# %op144 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op145 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op144
	la.local $t0, chas
	ld.w $t1, $fp, -612
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -624
# %op146 = load i32 , i32 * %op145
	ld.d $t0, $fp, -624
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op147 = icmp eq i32  %op146, 43
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -629
# %op148 = zext i1  %op147 to i32 
	ld.b $t0, $fp, -629
	st.w $t0, $fp, -636
# %op149 = icmp ne i32  %op148, 0
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -637
# br i1  %op149, label %label150, label %label184
	ld.b $t0, $fp, -637
	bnez $t0, .main_label150
	b .main_label184
.main_label150:
# %op151 = call i32  @find()
	bl find
	st.w $a0, $fp, -644
# %op152 = icmp eq i32  %op151, 0
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -645
# %op153 = zext i1  %op152 to i32 
	ld.b $t0, $fp, -645
	st.w $t0, $fp, -652
# %op154 = icmp ne i32  %op153, 0
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -653
# br i1  %op154, label %label191, label %label192
	ld.b $t0, $fp, -653
	bnez $t0, .main_label191
	b .main_label192
.main_label155:
# call void @chapush(i32  45)
	addi.w $a0, $zero, 45
	bl chapush
# br label %label136
	b .main_label136
.main_label156:
# %op157 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op158 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op157
	la.local $t0, chas
	ld.w $t1, $fp, -660
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -672
# %op159 = load i32 , i32 * %op158
	ld.d $t0, $fp, -672
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op160 = icmp eq i32  %op159, 94
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -677
# %op161 = zext i1  %op160 to i32 
	ld.b $t0, $fp, -677
	st.w $t0, $fp, -684
# %op162 = icmp ne i32  %op161, 0
	ld.w $t0, $fp, -684
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -685
# br i1  %op162, label %label150, label %label155
	ld.b $t0, $fp, -685
	bnez $t0, .main_label150
	b .main_label155
.main_label163:
# %op164 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op165 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op164
	la.local $t0, chas
	ld.w $t1, $fp, -692
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -704
# %op166 = load i32 , i32 * %op165
	ld.d $t0, $fp, -704
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op167 = icmp eq i32  %op166, 37
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -709
# %op168 = zext i1  %op167 to i32 
	ld.b $t0, $fp, -709
	st.w $t0, $fp, -716
# %op169 = icmp ne i32  %op168, 0
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -717
# br i1  %op169, label %label150, label %label156
	ld.b $t0, $fp, -717
	bnez $t0, .main_label150
	b .main_label156
.main_label170:
# %op171 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op172 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op171
	la.local $t0, chas
	ld.w $t1, $fp, -724
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -736
# %op173 = load i32 , i32 * %op172
	ld.d $t0, $fp, -736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op174 = icmp eq i32  %op173, 47
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -741
# %op175 = zext i1  %op174 to i32 
	ld.b $t0, $fp, -741
	st.w $t0, $fp, -748
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -749
# br i1  %op176, label %label150, label %label163
	ld.b $t0, $fp, -749
	bnez $t0, .main_label150
	b .main_label163
.main_label177:
# %op178 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -756
# %op179 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op178
	la.local $t0, chas
	ld.w $t1, $fp, -756
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -768
# %op180 = load i32 , i32 * %op179
	ld.d $t0, $fp, -768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op181 = icmp eq i32  %op180, 42
	ld.w $t0, $fp, -772
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -773
# %op182 = zext i1  %op181 to i32 
	ld.b $t0, $fp, -773
	st.w $t0, $fp, -780
# %op183 = icmp ne i32  %op182, 0
	ld.w $t0, $fp, -780
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -781
# br i1  %op183, label %label150, label %label170
	ld.b $t0, $fp, -781
	bnez $t0, .main_label150
	b .main_label170
.main_label184:
# %op185 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# %op186 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op185
	la.local $t0, chas
	ld.w $t1, $fp, -788
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -800
# %op187 = load i32 , i32 * %op186
	ld.d $t0, $fp, -800
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -804
# %op188 = icmp eq i32  %op187, 45
	ld.w $t0, $fp, -804
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -805
# %op189 = zext i1  %op188 to i32 
	ld.b $t0, $fp, -805
	st.w $t0, $fp, -812
# %op190 = icmp ne i32  %op189, 0
	ld.w $t0, $fp, -812
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -813
# br i1  %op190, label %label150, label %label177
	ld.b $t0, $fp, -813
	bnez $t0, .main_label150
	b .main_label177
.main_label191:
# br label %label155
	b .main_label155
.main_label192:
# br label %label143
	b .main_label143
.main_label193:
# br label %label201
	b .main_label201
.main_label194:
# %op195 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op196 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op195
	la.local $t0, get
	ld.w $t1, $fp, -820
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -832
# %op197 = load i32 , i32 * %op196
	ld.d $t0, $fp, -832
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# %op198 = icmp eq i32  %op197, 47
	ld.w $t0, $fp, -836
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label58
	addi.d $t2, $zero, 0
	b false_label58
true_label58:
	addi.d $t2, $zero, 1
false_label58:
	st.b $t2, $fp, -837
# %op199 = zext i1  %op198 to i32 
	ld.b $t0, $fp, -837
	st.w $t0, $fp, -844
# %op200 = icmp ne i32  %op199, 0
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -845
# br i1  %op200, label %label237, label %label238
	ld.b $t0, $fp, -845
	bnez $t0, .main_label237
	b .main_label238
.main_label201:
# %op202 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# %op203 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op202
	la.local $t0, chas
	ld.w $t1, $fp, -852
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -864
# %op204 = load i32 , i32 * %op203
	ld.d $t0, $fp, -864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# %op205 = icmp eq i32  %op204, 42
	ld.w $t0, $fp, -868
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -869
# %op206 = zext i1  %op205 to i32 
	ld.b $t0, $fp, -869
	st.w $t0, $fp, -876
# %op207 = icmp ne i32  %op206, 0
	ld.w $t0, $fp, -876
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -877
# br i1  %op207, label %label208, label %label228
	ld.b $t0, $fp, -877
	bnez $t0, .main_label208
	b .main_label228
.main_label208:
# %op209 = call i32  @find()
	bl find
	st.w $a0, $fp, -884
# %op210 = icmp eq i32  %op209, 0
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -885
# %op211 = zext i1  %op210 to i32 
	ld.b $t0, $fp, -885
	st.w $t0, $fp, -892
# %op212 = icmp ne i32  %op211, 0
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -893
# br i1  %op212, label %label235, label %label236
	ld.b $t0, $fp, -893
	bnez $t0, .main_label235
	b .main_label236
.main_label213:
# call void @chapush(i32  42)
	addi.w $a0, $zero, 42
	bl chapush
# br label %label194
	b .main_label194
.main_label214:
# %op215 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op216 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op215
	la.local $t0, chas
	ld.w $t1, $fp, -900
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -912
# %op217 = load i32 , i32 * %op216
	ld.d $t0, $fp, -912
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -916
# %op218 = icmp eq i32  %op217, 94
	ld.w $t0, $fp, -916
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label64
	addi.d $t2, $zero, 0
	b false_label64
true_label64:
	addi.d $t2, $zero, 1
false_label64:
	st.b $t2, $fp, -917
# %op219 = zext i1  %op218 to i32 
	ld.b $t0, $fp, -917
	st.w $t0, $fp, -924
# %op220 = icmp ne i32  %op219, 0
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -925
# br i1  %op220, label %label208, label %label213
	ld.b $t0, $fp, -925
	bnez $t0, .main_label208
	b .main_label213
.main_label221:
# %op222 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op223 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op222
	la.local $t0, chas
	ld.w $t1, $fp, -932
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -944
# %op224 = load i32 , i32 * %op223
	ld.d $t0, $fp, -944
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -948
# %op225 = icmp eq i32  %op224, 37
	ld.w $t0, $fp, -948
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -949
# %op226 = zext i1  %op225 to i32 
	ld.b $t0, $fp, -949
	st.w $t0, $fp, -956
# %op227 = icmp ne i32  %op226, 0
	ld.w $t0, $fp, -956
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -957
# br i1  %op227, label %label208, label %label214
	ld.b $t0, $fp, -957
	bnez $t0, .main_label208
	b .main_label214
.main_label228:
# %op229 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op230 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op229
	la.local $t0, chas
	ld.w $t1, $fp, -964
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -976
# %op231 = load i32 , i32 * %op230
	ld.d $t0, $fp, -976
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# %op232 = icmp eq i32  %op231, 47
	ld.w $t0, $fp, -980
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -981
# %op233 = zext i1  %op232 to i32 
	ld.b $t0, $fp, -981
	st.w $t0, $fp, -988
# %op234 = icmp ne i32  %op233, 0
	ld.w $t0, $fp, -988
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -989
# br i1  %op234, label %label208, label %label221
	ld.b $t0, $fp, -989
	bnez $t0, .main_label208
	b .main_label221
.main_label235:
# br label %label213
	b .main_label213
.main_label236:
# br label %label201
	b .main_label201
.main_label237:
# br label %label245
	b .main_label245
.main_label238:
# %op239 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op240 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op239
	la.local $t0, get
	ld.w $t1, $fp, -996
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1008
# %op241 = load i32 , i32 * %op240
	ld.d $t0, $fp, -1008
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op242 = icmp eq i32  %op241, 37
	ld.w $t0, $fp, -1012
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label70
	addi.d $t2, $zero, 0
	b false_label70
true_label70:
	addi.d $t2, $zero, 1
false_label70:
	st.b $t2, $fp, -1013
# %op243 = zext i1  %op242 to i32 
	ld.b $t0, $fp, -1013
	st.w $t0, $fp, -1020
# %op244 = icmp ne i32  %op243, 0
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	st.b $t2, $fp, -1021
# br i1  %op244, label %label281, label %label282
	ld.b $t0, $fp, -1021
	bnez $t0, .main_label281
	b .main_label282
.main_label245:
# %op246 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op247 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op246
	la.local $t0, chas
	ld.w $t1, $fp, -1028
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1040
# %op248 = load i32 , i32 * %op247
	ld.d $t0, $fp, -1040
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1044
# %op249 = icmp eq i32  %op248, 42
	ld.w $t0, $fp, -1044
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	st.b $t2, $fp, -1045
# %op250 = zext i1  %op249 to i32 
	ld.b $t0, $fp, -1045
	st.w $t0, $fp, -1052
# %op251 = icmp ne i32  %op250, 0
	ld.w $t0, $fp, -1052
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label73
	addi.d $t2, $zero, 0
	b false_label73
true_label73:
	addi.d $t2, $zero, 1
false_label73:
	st.b $t2, $fp, -1053
# br i1  %op251, label %label252, label %label272
	ld.b $t0, $fp, -1053
	bnez $t0, .main_label252
	b .main_label272
.main_label252:
# %op253 = call i32  @find()
	bl find
	st.w $a0, $fp, -1060
# %op254 = icmp eq i32  %op253, 0
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	st.b $t2, $fp, -1061
# %op255 = zext i1  %op254 to i32 
	ld.b $t0, $fp, -1061
	st.w $t0, $fp, -1068
# %op256 = icmp ne i32  %op255, 0
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	st.b $t2, $fp, -1069
# br i1  %op256, label %label279, label %label280
	ld.b $t0, $fp, -1069
	bnez $t0, .main_label279
	b .main_label280
.main_label257:
# call void @chapush(i32  47)
	addi.w $a0, $zero, 47
	bl chapush
# br label %label238
	b .main_label238
.main_label258:
# %op259 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1076
# %op260 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op259
	la.local $t0, chas
	ld.w $t1, $fp, -1076
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1088
# %op261 = load i32 , i32 * %op260
	ld.d $t0, $fp, -1088
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1092
# %op262 = icmp eq i32  %op261, 94
	ld.w $t0, $fp, -1092
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label76
	addi.d $t2, $zero, 0
	b false_label76
true_label76:
	addi.d $t2, $zero, 1
false_label76:
	st.b $t2, $fp, -1093
# %op263 = zext i1  %op262 to i32 
	ld.b $t0, $fp, -1093
	st.w $t0, $fp, -1100
# %op264 = icmp ne i32  %op263, 0
	ld.w $t0, $fp, -1100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	st.b $t2, $fp, -1101
# br i1  %op264, label %label252, label %label257
	ld.b $t0, $fp, -1101
	bnez $t0, .main_label252
	b .main_label257
.main_label265:
# %op266 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1108
# %op267 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op266
	la.local $t0, chas
	ld.w $t1, $fp, -1108
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1120
# %op268 = load i32 , i32 * %op267
	ld.d $t0, $fp, -1120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1124
# %op269 = icmp eq i32  %op268, 37
	ld.w $t0, $fp, -1124
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	st.b $t2, $fp, -1125
# %op270 = zext i1  %op269 to i32 
	ld.b $t0, $fp, -1125
	st.w $t0, $fp, -1132
# %op271 = icmp ne i32  %op270, 0
	ld.w $t0, $fp, -1132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	st.b $t2, $fp, -1133
# br i1  %op271, label %label252, label %label258
	ld.b $t0, $fp, -1133
	bnez $t0, .main_label252
	b .main_label258
.main_label272:
# %op273 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1140
# %op274 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op273
	la.local $t0, chas
	ld.w $t1, $fp, -1140
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1152
# %op275 = load i32 , i32 * %op274
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1156
# %op276 = icmp eq i32  %op275, 47
	ld.w $t0, $fp, -1156
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	st.b $t2, $fp, -1157
# %op277 = zext i1  %op276 to i32 
	ld.b $t0, $fp, -1157
	st.w $t0, $fp, -1164
# %op278 = icmp ne i32  %op277, 0
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	st.b $t2, $fp, -1165
# br i1  %op278, label %label252, label %label265
	ld.b $t0, $fp, -1165
	bnez $t0, .main_label252
	b .main_label265
.main_label279:
# br label %label257
	b .main_label257
.main_label280:
# br label %label245
	b .main_label245
.main_label281:
# br label %label287
	b .main_label287
.main_label282:
# %op283 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1172
# %op284 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op283
	la.local $t0, get2
	ld.w $t1, $fp, -1172
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1184
# store i32  32, i32 * %op284
	ld.d $t0, $fp, -1184
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op285 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op286 = add i32  %op285, 1
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1192
# store i32  %op286, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1192
	st.w $t1, $t0, 0
# br label %label33
	b .main_label33
.main_label287:
# %op288 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# %op289 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op288
	la.local $t0, chas
	ld.w $t1, $fp, -1196
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1208
# %op290 = load i32 , i32 * %op289
	ld.d $t0, $fp, -1208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1212
# %op291 = icmp eq i32  %op290, 42
	ld.w $t0, $fp, -1212
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	st.b $t2, $fp, -1213
# %op292 = zext i1  %op291 to i32 
	ld.b $t0, $fp, -1213
	st.w $t0, $fp, -1220
# %op293 = icmp ne i32  %op292, 0
	ld.w $t0, $fp, -1220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label83
	addi.d $t2, $zero, 0
	b false_label83
true_label83:
	addi.d $t2, $zero, 1
false_label83:
	st.b $t2, $fp, -1221
# br i1  %op293, label %label294, label %label314
	ld.b $t0, $fp, -1221
	bnez $t0, .main_label294
	b .main_label314
.main_label294:
# %op295 = call i32  @find()
	bl find
	st.w $a0, $fp, -1228
# %op296 = icmp eq i32  %op295, 0
	ld.w $t0, $fp, -1228
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	st.b $t2, $fp, -1229
# %op297 = zext i1  %op296 to i32 
	ld.b $t0, $fp, -1229
	st.w $t0, $fp, -1236
# %op298 = icmp ne i32  %op297, 0
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	st.b $t2, $fp, -1237
# br i1  %op298, label %label321, label %label322
	ld.b $t0, $fp, -1237
	bnez $t0, .main_label321
	b .main_label322
.main_label299:
# call void @chapush(i32  37)
	addi.w $a0, $zero, 37
	bl chapush
# br label %label282
	b .main_label282
.main_label300:
# %op301 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1244
# %op302 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op301
	la.local $t0, chas
	ld.w $t1, $fp, -1244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1256
# %op303 = load i32 , i32 * %op302
	ld.d $t0, $fp, -1256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1260
# %op304 = icmp eq i32  %op303, 94
	ld.w $t0, $fp, -1260
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	st.b $t2, $fp, -1261
# %op305 = zext i1  %op304 to i32 
	ld.b $t0, $fp, -1261
	st.w $t0, $fp, -1268
# %op306 = icmp ne i32  %op305, 0
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	st.b $t2, $fp, -1269
# br i1  %op306, label %label294, label %label299
	ld.b $t0, $fp, -1269
	bnez $t0, .main_label294
	b .main_label299
.main_label307:
# %op308 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# %op309 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op308
	la.local $t0, chas
	ld.w $t1, $fp, -1276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1288
# %op310 = load i32 , i32 * %op309
	ld.d $t0, $fp, -1288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1292
# %op311 = icmp eq i32  %op310, 37
	ld.w $t0, $fp, -1292
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	st.b $t2, $fp, -1293
# %op312 = zext i1  %op311 to i32 
	ld.b $t0, $fp, -1293
	st.w $t0, $fp, -1300
# %op313 = icmp ne i32  %op312, 0
	ld.w $t0, $fp, -1300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label89
	addi.d $t2, $zero, 0
	b false_label89
true_label89:
	addi.d $t2, $zero, 1
false_label89:
	st.b $t2, $fp, -1301
# br i1  %op313, label %label294, label %label300
	ld.b $t0, $fp, -1301
	bnez $t0, .main_label294
	b .main_label300
.main_label314:
# %op315 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1308
# %op316 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op315
	la.local $t0, chas
	ld.w $t1, $fp, -1308
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1320
# %op317 = load i32 , i32 * %op316
	ld.d $t0, $fp, -1320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1324
# %op318 = icmp eq i32  %op317, 47
	ld.w $t0, $fp, -1324
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	st.b $t2, $fp, -1325
# %op319 = zext i1  %op318 to i32 
	ld.b $t0, $fp, -1325
	st.w $t0, $fp, -1332
# %op320 = icmp ne i32  %op319, 0
	ld.w $t0, $fp, -1332
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	st.b $t2, $fp, -1333
# br i1  %op320, label %label294, label %label307
	ld.b $t0, $fp, -1333
	bnez $t0, .main_label294
	b .main_label307
.main_label321:
# br label %label299
	b .main_label299
.main_label322:
# br label %label287
	b .main_label287
.main_label323:
# %op324 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1340
# %op325 = icmp sgt i32  %op324, 0
	ld.w $t0, $fp, -1340
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1341
# %op326 = zext i1  %op325 to i32 
	ld.b $t0, $fp, -1341
	st.w $t0, $fp, -1348
# %op327 = icmp ne i32  %op326, 0
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	st.b $t2, $fp, -1349
# br i1  %op327, label %label328, label %label339
	ld.b $t0, $fp, -1349
	bnez $t0, .main_label328
	b .main_label339
.main_label328:
# %op329 = alloca i32 
	addi.d $t1, $fp, -1364
	st.d $t1, $fp, -1360
# %op330 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -1368
# store i32  %op330, i32 * %op329
	ld.d $t0, $fp, -1360
	ld.w $t1, $fp, -1368
	st.w $t1, $t0, 0
# %op331 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1372
# %op332 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op331
	la.local $t0, get2
	ld.w $t1, $fp, -1372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1384
# store i32  32, i32 * %op332
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op333 = load i32 , i32 * %op329
	ld.d $t0, $fp, -1360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1388
# %op334 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1392
# %op335 = add i32  %op334, 1
	ld.w $t0, $fp, -1392
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1396
# %op336 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op335
	la.local $t0, get2
	ld.w $t1, $fp, -1396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1408
# store i32  %op333, i32 * %op336
	ld.d $t0, $fp, -1408
	ld.w $t1, $fp, -1388
	st.w $t1, $t0, 0
# %op337 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1412
# %op338 = add i32  %op337, 2
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1416
# store i32  %op338, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1416
	st.w $t1, $t0, 0
# br label %label323
	b .main_label323
.main_label339:
# %op340 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op341 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op340
	la.local $t0, get2
	ld.w $t1, $fp, -1420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1432
# store i32  64, i32 * %op341
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 64
	st.w $t1, $t0, 0
# store i32  1, i32 * @i
	la.local $t0, i
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label342
	b .main_label342
.main_label342:
# %op343 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op344 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op343
	la.local $t0, get2
	ld.w $t1, $fp, -1436
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1448
# %op345 = load i32 , i32 * %op344
	ld.d $t0, $fp, -1448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1452
# %op346 = icmp ne i32  %op345, 64
	ld.w $t0, $fp, -1452
	addi.w $t1, $zero, 64
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	st.b $t2, $fp, -1453
# %op347 = zext i1  %op346 to i32 
	ld.b $t0, $fp, -1453
	st.w $t0, $fp, -1460
# %op348 = icmp ne i32  %op347, 0
	ld.w $t0, $fp, -1460
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label95
	addi.d $t2, $zero, 0
	b false_label95
true_label95:
	addi.d $t2, $zero, 1
false_label95:
	st.b $t2, $fp, -1461
# br i1  %op348, label %label349, label %label356
	ld.b $t0, $fp, -1461
	bnez $t0, .main_label349
	b .main_label356
.main_label349:
# %op350 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1468
# %op351 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op350
	la.local $t0, get2
	ld.w $t1, $fp, -1468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1480
# %op352 = load i32 , i32 * %op351
	ld.d $t0, $fp, -1480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op353 = icmp eq i32  %op352, 43
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	st.b $t2, $fp, -1485
# %op354 = zext i1  %op353 to i32 
	ld.b $t0, $fp, -1485
	st.w $t0, $fp, -1492
# %op355 = icmp ne i32  %op354, 0
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	st.b $t2, $fp, -1493
# br i1  %op355, label %label359, label %label409
	ld.b $t0, $fp, -1493
	bnez $t0, .main_label359
	b .main_label409
.main_label356:
# %op357 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  1
	la.local $t0, ints
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1504
# %op358 = load i32 , i32 * %op357
	ld.d $t0, $fp, -1504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1508
# call void @putint(i32  %op358)
	ld.w $a0, $fp, -1508
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label359:
# %op360 = alloca i32 
	addi.d $t1, $fp, -1524
	st.d $t1, $fp, -1520
# %op361 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1528
# store i32  %op361, i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $fp, -1528
	st.w $t1, $t0, 0
# %op362 = alloca i32 
	addi.d $t1, $fp, -1540
	st.d $t1, $fp, -1536
# %op363 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1544
# store i32  %op363, i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $fp, -1544
	st.w $t1, $t0, 0
# %op364 = alloca i32 
	addi.d $t1, $fp, -1556
	st.d $t1, $fp, -1552
# %op365 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1560
# %op366 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op365
	la.local $t0, get2
	ld.w $t1, $fp, -1560
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1568
# %op367 = load i32 , i32 * %op366
	ld.d $t0, $fp, -1568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1572
# %op368 = icmp eq i32  %op367, 43
	ld.w $t0, $fp, -1572
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	st.b $t2, $fp, -1573
# %op369 = zext i1  %op368 to i32 
	ld.b $t0, $fp, -1573
	st.w $t0, $fp, -1580
# %op370 = icmp ne i32  %op369, 0
	ld.w $t0, $fp, -1580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label99
	addi.d $t2, $zero, 0
	b false_label99
true_label99:
	addi.d $t2, $zero, 1
false_label99:
	st.b $t2, $fp, -1581
# br i1  %op370, label %label416, label %label420
	ld.b $t0, $fp, -1581
	bnez $t0, .main_label416
	b .main_label420
.main_label371:
# %op372 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1588
# %op373 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op372
	la.local $t0, get2
	ld.w $t1, $fp, -1588
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1600
# %op374 = load i32 , i32 * %op373
	ld.d $t0, $fp, -1600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1604
# %op375 = icmp ne i32  %op374, 32
	ld.w $t0, $fp, -1604
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	st.b $t2, $fp, -1605
# %op376 = zext i1  %op375 to i32 
	ld.b $t0, $fp, -1605
	st.w $t0, $fp, -1612
# %op377 = icmp ne i32  %op376, 0
	ld.w $t0, $fp, -1612
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label101
	addi.d $t2, $zero, 0
	b false_label101
true_label101:
	addi.d $t2, $zero, 1
false_label101:
	st.b $t2, $fp, -1613
# br i1  %op377, label %label477, label %label482
	ld.b $t0, $fp, -1613
	bnez $t0, .main_label477
	b .main_label482
.main_label378:
# %op379 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op380 = add i32  %op379, 1
	ld.w $t0, $fp, -1620
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1624
# store i32  %op380, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -1624
	st.w $t1, $t0, 0
# br label %label342
	b .main_label342
.main_label381:
# %op382 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1628
# %op383 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op382
	la.local $t0, get2
	ld.w $t1, $fp, -1628
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1640
# %op384 = load i32 , i32 * %op383
	ld.d $t0, $fp, -1640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1644
# %op385 = icmp eq i32  %op384, 94
	ld.w $t0, $fp, -1644
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	st.b $t2, $fp, -1645
# %op386 = zext i1  %op385 to i32 
	ld.b $t0, $fp, -1645
	st.w $t0, $fp, -1652
# %op387 = icmp ne i32  %op386, 0
	ld.w $t0, $fp, -1652
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label103
	addi.d $t2, $zero, 0
	b false_label103
true_label103:
	addi.d $t2, $zero, 1
false_label103:
	st.b $t2, $fp, -1653
# br i1  %op387, label %label359, label %label371
	ld.b $t0, $fp, -1653
	bnez $t0, .main_label359
	b .main_label371
.main_label388:
# %op389 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1660
# %op390 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op389
	la.local $t0, get2
	ld.w $t1, $fp, -1660
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1672
# %op391 = load i32 , i32 * %op390
	ld.d $t0, $fp, -1672
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1676
# %op392 = icmp eq i32  %op391, 37
	ld.w $t0, $fp, -1676
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	st.b $t2, $fp, -1677
# %op393 = zext i1  %op392 to i32 
	ld.b $t0, $fp, -1677
	st.w $t0, $fp, -1684
# %op394 = icmp ne i32  %op393, 0
	ld.w $t0, $fp, -1684
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label105
	addi.d $t2, $zero, 0
	b false_label105
true_label105:
	addi.d $t2, $zero, 1
false_label105:
	st.b $t2, $fp, -1685
# br i1  %op394, label %label359, label %label381
	ld.b $t0, $fp, -1685
	bnez $t0, .main_label359
	b .main_label381
.main_label395:
# %op396 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1692
# %op397 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op396
	la.local $t0, get2
	ld.w $t1, $fp, -1692
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1704
# %op398 = load i32 , i32 * %op397
	ld.d $t0, $fp, -1704
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# %op399 = icmp eq i32  %op398, 47
	ld.w $t0, $fp, -1708
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	st.b $t2, $fp, -1709
# %op400 = zext i1  %op399 to i32 
	ld.b $t0, $fp, -1709
	st.w $t0, $fp, -1716
# %op401 = icmp ne i32  %op400, 0
	ld.w $t0, $fp, -1716
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label107
	addi.d $t2, $zero, 0
	b false_label107
true_label107:
	addi.d $t2, $zero, 1
false_label107:
	st.b $t2, $fp, -1717
# br i1  %op401, label %label359, label %label388
	ld.b $t0, $fp, -1717
	bnez $t0, .main_label359
	b .main_label388
.main_label402:
# %op403 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op404 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op403
	la.local $t0, get2
	ld.w $t1, $fp, -1724
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1736
# %op405 = load i32 , i32 * %op404
	ld.d $t0, $fp, -1736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op406 = icmp eq i32  %op405, 42
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	st.b $t2, $fp, -1741
# %op407 = zext i1  %op406 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op408 = icmp ne i32  %op407, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label109
	addi.d $t2, $zero, 0
	b false_label109
true_label109:
	addi.d $t2, $zero, 1
false_label109:
	st.b $t2, $fp, -1749
# br i1  %op408, label %label359, label %label395
	ld.b $t0, $fp, -1749
	bnez $t0, .main_label359
	b .main_label395
.main_label409:
# %op410 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1756
# %op411 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op410
	la.local $t0, get2
	ld.w $t1, $fp, -1756
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1768
# %op412 = load i32 , i32 * %op411
	ld.d $t0, $fp, -1768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# %op413 = icmp eq i32  %op412, 45
	ld.w $t0, $fp, -1772
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	st.b $t2, $fp, -1773
# %op414 = zext i1  %op413 to i32 
	ld.b $t0, $fp, -1773
	st.w $t0, $fp, -1780
# %op415 = icmp ne i32  %op414, 0
	ld.w $t0, $fp, -1780
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label111
	addi.d $t2, $zero, 0
	b false_label111
true_label111:
	addi.d $t2, $zero, 1
false_label111:
	st.b $t2, $fp, -1781
# br i1  %op415, label %label359, label %label402
	ld.b $t0, $fp, -1781
	bnez $t0, .main_label359
	b .main_label402
.main_label416:
# %op417 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op418 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1792
# %op419 = add i32  %op417, %op418
	ld.w $t0, $fp, -1788
	ld.w $t1, $fp, -1792
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1796
# store i32  %op419, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1796
	st.w $t1, $t0, 0
# br label %label420
	b .main_label420
.main_label420:
# %op421 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1800
# %op422 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op421
	la.local $t0, get2
	ld.w $t1, $fp, -1800
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1808
# %op423 = load i32 , i32 * %op422
	ld.d $t0, $fp, -1808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1812
# %op424 = icmp eq i32  %op423, 45
	ld.w $t0, $fp, -1812
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	st.b $t2, $fp, -1813
# %op425 = zext i1  %op424 to i32 
	ld.b $t0, $fp, -1813
	st.w $t0, $fp, -1820
# %op426 = icmp ne i32  %op425, 0
	ld.w $t0, $fp, -1820
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label113
	addi.d $t2, $zero, 0
	b false_label113
true_label113:
	addi.d $t2, $zero, 1
false_label113:
	st.b $t2, $fp, -1821
# br i1  %op426, label %label427, label %label431
	ld.b $t0, $fp, -1821
	bnez $t0, .main_label427
	b .main_label431
.main_label427:
# %op428 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op429 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1832
# %op430 = sub i32  %op428, %op429
	ld.w $t0, $fp, -1828
	ld.w $t1, $fp, -1832
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1836
# store i32  %op430, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1836
	st.w $t1, $t0, 0
# br label %label431
	b .main_label431
.main_label431:
# %op432 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1840
# %op433 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op432
	la.local $t0, get2
	ld.w $t1, $fp, -1840
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1848
# %op434 = load i32 , i32 * %op433
	ld.d $t0, $fp, -1848
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# %op435 = icmp eq i32  %op434, 42
	ld.w $t0, $fp, -1852
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	st.b $t2, $fp, -1853
# %op436 = zext i1  %op435 to i32 
	ld.b $t0, $fp, -1853
	st.w $t0, $fp, -1860
# %op437 = icmp ne i32  %op436, 0
	ld.w $t0, $fp, -1860
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	st.b $t2, $fp, -1861
# br i1  %op437, label %label438, label %label442
	ld.b $t0, $fp, -1861
	bnez $t0, .main_label438
	b .main_label442
.main_label438:
# %op439 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op440 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1872
# %op441 = mul i32  %op439, %op440
	ld.w $t0, $fp, -1868
	ld.w $t1, $fp, -1872
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1876
# store i32  %op441, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1876
	st.w $t1, $t0, 0
# br label %label442
	b .main_label442
.main_label442:
# %op443 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1880
# %op444 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op443
	la.local $t0, get2
	ld.w $t1, $fp, -1880
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1888
# %op445 = load i32 , i32 * %op444
	ld.d $t0, $fp, -1888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1892
# %op446 = icmp eq i32  %op445, 47
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	st.b $t2, $fp, -1893
# %op447 = zext i1  %op446 to i32 
	ld.b $t0, $fp, -1893
	st.w $t0, $fp, -1900
# %op448 = icmp ne i32  %op447, 0
	ld.w $t0, $fp, -1900
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	st.b $t2, $fp, -1901
# br i1  %op448, label %label449, label %label453
	ld.b $t0, $fp, -1901
	bnez $t0, .main_label449
	b .main_label453
.main_label449:
# %op450 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op451 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1912
# %op452 = sdiv i32  %op450, %op451
	ld.w $t0, $fp, -1908
	ld.w $t1, $fp, -1912
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1916
# store i32  %op452, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1916
	st.w $t1, $t0, 0
# br label %label453
	b .main_label453
.main_label453:
# %op454 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1920
# %op455 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op454
	la.local $t0, get2
	ld.w $t1, $fp, -1920
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1928
# %op456 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op457 = icmp eq i32  %op456, 37
	ld.w $t0, $fp, -1932
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	st.b $t2, $fp, -1933
# %op458 = zext i1  %op457 to i32 
	ld.b $t0, $fp, -1933
	st.w $t0, $fp, -1940
# %op459 = icmp ne i32  %op458, 0
	ld.w $t0, $fp, -1940
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label119
	addi.d $t2, $zero, 0
	b false_label119
true_label119:
	addi.d $t2, $zero, 1
false_label119:
	st.b $t2, $fp, -1941
# br i1  %op459, label %label460, label %label464
	ld.b $t0, $fp, -1941
	bnez $t0, .main_label460
	b .main_label464
.main_label460:
# %op461 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1948
# %op462 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1952
# %op463 = srem i32  %op461, %op462
	ld.w $t0, $fp, -1948
	ld.w $t1, $fp, -1952
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1956
# store i32  %op463, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1956
	st.w $t1, $t0, 0
# br label %label464
	b .main_label464
.main_label464:
# %op465 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1960
# %op466 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op465
	la.local $t0, get2
	ld.w $t1, $fp, -1960
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1968
# %op467 = load i32 , i32 * %op466
	ld.d $t0, $fp, -1968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op468 = icmp eq i32  %op467, 94
	ld.w $t0, $fp, -1972
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	st.b $t2, $fp, -1973
# %op469 = zext i1  %op468 to i32 
	ld.b $t0, $fp, -1973
	st.w $t0, $fp, -1980
# %op470 = icmp ne i32  %op469, 0
	ld.w $t0, $fp, -1980
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	st.b $t2, $fp, -1981
# br i1  %op470, label %label471, label %label475
	ld.b $t0, $fp, -1981
	bnez $t0, .main_label471
	b .main_label475
.main_label471:
# %op472 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1988
# %op473 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1992
# %op474 = call i32  @power(i32  %op472, i32  %op473)
	ld.w $a0, $fp, -1988
	ld.w $a1, $fp, -1992
	bl power
	st.w $a0, $fp, -1996
# store i32  %op474, i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $fp, -1996
	st.w $t1, $t0, 0
# br label %label475
	b .main_label475
.main_label475:
# %op476 = load i32 , i32 * %op364
	ld.d $t0, $fp, -1552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2000
# call void @intpush(i32  %op476)
	ld.w $a0, $fp, -2000
	bl intpush
# br label %label378
	b .main_label378
.main_label477:
# %op478 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# %op479 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op478
	la.local $t0, get2
	ld.w $t1, $fp, -2004
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2016
# %op480 = load i32 , i32 * %op479
	ld.d $t0, $fp, -2016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op481 = sub i32  %op480, 48
	ld.w $t0, $fp, -2020
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2024
# call void @intpush(i32  %op481)
	ld.w $a0, $fp, -2024
	bl intpush
# store i32  1, i32 * @ii
	la.local $t0, ii
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label483
	b .main_label483
.main_label482:
# br label %label378
	b .main_label378
.main_label483:
# %op484 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2028
# %op485 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2032
# %op486 = add i32  %op484, %op485
	ld.w $t0, $fp, -2028
	ld.w $t1, $fp, -2032
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2036
# %op487 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op486
	la.local $t0, get2
	ld.w $t1, $fp, -2036
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2048
# %op488 = load i32 , i32 * %op487
	ld.d $t0, $fp, -2048
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op489 = icmp ne i32  %op488, 32
	lu12i.w $t0, -1
	ori $t0, $t0, 2044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 2043
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op490 = zext i1  %op489 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2043
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op491 = icmp ne i32  %op490, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2036
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
	ori $t8, $t8, 2035
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op491, label %label492, label %label501
	lu12i.w $t0, -1
	ori $t0, $t0, 2035
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .main_label492
	b .main_label501
.main_label492:
# %op493 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op494 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op495 = add i32  %op493, %op494
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2024
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op496 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op495
	la.local $t0, get2
	lu12i.w $t1, -1
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op497 = load i32 , i32 * %op496
	lu12i.w $t0, -1
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op498 = sub i32  %op497, 48
	lu12i.w $t0, -1
	ori $t0, $t0, 2004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# call void @intadd(i32  %op498)
	lu12i.w $a0, -1
	ori $a0, $a0, 2000
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl intadd
# %op499 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op500 = add i32  %op499, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op500, i32 * @ii
	la.local $t0, ii
	lu12i.w $t1, -1
	ori $t1, $t1, 1992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label483
	b .main_label483
.main_label501:
# %op502 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op503 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op504 = add i32  %op502, %op503
	lu12i.w $t0, -1
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op505 = sub i32  %op504, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op505, i32 * @i
	la.local $t0, i
	lu12i.w $t1, -1
	ori $t1, $t1, 1976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label482
	b .main_label482
main_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 2128
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
