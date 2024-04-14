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
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.isdigit_label_entry:
# %op1 = icmp sge i32  %arg0, 48
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -29
# br i1  %op3, label %label6, label %label5
	ld.b $t0, $fp, -29
	bnez $t0, .isdigit_label6
	b .isdigit_label5
.isdigit_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b isdigit_ret
.isdigit_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b isdigit_ret
.isdigit_label6:
# %op7 = icmp sle i32  %arg0, 57
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -30
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -30
	st.w $t0, $fp, -36
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -37
# br i1  %op9, label %label4, label %label5
	ld.b $t0, $fp, -37
	bnez $t0, .isdigit_label4
	b .isdigit_label5
isdigit_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl power
	.type power, @function
power:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.power_label_entry:
# br label %label2
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -28
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -32
	b .power_label2
.power_label2:
# %op3 = phi i32  [ 1, %label_entry ], [ %op9, %label8 ]
# %op4 = phi i32  [ %arg1, %label_entry ], [ %op10, %label8 ]
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -33
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -41
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -41
	bnez $t0, .power_label8
	b .power_label11
.power_label8:
# %op9 = mul i32  %op3, %arg0
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -20
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op10 = sub i32  %op4, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label2
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -28
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -32
	b .power_label2
.power_label11:
# ret i32  %op3
	ld.w $a0, $fp, -28
	b power_ret
power_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getstr
	.type getstr, @function
getstr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.d $a0, $fp, -24
.getstr_label_entry:
# %op1 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -28
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -36
	b .getstr_label2
.getstr_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op10, %label8 ]
# %op4 = phi i32  [ %op1, %label_entry ], [ %op11, %label8 ]
# %op5 = icmp ne i32  %op4, 13
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 13
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -37
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -45
# br i1  %op7, label %label13, label %label12
	ld.b $t0, $fp, -45
	bnez $t0, .getstr_label13
	b .getstr_label12
.getstr_label8:
# %op9 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# store i32  %op4, i32 * %op9
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op10 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op11 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -64
# br label %label2
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -32
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -36
	b .getstr_label2
.getstr_label12:
# ret i32  %op3
	ld.w $a0, $fp, -32
	b getstr_ret
.getstr_label13:
# %op14 = icmp ne i32  %op4, 10
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 10
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -65
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -73
# br i1  %op16, label %label8, label %label12
	ld.b $t0, $fp, -73
	bnez $t0, .getstr_label8
	b .getstr_label12
getstr_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intpush
	.type intpush, @function
intpush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.intpush_label_entry:
# %op1 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = add i32  %op1, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# store i32  %op2, i32 * @intt
	la.local $t0, intt
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op3
	la.local $t0, ints
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -40
# store i32  %arg0, i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intpush_ret
intpush_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl chapush
	.type chapush, @function
chapush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.chapush_label_entry:
# %op1 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = add i32  %op1, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# store i32  %op2, i32 * @chat
	la.local $t0, chat
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op3
	la.local $t0, chas
	ld.w $t1, $fp, -32
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -40
# store i32  %arg0, i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b chapush_ret
chapush_ret:
	addi.d $sp, $sp, 48
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
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
.intadd_label_entry:
# %op1 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op1
	la.local $t0, ints
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -32
# %op3 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = mul i32  %op3, 10
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op5 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op5
	la.local $t0, ints
	ld.w $t1, $fp, -44
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# store i32  %op4, i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op8 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op7
	la.local $t0, ints
	ld.w $t1, $fp, -60
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op10 = add i32  %op9, %arg0
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op11 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op11
	la.local $t0, ints
	ld.w $t1, $fp, -84
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# store i32  %op10, i32 * %op12
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intadd_ret
intadd_ret:
	addi.d $sp, $sp, 96
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
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -2032
.main_label_entry:
# store i32  0, i32 * @intt
	la.local $t0, intt
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * @chat
	la.local $t0, chat
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op0 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  0
	la.local $t0, get
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -24
# %op1 = call i32  @getstr(i32 * %op0)
	ld.d $a0, $fp, -24
	bl getstr
	st.w $a0, $fp, -28
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = icmp slt i32  %op3, %op1
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -28
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -41
# br i1  %op6, label %label7, label %label15
	ld.b $t0, $fp, -41
	bnez $t0, .main_label7
	b .main_label15
.main_label7:
# %op8 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op8
	la.local $t0, get
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = call i32  @isdigit(i32  %op10)
	ld.w $a0, $fp, -60
	bl isdigit
	st.w $a0, $fp, -64
# %op12 = icmp eq i32  %op11, 1
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -65
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -73
# br i1  %op14, label %label16, label %label24
	ld.b $t0, $fp, -73
	bnez $t0, .main_label16
	b .main_label24
.main_label15:
# br label %label321
	b .main_label321
.main_label16:
# %op17 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op18 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op17
	la.local $t0, get
	ld.w $t1, $fp, -80
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op21 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op20
	la.local $t0, get2
	ld.w $t1, $fp, -96
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# store i32  %op19, i32 * %op21
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op22 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op23 = add i32  %op22, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# store i32  %op23, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# br label %label31
	b .main_label31
.main_label24:
# %op25 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op26 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op25
	la.local $t0, get
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op28 = icmp eq i32  %op27, 40
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 40
	beq  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -133
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -141
# br i1  %op30, label %label34, label %label35
	ld.b $t0, $fp, -141
	bnez $t0, .main_label34
	b .main_label35
.main_label31:
# %op32 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op33, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label34:
# call void @chapush(i32  40)
	addi.w $a0, $zero, 40
	bl chapush
# br label %label35
	b .main_label35
.main_label35:
# %op36 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op37 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op36
	la.local $t0, get
	ld.w $t1, $fp, -156
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -168
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op39 = icmp eq i32  %op38, 94
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -173
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -181
# br i1  %op41, label %label42, label %label43
	ld.b $t0, $fp, -181
	bnez $t0, .main_label42
	b .main_label43
.main_label42:
# call void @chapush(i32  94)
	addi.w $a0, $zero, 94
	bl chapush
# br label %label43
	b .main_label43
.main_label43:
# %op44 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op45 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op44
	la.local $t0, get
	ld.w $t1, $fp, -188
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -200
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op47 = icmp eq i32  %op46, 41
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 41
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -205
# %op48 = zext i1  %op47 to i32 
	ld.b $t0, $fp, -205
	st.w $t0, $fp, -212
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -213
# br i1  %op49, label %label50, label %label52
	ld.b $t0, $fp, -213
	bnez $t0, .main_label50
	b .main_label52
