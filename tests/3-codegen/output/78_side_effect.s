# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word -1
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 1
	.text
	.globl inc_a
	.type inc_a, @function
inc_a:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.inc_a_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# store i32  %op1, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# store i32  %op3, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# store i32  %op4, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# ret i32  %op5
	ld.w $a0, $fp, -48
	b inc_a_ret
inc_a_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# br label %label1
	b .main_label1
.main_label1:
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op3 = icmp sge i32  %op2, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -33
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -41
	bnez $t0, .main_label6
	b .main_label9
.main_label6:
# %op7 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -48
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -49
# br i1  %op8, label %label24, label %label16
	ld.b $t0, $fp, -49
	bnez $t0, .main_label24
	b .main_label16
.main_label9:
# %op10 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op10)
	ld.w $a0, $fp, -56
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op11 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op11)
	ld.w $a0, $fp, -60
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op12 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# ret i32  %op12
	ld.w $a0, $fp, -64
	b main_ret
.main_label13:
# %op14 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -68
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op15 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# call void @putint(i32  %op15)
	ld.w $a0, $fp, -72
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label16
	b .main_label16
.main_label16:
# %op17 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -76
# %op18 = icmp slt i32  %op17, 14
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 14
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -85
# br i1  %op20, label %label27, label %label36
	ld.b $t0, $fp, -85
	bnez $t0, .main_label27
	b .main_label36
.main_label21:
# %op22 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -92
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -93
# br i1  %op23, label %label13, label %label16
	ld.b $t0, $fp, -93
	bnez $t0, .main_label13
	b .main_label16
.main_label24:
# %op25 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -100
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -101
# br i1  %op26, label %label21, label %label16
	ld.b $t0, $fp, -101
	bnez $t0, .main_label21
	b .main_label16
.main_label27:
# %op28 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# call void @putint(i32  %op28)
	ld.w $a0, $fp, -108
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op29 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op30 = mul i32  %op29, 2
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# store i32  %op30, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# br label %label33
	b .main_label33
.main_label31:
# %op32 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -120
# br label %label33
	b .main_label33
.main_label33:
# %op34 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op35 = sub i32  %op34, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# store i32  %op35, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# br label %label1
	b .main_label1
.main_label36:
# %op37 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -132
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -133
# br i1  %op38, label %label39, label %label31
	ld.b $t0, $fp, -133
	bnez $t0, .main_label39
	b .main_label31
.main_label39:
# %op40 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -140
# %op41 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -144
# %op42 = sub i32  %op40, %op41
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op43 = add i32  %op42, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -153
# br i1  %op44, label %label27, label %label31
	ld.b $t0, $fp, -153
	bnez $t0, .main_label27
	b .main_label31
main_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