.main_label50:
# %op51 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -220
# store i32  %op51, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -220
	st.w $t1, $t0, 0
# br label %label59
	b .main_label59
.main_label52:
# %op53 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op54 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op53
	la.local $t0, get
	ld.w $t1, $fp, -224
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op56 = icmp eq i32  %op55, 43
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -237
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -237
	st.w $t0, $fp, -244
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -245
# br i1  %op58, label %label75, label %label76
	ld.b $t0, $fp, -245
	bnez $t0, .main_label75
	b .main_label76
.main_label59:
# %op60 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op61 = icmp ne i32  %op60, 40
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 40
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -253
# %op62 = zext i1  %op61 to i32 
	ld.b $t0, $fp, -253
	st.w $t0, $fp, -260
# %op63 = icmp ne i32  %op62, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -261
# br i1  %op63, label %label64, label %label74
	ld.b $t0, $fp, -261
	bnez $t0, .main_label64
	b .main_label74
.main_label64:
# %op65 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op66 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op65
	la.local $t0, get2
	ld.w $t1, $fp, -268
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# store i32  32, i32 * %op66
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op68 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op69 = add i32  %op68, 1
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op70 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op69
	la.local $t0, get2
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  %op67, i32 * %op70
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# %op71 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op72 = add i32  %op71, 2
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op72, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# %op73 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -316
# store i32  %op73, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# br label %label59
	b .main_label59
.main_label74:
# br label %label52
	b .main_label52
.main_label75:
# br label %label83
	b .main_label83
.main_label76:
# %op77 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op78 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op77
	la.local $t0, get
	ld.w $t1, $fp, -320
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op80 = icmp eq i32  %op79, 45
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -333
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -341
# br i1  %op82, label %label133, label %label134
	ld.b $t0, $fp, -341
	bnez $t0, .main_label133
	b .main_label134
.main_label83:
# %op84 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op85 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op84
	la.local $t0, chas
	ld.w $t1, $fp, -348
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op87 = icmp eq i32  %op86, 43
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -365
# %op88 = zext i1  %op87 to i32 
	ld.b $t0, $fp, -365
	st.w $t0, $fp, -372
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -373
# br i1  %op89, label %label90, label %label124
	ld.b $t0, $fp, -373
	bnez $t0, .main_label90
	b .main_label124
.main_label90:
# %op91 = call i32  @find()
	bl find
	st.w $a0, $fp, -380
# %op92 = icmp eq i32  %op91, 0
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -381
# %op93 = zext i1  %op92 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op94 = icmp ne i32  %op93, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -389
# br i1  %op94, label %label131, label %label132
	ld.b $t0, $fp, -389
	bnez $t0, .main_label131
	b .main_label132
.main_label95:
# call void @chapush(i32  43)
	addi.w $a0, $zero, 43
	bl chapush
# br label %label76
	b .main_label76
.main_label96:
# %op97 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op98 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op97
	la.local $t0, chas
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op99 = load i32 , i32 * %op98
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op100 = icmp eq i32  %op99, 94
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -413
# %op101 = zext i1  %op100 to i32 
	ld.b $t0, $fp, -413
	st.w $t0, $fp, -420
# %op102 = icmp ne i32  %op101, 0
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -421
# br i1  %op102, label %label90, label %label95
	ld.b $t0, $fp, -421
	bnez $t0, .main_label90
	b .main_label95
.main_label103:
# %op104 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op105 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op104
	la.local $t0, chas
	ld.w $t1, $fp, -428
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -440
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op107 = icmp eq i32  %op106, 37
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -445
# %op108 = zext i1  %op107 to i32 
	ld.b $t0, $fp, -445
	st.w $t0, $fp, -452
# %op109 = icmp ne i32  %op108, 0
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -453
# br i1  %op109, label %label90, label %label96
	ld.b $t0, $fp, -453
	bnez $t0, .main_label90
	b .main_label96
.main_label110:
# %op111 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op112 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op111
	la.local $t0, chas
	ld.w $t1, $fp, -460
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# %op113 = load i32 , i32 * %op112
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op114 = icmp eq i32  %op113, 47
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -477
# %op115 = zext i1  %op114 to i32 
	ld.b $t0, $fp, -477
	st.w $t0, $fp, -484
# %op116 = icmp ne i32  %op115, 0
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -485
# br i1  %op116, label %label90, label %label103
	ld.b $t0, $fp, -485
	bnez $t0, .main_label90
	b .main_label103
.main_label117:
# %op118 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op119 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op118
	la.local $t0, chas
	ld.w $t1, $fp, -492
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -504
# %op120 = load i32 , i32 * %op119
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op121 = icmp eq i32  %op120, 42
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -509
# %op122 = zext i1  %op121 to i32 
	ld.b $t0, $fp, -509
	st.w $t0, $fp, -516
# %op123 = icmp ne i32  %op122, 0
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -517
# br i1  %op123, label %label90, label %label110
	ld.b $t0, $fp, -517
	bnez $t0, .main_label90
	b .main_label110
.main_label124:
# %op125 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op126 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op125
	la.local $t0, chas
	ld.w $t1, $fp, -524
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -536
# %op127 = load i32 , i32 * %op126
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op128 = icmp eq i32  %op127, 45
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -541
# %op129 = zext i1  %op128 to i32 
	ld.b $t0, $fp, -541
	st.w $t0, $fp, -548
# %op130 = icmp ne i32  %op129, 0
	ld.w $t0, $fp, -548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -549
# br i1  %op130, label %label90, label %label117
	ld.b $t0, $fp, -549
	bnez $t0, .main_label90
	b .main_label117
.main_label131:
# br label %label95
	b .main_label95
.main_label132:
# br label %label83
	b .main_label83
.main_label133:
# br label %label141
	b .main_label141
.main_label134:
# %op135 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op136 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op135
	la.local $t0, get
	ld.w $t1, $fp, -556
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -568
# %op137 = load i32 , i32 * %op136
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op138 = icmp eq i32  %op137, 42
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -573
# %op139 = zext i1  %op138 to i32 
	ld.b $t0, $fp, -573
	st.w $t0, $fp, -580
# %op140 = icmp ne i32  %op139, 0
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -581
# br i1  %op140, label %label191, label %label192
	ld.b $t0, $fp, -581
	bnez $t0, .main_label191
	b .main_label192
.main_label141:
# %op142 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op143 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op142
	la.local $t0, chas
	ld.w $t1, $fp, -588
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -600
# %op144 = load i32 , i32 * %op143
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op145 = icmp eq i32  %op144, 43
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -605
# %op146 = zext i1  %op145 to i32 
	ld.b $t0, $fp, -605
	st.w $t0, $fp, -612
# %op147 = icmp ne i32  %op146, 0
	ld.w $t0, $fp, -612
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -613
# br i1  %op147, label %label148, label %label182
	ld.b $t0, $fp, -613
	bnez $t0, .main_label148
	b .main_label182
.main_label148:
# %op149 = call i32  @find()
	bl find
	st.w $a0, $fp, -620
# %op150 = icmp eq i32  %op149, 0
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -621
# %op151 = zext i1  %op150 to i32 
	ld.b $t0, $fp, -621
	st.w $t0, $fp, -628
# %op152 = icmp ne i32  %op151, 0
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -629
# br i1  %op152, label %label189, label %label190
	ld.b $t0, $fp, -629
	bnez $t0, .main_label189
	b .main_label190
.main_label153:
# call void @chapush(i32  45)
	addi.w $a0, $zero, 45
	bl chapush
# br label %label134
	b .main_label134
.main_label154:
# %op155 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op156 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op155
	la.local $t0, chas
	ld.w $t1, $fp, -636
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -648
# %op157 = load i32 , i32 * %op156
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op158 = icmp eq i32  %op157, 94
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -653
# %op159 = zext i1  %op158 to i32 
	ld.b $t0, $fp, -653
	st.w $t0, $fp, -660
# %op160 = icmp ne i32  %op159, 0
	ld.w $t0, $fp, -660
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -661
# br i1  %op160, label %label148, label %label153
	ld.b $t0, $fp, -661
	bnez $t0, .main_label148
	b .main_label153
.main_label161:
# %op162 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op163 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op162
	la.local $t0, chas
	ld.w $t1, $fp, -668
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -680
# %op164 = load i32 , i32 * %op163
	ld.d $t0, $fp, -680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op165 = icmp eq i32  %op164, 37
	ld.w $t0, $fp, -684
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -685
# %op166 = zext i1  %op165 to i32 
	ld.b $t0, $fp, -685
	st.w $t0, $fp, -692
# %op167 = icmp ne i32  %op166, 0
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -693
# br i1  %op167, label %label148, label %label154
	ld.b $t0, $fp, -693
	bnez $t0, .main_label148
	b .main_label154
.main_label168:
# %op169 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op170 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op169
	la.local $t0, chas
	ld.w $t1, $fp, -700
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -712
# %op171 = load i32 , i32 * %op170
	ld.d $t0, $fp, -712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op172 = icmp eq i32  %op171, 47
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -717
# %op173 = zext i1  %op172 to i32 
	ld.b $t0, $fp, -717
	st.w $t0, $fp, -724
# %op174 = icmp ne i32  %op173, 0
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -725
# br i1  %op174, label %label148, label %label161
	ld.b $t0, $fp, -725
	bnez $t0, .main_label148
	b .main_label161
.main_label175:
# %op176 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op177 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op176
	la.local $t0, chas
	ld.w $t1, $fp, -732
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -744
# %op178 = load i32 , i32 * %op177
	ld.d $t0, $fp, -744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op179 = icmp eq i32  %op178, 42
	ld.w $t0, $fp, -748
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -749
# %op180 = zext i1  %op179 to i32 
	ld.b $t0, $fp, -749
	st.w $t0, $fp, -756
# %op181 = icmp ne i32  %op180, 0
	ld.w $t0, $fp, -756
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -757
# br i1  %op181, label %label148, label %label168
	ld.b $t0, $fp, -757
	bnez $t0, .main_label148
	b .main_label168
.main_label182:
# %op183 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op184 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op183
	la.local $t0, chas
	ld.w $t1, $fp, -764
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -776
# %op185 = load i32 , i32 * %op184
	ld.d $t0, $fp, -776
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op186 = icmp eq i32  %op185, 45
	ld.w $t0, $fp, -780
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -781
# %op187 = zext i1  %op186 to i32 
	ld.b $t0, $fp, -781
	st.w $t0, $fp, -788
# %op188 = icmp ne i32  %op187, 0
	ld.w $t0, $fp, -788
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -789
# br i1  %op188, label %label148, label %label175
	ld.b $t0, $fp, -789
	bnez $t0, .main_label148
	b .main_label175
.main_label189:
# br label %label153
	b .main_label153
.main_label190:
# br label %label141
	b .main_label141
.main_label191:
# br label %label199
	b .main_label199
.main_label192:
# %op193 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op194 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op193
	la.local $t0, get
	ld.w $t1, $fp, -796
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -808
# %op195 = load i32 , i32 * %op194
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op196 = icmp eq i32  %op195, 47
	ld.w $t0, $fp, -812
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label58
	addi.d $t2, $zero, 0
	b false_label58
true_label58:
	addi.d $t2, $zero, 1
false_label58:
	st.b $t2, $fp, -813
# %op197 = zext i1  %op196 to i32 
	ld.b $t0, $fp, -813
	st.w $t0, $fp, -820
# %op198 = icmp ne i32  %op197, 0
	ld.w $t0, $fp, -820
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -821
# br i1  %op198, label %label235, label %label236
	ld.b $t0, $fp, -821
	bnez $t0, .main_label235
	b .main_label236
.main_label199:
# %op200 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op201 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op200
	la.local $t0, chas
	ld.w $t1, $fp, -828
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -840
# %op202 = load i32 , i32 * %op201
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op203 = icmp eq i32  %op202, 42
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -845
# %op204 = zext i1  %op203 to i32 
	ld.b $t0, $fp, -845
	st.w $t0, $fp, -852
# %op205 = icmp ne i32  %op204, 0
	ld.w $t0, $fp, -852
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -853
# br i1  %op205, label %label206, label %label226
	ld.b $t0, $fp, -853
	bnez $t0, .main_label206
	b .main_label226
.main_label206:
# %op207 = call i32  @find()
	bl find
	st.w $a0, $fp, -860
# %op208 = icmp eq i32  %op207, 0
	ld.w $t0, $fp, -860
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -861
# %op209 = zext i1  %op208 to i32 
	ld.b $t0, $fp, -861
	st.w $t0, $fp, -868
# %op210 = icmp ne i32  %op209, 0
	ld.w $t0, $fp, -868
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -869
# br i1  %op210, label %label233, label %label234
	ld.b $t0, $fp, -869
	bnez $t0, .main_label233
	b .main_label234
.main_label211:
# call void @chapush(i32  42)
	addi.w $a0, $zero, 42
	bl chapush
# br label %label192
	b .main_label192
.main_label212:
# %op213 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op214 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op213
	la.local $t0, chas
	ld.w $t1, $fp, -876
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -888
# %op215 = load i32 , i32 * %op214
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op216 = icmp eq i32  %op215, 94
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label64
	addi.d $t2, $zero, 0
	b false_label64
true_label64:
	addi.d $t2, $zero, 1
false_label64:
	st.b $t2, $fp, -893
# %op217 = zext i1  %op216 to i32 
	ld.b $t0, $fp, -893
	st.w $t0, $fp, -900
# %op218 = icmp ne i32  %op217, 0
	ld.w $t0, $fp, -900
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -901
# br i1  %op218, label %label206, label %label211
	ld.b $t0, $fp, -901
	bnez $t0, .main_label206
	b .main_label211
.main_label219:
# %op220 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op221 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op220
	la.local $t0, chas
	ld.w $t1, $fp, -908
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -920
# %op222 = load i32 , i32 * %op221
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op223 = icmp eq i32  %op222, 37
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -925
# %op224 = zext i1  %op223 to i32 
	ld.b $t0, $fp, -925
	st.w $t0, $fp, -932
# %op225 = icmp ne i32  %op224, 0
	ld.w $t0, $fp, -932
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -933
# br i1  %op225, label %label206, label %label212
	ld.b $t0, $fp, -933
	bnez $t0, .main_label206
	b .main_label212
.main_label226:
# %op227 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op228 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op227
	la.local $t0, chas
	ld.w $t1, $fp, -940
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -952
# %op229 = load i32 , i32 * %op228
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op230 = icmp eq i32  %op229, 47
	ld.w $t0, $fp, -956
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -957
# %op231 = zext i1  %op230 to i32 
	ld.b $t0, $fp, -957
	st.w $t0, $fp, -964
# %op232 = icmp ne i32  %op231, 0
	ld.w $t0, $fp, -964
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -965
# br i1  %op232, label %label206, label %label219
	ld.b $t0, $fp, -965
	bnez $t0, .main_label206
	b .main_label219
.main_label233:
# br label %label211
	b .main_label211
.main_label234:
# br label %label199
	b .main_label199
.main_label235:
# br label %label243
	b .main_label243
.main_label236:
# %op237 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op238 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op237
	la.local $t0, get
	ld.w $t1, $fp, -972
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -984
# %op239 = load i32 , i32 * %op238
	ld.d $t0, $fp, -984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op240 = icmp eq i32  %op239, 37
	ld.w $t0, $fp, -988
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label70
	addi.d $t2, $zero, 0
	b false_label70
true_label70:
	addi.d $t2, $zero, 1
false_label70:
	st.b $t2, $fp, -989
# %op241 = zext i1  %op240 to i32 
	ld.b $t0, $fp, -989
	st.w $t0, $fp, -996
# %op242 = icmp ne i32  %op241, 0
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	st.b $t2, $fp, -997
# br i1  %op242, label %label279, label %label280
	ld.b $t0, $fp, -997
	bnez $t0, .main_label279
	b .main_label280
.main_label243:
# %op244 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op245 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op244
	la.local $t0, chas
	ld.w $t1, $fp, -1004
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1016
# %op246 = load i32 , i32 * %op245
	ld.d $t0, $fp, -1016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op247 = icmp eq i32  %op246, 42
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	st.b $t2, $fp, -1021
# %op248 = zext i1  %op247 to i32 
	ld.b $t0, $fp, -1021
	st.w $t0, $fp, -1028
# %op249 = icmp ne i32  %op248, 0
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label73
	addi.d $t2, $zero, 0
	b false_label73
true_label73:
	addi.d $t2, $zero, 1
false_label73:
	st.b $t2, $fp, -1029
# br i1  %op249, label %label250, label %label270
	ld.b $t0, $fp, -1029
	bnez $t0, .main_label250
	b .main_label270
.main_label250:
# %op251 = call i32  @find()
	bl find
	st.w $a0, $fp, -1036
# %op252 = icmp eq i32  %op251, 0
	ld.w $t0, $fp, -1036
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	st.b $t2, $fp, -1037
# %op253 = zext i1  %op252 to i32 
	ld.b $t0, $fp, -1037
	st.w $t0, $fp, -1044
# %op254 = icmp ne i32  %op253, 0
	ld.w $t0, $fp, -1044
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	st.b $t2, $fp, -1045
# br i1  %op254, label %label277, label %label278
	ld.b $t0, $fp, -1045
	bnez $t0, .main_label277
	b .main_label278
.main_label255:
# call void @chapush(i32  47)
	addi.w $a0, $zero, 47
	bl chapush
# br label %label236
	b .main_label236
.main_label256:
# %op257 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op258 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op257
	la.local $t0, chas
	ld.w $t1, $fp, -1052
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1064
# %op259 = load i32 , i32 * %op258
	ld.d $t0, $fp, -1064
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op260 = icmp eq i32  %op259, 94
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label76
	addi.d $t2, $zero, 0
	b false_label76
true_label76:
	addi.d $t2, $zero, 1
false_label76:
	st.b $t2, $fp, -1069
# %op261 = zext i1  %op260 to i32 
	ld.b $t0, $fp, -1069
	st.w $t0, $fp, -1076
# %op262 = icmp ne i32  %op261, 0
	ld.w $t0, $fp, -1076
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	st.b $t2, $fp, -1077
# br i1  %op262, label %label250, label %label255
	ld.b $t0, $fp, -1077
	bnez $t0, .main_label250
	b .main_label255
.main_label263:
# %op264 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op265 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op264
	la.local $t0, chas
	ld.w $t1, $fp, -1084
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1096
# %op266 = load i32 , i32 * %op265
	ld.d $t0, $fp, -1096
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1100
# %op267 = icmp eq i32  %op266, 37
	ld.w $t0, $fp, -1100
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	st.b $t2, $fp, -1101
# %op268 = zext i1  %op267 to i32 
	ld.b $t0, $fp, -1101
	st.w $t0, $fp, -1108
# %op269 = icmp ne i32  %op268, 0
	ld.w $t0, $fp, -1108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	st.b $t2, $fp, -1109
# br i1  %op269, label %label250, label %label256
	ld.b $t0, $fp, -1109
	bnez $t0, .main_label250
	b .main_label256
.main_label270:
# %op271 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# %op272 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op271
	la.local $t0, chas
	ld.w $t1, $fp, -1116
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1128
# %op273 = load i32 , i32 * %op272
	ld.d $t0, $fp, -1128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op274 = icmp eq i32  %op273, 47
	ld.w $t0, $fp, -1132
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	st.b $t2, $fp, -1133
# %op275 = zext i1  %op274 to i32 
	ld.b $t0, $fp, -1133
	st.w $t0, $fp, -1140
# %op276 = icmp ne i32  %op275, 0
	ld.w $t0, $fp, -1140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	st.b $t2, $fp, -1141
# br i1  %op276, label %label250, label %label263
	ld.b $t0, $fp, -1141
	bnez $t0, .main_label250
	b .main_label263
.main_label277:
# br label %label255
	b .main_label255
.main_label278:
# br label %label243
	b .main_label243
.main_label279:
# br label %label285
	b .main_label285
.main_label280:
# %op281 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op282 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op281
	la.local $t0, get2
	ld.w $t1, $fp, -1148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1160
# store i32  32, i32 * %op282
	ld.d $t0, $fp, -1160
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op283 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1164
# %op284 = add i32  %op283, 1
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1168
# store i32  %op284, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1168
	st.w $t1, $t0, 0
# br label %label31
	b .main_label31
.main_label285:
# %op286 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1172
# %op287 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op286
	la.local $t0, chas
	ld.w $t1, $fp, -1172
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1184
# %op288 = load i32 , i32 * %op287
	ld.d $t0, $fp, -1184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op289 = icmp eq i32  %op288, 42
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	st.b $t2, $fp, -1189
# %op290 = zext i1  %op289 to i32 
	ld.b $t0, $fp, -1189
	st.w $t0, $fp, -1196
# %op291 = icmp ne i32  %op290, 0
	ld.w $t0, $fp, -1196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label83
	addi.d $t2, $zero, 0
	b false_label83
true_label83:
	addi.d $t2, $zero, 1
false_label83:
	st.b $t2, $fp, -1197
# br i1  %op291, label %label292, label %label312
	ld.b $t0, $fp, -1197
	bnez $t0, .main_label292
	b .main_label312
.main_label292:
# %op293 = call i32  @find()
	bl find
	st.w $a0, $fp, -1204
# %op294 = icmp eq i32  %op293, 0
	ld.w $t0, $fp, -1204
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	st.b $t2, $fp, -1205
# %op295 = zext i1  %op294 to i32 
	ld.b $t0, $fp, -1205
	st.w $t0, $fp, -1212
# %op296 = icmp ne i32  %op295, 0
	ld.w $t0, $fp, -1212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	st.b $t2, $fp, -1213
# br i1  %op296, label %label319, label %label320
	ld.b $t0, $fp, -1213
	bnez $t0, .main_label319
	b .main_label320
.main_label297:
# call void @chapush(i32  37)
	addi.w $a0, $zero, 37
	bl chapush
# br label %label280
	b .main_label280
.main_label298:
# %op299 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1220
# %op300 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op299
	la.local $t0, chas
	ld.w $t1, $fp, -1220
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1232
# %op301 = load i32 , i32 * %op300
	ld.d $t0, $fp, -1232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1236
# %op302 = icmp eq i32  %op301, 94
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	st.b $t2, $fp, -1237
# %op303 = zext i1  %op302 to i32 
	ld.b $t0, $fp, -1237
	st.w $t0, $fp, -1244
# %op304 = icmp ne i32  %op303, 0
	ld.w $t0, $fp, -1244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	st.b $t2, $fp, -1245
# br i1  %op304, label %label292, label %label297
	ld.b $t0, $fp, -1245
	bnez $t0, .main_label292
	b .main_label297
.main_label305:
# %op306 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1252
# %op307 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op306
	la.local $t0, chas
	ld.w $t1, $fp, -1252
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1264
# %op308 = load i32 , i32 * %op307
	ld.d $t0, $fp, -1264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1268
# %op309 = icmp eq i32  %op308, 37
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	st.b $t2, $fp, -1269
# %op310 = zext i1  %op309 to i32 
	ld.b $t0, $fp, -1269
	st.w $t0, $fp, -1276
# %op311 = icmp ne i32  %op310, 0
	ld.w $t0, $fp, -1276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label89
	addi.d $t2, $zero, 0
	b false_label89
true_label89:
	addi.d $t2, $zero, 1
false_label89:
	st.b $t2, $fp, -1277
# br i1  %op311, label %label292, label %label298
	ld.b $t0, $fp, -1277
	bnez $t0, .main_label292
	b .main_label298
.main_label312:
# %op313 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1284
# %op314 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op313
	la.local $t0, chas
	ld.w $t1, $fp, -1284
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1296
# %op315 = load i32 , i32 * %op314
	ld.d $t0, $fp, -1296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1300
# %op316 = icmp eq i32  %op315, 47
	ld.w $t0, $fp, -1300
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	st.b $t2, $fp, -1301
# %op317 = zext i1  %op316 to i32 
	ld.b $t0, $fp, -1301
	st.w $t0, $fp, -1308
# %op318 = icmp ne i32  %op317, 0
	ld.w $t0, $fp, -1308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	st.b $t2, $fp, -1309
# br i1  %op318, label %label292, label %label305
	ld.b $t0, $fp, -1309
	bnez $t0, .main_label292
	b .main_label305
.main_label319:
# br label %label297
	b .main_label297
.main_label320:
# br label %label285
	b .main_label285
.main_label321:
# %op322 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1316
# %op323 = icmp sgt i32  %op322, 0
	ld.w $t0, $fp, -1316
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1317
# %op324 = zext i1  %op323 to i32 
	ld.b $t0, $fp, -1317
	st.w $t0, $fp, -1324
# %op325 = icmp ne i32  %op324, 0
	ld.w $t0, $fp, -1324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	st.b $t2, $fp, -1325
# br i1  %op325, label %label326, label %label335
	ld.b $t0, $fp, -1325
	bnez $t0, .main_label326
	b .main_label335
.main_label326:
# %op327 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -1332
# %op328 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1336
# %op329 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op328
	la.local $t0, get2
	ld.w $t1, $fp, -1336
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1344
# store i32  32, i32 * %op329
	ld.d $t0, $fp, -1344
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op330 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1348
# %op331 = add i32  %op330, 1
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1352
# %op332 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op331
	la.local $t0, get2
	ld.w $t1, $fp, -1352
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1360
# store i32  %op327, i32 * %op332
	ld.d $t0, $fp, -1360
	ld.w $t1, $fp, -1332
	st.w $t1, $t0, 0
# %op333 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1364
# %op334 = add i32  %op333, 2
	ld.w $t0, $fp, -1364
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1368
# store i32  %op334, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1368
	st.w $t1, $t0, 0
# br label %label321
	b .main_label321
.main_label335:
# %op336 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1372
# %op337 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op336
	la.local $t0, get2
	ld.w $t1, $fp, -1372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1384
# store i32  64, i32 * %op337
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 64
	st.w $t1, $t0, 0
# store i32  1, i32 * @i
	la.local $t0, i
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label338
	b .main_label338
.main_label338:
# %op339 = phi i32  [ %op373, %label372 ], [ undef, %label335 ]
# %op340 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1392
# %op341 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op340
	la.local $t0, get2
	ld.w $t1, $fp, -1392
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1400
# %op342 = load i32 , i32 * %op341
	ld.d $t0, $fp, -1400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1404
# %op343 = icmp ne i32  %op342, 64
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 64
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	st.b $t2, $fp, -1405
# %op344 = zext i1  %op343 to i32 
	ld.b $t0, $fp, -1405
	st.w $t0, $fp, -1412
# %op345 = icmp ne i32  %op344, 0
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label95
	addi.d $t2, $zero, 0
	b false_label95
true_label95:
	addi.d $t2, $zero, 1
false_label95:
	st.b $t2, $fp, -1413
# br i1  %op345, label %label346, label %label353
	ld.b $t0, $fp, -1413
	bnez $t0, .main_label346
	b .main_label353
.main_label346:
# %op347 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op348 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op347
	la.local $t0, get2
	ld.w $t1, $fp, -1420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1432
# %op349 = load i32 , i32 * %op348
	ld.d $t0, $fp, -1432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op350 = icmp eq i32  %op349, 43
	ld.w $t0, $fp, -1436
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	st.b $t2, $fp, -1437
# %op351 = zext i1  %op350 to i32 
	ld.b $t0, $fp, -1437
	st.w $t0, $fp, -1444
# %op352 = icmp ne i32  %op351, 0
	ld.w $t0, $fp, -1444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	st.b $t2, $fp, -1445
# br i1  %op352, label %label356, label %label404
	ld.b $t0, $fp, -1445
	bnez $t0, .main_label356
	b .main_label404
.main_label353:
# %op354 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  1
	la.local $t0, ints
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1456
# %op355 = load i32 , i32 * %op354
	ld.d $t0, $fp, -1456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1460
# call void @putint(i32  %op355)
	ld.w $a0, $fp, -1460
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label356:
# %op357 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1464
# %op358 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1468
# %op359 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1472
# %op360 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op359
	la.local $t0, get2
	ld.w $t1, $fp, -1472
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1480
# %op361 = load i32 , i32 * %op360
	ld.d $t0, $fp, -1480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op362 = icmp eq i32  %op361, 43
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	st.b $t2, $fp, -1485
# %op363 = zext i1  %op362 to i32 
	ld.b $t0, $fp, -1485
	st.w $t0, $fp, -1492
# %op364 = icmp ne i32  %op363, 0
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label99
	addi.d $t2, $zero, 0
	b false_label99
true_label99:
	addi.d $t2, $zero, 1
false_label99:
	st.b $t2, $fp, -1493
# br i1  %op364, label %label411, label %label413
	ld.w $t0, $fp, -1388
	st.w $t0, $fp, -1704
	ld.b $t0, $fp, -1493
	bnez $t0, .main_label411
	b .main_label413
.main_label365:
# %op366 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1500
# %op367 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op366
	la.local $t0, get2
	ld.w $t1, $fp, -1500
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1512
# %op368 = load i32 , i32 * %op367
	ld.d $t0, $fp, -1512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1516
# %op369 = icmp ne i32  %op368, 32
	ld.w $t0, $fp, -1516
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	st.b $t2, $fp, -1517
# %op370 = zext i1  %op369 to i32 
	ld.b $t0, $fp, -1517
	st.w $t0, $fp, -1524
# %op371 = icmp ne i32  %op370, 0
	ld.w $t0, $fp, -1524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label101
	addi.d $t2, $zero, 0
	b false_label101
true_label101:
	addi.d $t2, $zero, 1
false_label101:
	st.b $t2, $fp, -1525
# br i1  %op371, label %label465, label %label470
	ld.b $t0, $fp, -1525
	bnez $t0, .main_label465
	b .main_label470
.main_label372:
# %op373 = phi i32  [ %op464, %label463 ], [ %op339, %label470 ]
# %op374 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1536
# %op375 = add i32  %op374, 1
	ld.w $t0, $fp, -1536
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1540
# store i32  %op375, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -1540
	st.w $t1, $t0, 0
# br label %label338
	ld.w $t0, $fp, -1532
	st.w $t0, $fp, -1388
	b .main_label338
.main_label376:
# %op377 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1544
# %op378 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op377
	la.local $t0, get2
	ld.w $t1, $fp, -1544
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1552
# %op379 = load i32 , i32 * %op378
	ld.d $t0, $fp, -1552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1556
# %op380 = icmp eq i32  %op379, 94
	ld.w $t0, $fp, -1556
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	st.b $t2, $fp, -1557
# %op381 = zext i1  %op380 to i32 
	ld.b $t0, $fp, -1557
	st.w $t0, $fp, -1564
# %op382 = icmp ne i32  %op381, 0
	ld.w $t0, $fp, -1564
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label103
	addi.d $t2, $zero, 0
	b false_label103
true_label103:
	addi.d $t2, $zero, 1
false_label103:
	st.b $t2, $fp, -1565
# br i1  %op382, label %label356, label %label365
	ld.b $t0, $fp, -1565
	bnez $t0, .main_label356
	b .main_label365
.main_label383:
# %op384 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1572
# %op385 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op384
	la.local $t0, get2
	ld.w $t1, $fp, -1572
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1584
# %op386 = load i32 , i32 * %op385
	ld.d $t0, $fp, -1584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1588
# %op387 = icmp eq i32  %op386, 37
	ld.w $t0, $fp, -1588
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	st.b $t2, $fp, -1589
# %op388 = zext i1  %op387 to i32 
	ld.b $t0, $fp, -1589
	st.w $t0, $fp, -1596
# %op389 = icmp ne i32  %op388, 0
	ld.w $t0, $fp, -1596
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label105
	addi.d $t2, $zero, 0
	b false_label105
true_label105:
	addi.d $t2, $zero, 1
false_label105:
	st.b $t2, $fp, -1597
# br i1  %op389, label %label356, label %label376
	ld.b $t0, $fp, -1597
	bnez $t0, .main_label356
	b .main_label376
.main_label390:
# %op391 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1604
# %op392 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op391
	la.local $t0, get2
	ld.w $t1, $fp, -1604
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1616
# %op393 = load i32 , i32 * %op392
	ld.d $t0, $fp, -1616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op394 = icmp eq i32  %op393, 47
	ld.w $t0, $fp, -1620
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	st.b $t2, $fp, -1621
# %op395 = zext i1  %op394 to i32 
	ld.b $t0, $fp, -1621
	st.w $t0, $fp, -1628
# %op396 = icmp ne i32  %op395, 0
	ld.w $t0, $fp, -1628
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label107
	addi.d $t2, $zero, 0
	b false_label107
true_label107:
	addi.d $t2, $zero, 1
false_label107:
	st.b $t2, $fp, -1629
# br i1  %op396, label %label356, label %label383
	ld.b $t0, $fp, -1629
	bnez $t0, .main_label356
	b .main_label383
.main_label397:
# %op398 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1636
# %op399 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op398
	la.local $t0, get2
	ld.w $t1, $fp, -1636
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1648
# %op400 = load i32 , i32 * %op399
	ld.d $t0, $fp, -1648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1652
# %op401 = icmp eq i32  %op400, 42
	ld.w $t0, $fp, -1652
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	st.b $t2, $fp, -1653
# %op402 = zext i1  %op401 to i32 
	ld.b $t0, $fp, -1653
	st.w $t0, $fp, -1660
# %op403 = icmp ne i32  %op402, 0
	ld.w $t0, $fp, -1660
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label109
	addi.d $t2, $zero, 0
	b false_label109
true_label109:
	addi.d $t2, $zero, 1
false_label109:
	st.b $t2, $fp, -1661
# br i1  %op403, label %label356, label %label390
	ld.b $t0, $fp, -1661
	bnez $t0, .main_label356
	b .main_label390
.main_label404:
# %op405 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op406 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op405
	la.local $t0, get2
	ld.w $t1, $fp, -1668
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1680
# %op407 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1684
# %op408 = icmp eq i32  %op407, 45
	ld.w $t0, $fp, -1684
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	st.b $t2, $fp, -1685
# %op409 = zext i1  %op408 to i32 
	ld.b $t0, $fp, -1685
	st.w $t0, $fp, -1692
# %op410 = icmp ne i32  %op409, 0
	ld.w $t0, $fp, -1692
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label111
	addi.d $t2, $zero, 0
	b false_label111
true_label111:
	addi.d $t2, $zero, 1
false_label111:
	st.b $t2, $fp, -1693
# br i1  %op410, label %label356, label %label397
	ld.b $t0, $fp, -1693
	bnez $t0, .main_label356
	b .main_label397
.main_label411:
# %op412 = add i32  %op357, %op358
	ld.w $t0, $fp, -1464
	ld.w $t1, $fp, -1468
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1700
# br label %label413
	ld.w $t0, $fp, -1700
	st.w $t0, $fp, -1704
	b .main_label413
.main_label413:
# %op414 = phi i32  [ %op339, %label356 ], [ %op412, %label411 ]
# %op415 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# %op416 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op415
	la.local $t0, get2
	ld.w $t1, $fp, -1708
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1720
# %op417 = load i32 , i32 * %op416
	ld.d $t0, $fp, -1720
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op418 = icmp eq i32  %op417, 45
	ld.w $t0, $fp, -1724
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	st.b $t2, $fp, -1725
# %op419 = zext i1  %op418 to i32 
	ld.b $t0, $fp, -1725
	st.w $t0, $fp, -1732
# %op420 = icmp ne i32  %op419, 0
	ld.w $t0, $fp, -1732
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label113
	addi.d $t2, $zero, 0
	b false_label113
true_label113:
	addi.d $t2, $zero, 1
false_label113:
	st.b $t2, $fp, -1733
# br i1  %op420, label %label421, label %label423
	ld.w $t0, $fp, -1704
	st.w $t0, $fp, -1744
	ld.b $t0, $fp, -1733
	bnez $t0, .main_label421
	b .main_label423
.main_label421:
# %op422 = sub i32  %op358, %op357
	ld.w $t0, $fp, -1468
	ld.w $t1, $fp, -1464
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1740
# br label %label423
	ld.w $t0, $fp, -1740
	st.w $t0, $fp, -1744
	b .main_label423
.main_label423:
# %op424 = phi i32  [ %op414, %label413 ], [ %op422, %label421 ]
# %op425 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1748
# %op426 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op425
	la.local $t0, get2
	ld.w $t1, $fp, -1748
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1760
# %op427 = load i32 , i32 * %op426
	ld.d $t0, $fp, -1760
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1764
# %op428 = icmp eq i32  %op427, 42
	ld.w $t0, $fp, -1764
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	st.b $t2, $fp, -1765
# %op429 = zext i1  %op428 to i32 
	ld.b $t0, $fp, -1765
	st.w $t0, $fp, -1772
# %op430 = icmp ne i32  %op429, 0
	ld.w $t0, $fp, -1772
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	st.b $t2, $fp, -1773
# br i1  %op430, label %label431, label %label433
	ld.w $t0, $fp, -1744
	st.w $t0, $fp, -1784
	ld.b $t0, $fp, -1773
	bnez $t0, .main_label431
	b .main_label433
.main_label431:
# %op432 = mul i32  %op357, %op358
	ld.w $t0, $fp, -1464
	ld.w $t1, $fp, -1468
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1780
# br label %label433
	ld.w $t0, $fp, -1780
	st.w $t0, $fp, -1784
	b .main_label433
.main_label433:
# %op434 = phi i32  [ %op424, %label423 ], [ %op432, %label431 ]
# %op435 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op436 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op435
	la.local $t0, get2
	ld.w $t1, $fp, -1788
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1800
# %op437 = load i32 , i32 * %op436
	ld.d $t0, $fp, -1800
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1804
# %op438 = icmp eq i32  %op437, 47
	ld.w $t0, $fp, -1804
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	st.b $t2, $fp, -1805
# %op439 = zext i1  %op438 to i32 
	ld.b $t0, $fp, -1805
	st.w $t0, $fp, -1812
# %op440 = icmp ne i32  %op439, 0
	ld.w $t0, $fp, -1812
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	st.b $t2, $fp, -1813
# br i1  %op440, label %label441, label %label443
	ld.w $t0, $fp, -1784
	st.w $t0, $fp, -1824
	ld.b $t0, $fp, -1813
	bnez $t0, .main_label441
	b .main_label443
.main_label441:
# %op442 = sdiv i32  %op358, %op357
	ld.w $t0, $fp, -1468
	ld.w $t1, $fp, -1464
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1820
# br label %label443
	ld.w $t0, $fp, -1820
	st.w $t0, $fp, -1824
	b .main_label443
.main_label443:
# %op444 = phi i32  [ %op434, %label433 ], [ %op442, %label441 ]
# %op445 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op446 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op445
	la.local $t0, get2
	ld.w $t1, $fp, -1828
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1840
# %op447 = load i32 , i32 * %op446
	ld.d $t0, $fp, -1840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1844
# %op448 = icmp eq i32  %op447, 37
	ld.w $t0, $fp, -1844
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	st.b $t2, $fp, -1845
# %op449 = zext i1  %op448 to i32 
	ld.b $t0, $fp, -1845
	st.w $t0, $fp, -1852
# %op450 = icmp ne i32  %op449, 0
	ld.w $t0, $fp, -1852
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label119
	addi.d $t2, $zero, 0
	b false_label119
true_label119:
	addi.d $t2, $zero, 1
false_label119:
	st.b $t2, $fp, -1853
# br i1  %op450, label %label451, label %label453
	ld.w $t0, $fp, -1824
	st.w $t0, $fp, -1864
	ld.b $t0, $fp, -1853
	bnez $t0, .main_label451
	b .main_label453
.main_label451:
# %op452 = srem i32  %op358, %op357
	ld.w $t0, $fp, -1468
	ld.w $t1, $fp, -1464
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1860
# br label %label453
	ld.w $t0, $fp, -1860
	st.w $t0, $fp, -1864
	b .main_label453
.main_label453:
# %op454 = phi i32  [ %op444, %label443 ], [ %op452, %label451 ]
# %op455 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op456 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op455
	la.local $t0, get2
	ld.w $t1, $fp, -1868
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1880
# %op457 = load i32 , i32 * %op456
	ld.d $t0, $fp, -1880
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# %op458 = icmp eq i32  %op457, 94
	ld.w $t0, $fp, -1884
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	st.b $t2, $fp, -1885
# %op459 = zext i1  %op458 to i32 
	ld.b $t0, $fp, -1885
	st.w $t0, $fp, -1892
# %op460 = icmp ne i32  %op459, 0
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	st.b $t2, $fp, -1893
# br i1  %op460, label %label461, label %label463
	ld.w $t0, $fp, -1864
	st.w $t0, $fp, -1904
	ld.b $t0, $fp, -1893
	bnez $t0, .main_label461
	b .main_label463
.main_label461:
# %op462 = call i32  @power(i32  %op358, i32  %op357)
	ld.w $a0, $fp, -1468
	ld.w $a1, $fp, -1464
	bl power
	st.w $a0, $fp, -1900
# br label %label463
	ld.w $t0, $fp, -1900
	st.w $t0, $fp, -1904
	b .main_label463
.main_label463:
# %op464 = phi i32  [ %op454, %label453 ], [ %op462, %label461 ]
# call void @intpush(i32  %op464)
	ld.w $a0, $fp, -1904
	bl intpush
# br label %label372
	ld.w $t0, $fp, -1904
	st.w $t0, $fp, -1532
	b .main_label372
.main_label465:
# %op466 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op467 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op466
	la.local $t0, get2
	ld.w $t1, $fp, -1908
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1920
# %op468 = load i32 , i32 * %op467
	ld.d $t0, $fp, -1920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1924
# %op469 = sub i32  %op468, 48
	ld.w $t0, $fp, -1924
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1928
# call void @intpush(i32  %op469)
	ld.w $a0, $fp, -1928
	bl intpush
# store i32  1, i32 * @ii
	la.local $t0, ii
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label471
	b .main_label471
.main_label470:
# br label %label372
	ld.w $t0, $fp, -1388
	st.w $t0, $fp, -1532
	b .main_label372
.main_label471:
# %op472 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op473 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1936
# %op474 = add i32  %op472, %op473
	ld.w $t0, $fp, -1932
	ld.w $t1, $fp, -1936
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1940
# %op475 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op474
	la.local $t0, get2
	ld.w $t1, $fp, -1940
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1952
# %op476 = load i32 , i32 * %op475
	ld.d $t0, $fp, -1952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1956
# %op477 = icmp ne i32  %op476, 32
	ld.w $t0, $fp, -1956
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	st.b $t2, $fp, -1957
# %op478 = zext i1  %op477 to i32 
	ld.b $t0, $fp, -1957
	st.w $t0, $fp, -1964
# %op479 = icmp ne i32  %op478, 0
	ld.w $t0, $fp, -1964
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label123
	addi.d $t2, $zero, 0
	b false_label123
true_label123:
	addi.d $t2, $zero, 1
false_label123:
	st.b $t2, $fp, -1965
# br i1  %op479, label %label480, label %label489
	ld.b $t0, $fp, -1965
	bnez $t0, .main_label480
	b .main_label489
.main_label480:
# %op481 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op482 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1976
# %op483 = add i32  %op481, %op482
	ld.w $t0, $fp, -1972
	ld.w $t1, $fp, -1976
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1980
# %op484 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op483
	la.local $t0, get2
	ld.w $t1, $fp, -1980
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1992
# %op485 = load i32 , i32 * %op484
	ld.d $t0, $fp, -1992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# %op486 = sub i32  %op485, 48
	ld.w $t0, $fp, -1996
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2000
# call void @intadd(i32  %op486)
	ld.w $a0, $fp, -2000
	bl intadd
# %op487 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# %op488 = add i32  %op487, 1
	ld.w $t0, $fp, -2004
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2008
# store i32  %op488, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -2008
	st.w $t1, $t0, 0
# br label %label471
	b .main_label471
.main_label489:
# %op490 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2012
# %op491 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2016
# %op492 = add i32  %op490, %op491
	ld.w $t0, $fp, -2012
	ld.w $t1, $fp, -2016
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2020
# %op493 = sub i32  %op492, 1
	ld.w $t0, $fp, -2020
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2024
# store i32  %op493, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -2024
	st.w $t1, $t0, 0
# br label %label470
	b .main_label470
main_ret:
	addi.d $sp, $sp, 2032
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
