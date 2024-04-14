# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word 1
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 0
	.globl c
	.data
	.type c, @object
	.size c, 4
c:
	.word 1
	.globl d
	.data
	.type d, @object
	.size d, 4
d:
	.word 2
	.globl e
	.data
	.type e, @object
	.size e, 4
e:
	.word 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
.main_label_entry:
# %op0 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = mul i32  %op0, %op1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op3 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = sdiv i32  %op2, %op3
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op6 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op7 = add i32  %op5, %op6
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op8 = icmp eq i32  %op4, %op7
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -48
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -49
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op10, label %label28, label %label14
	ld.b $t0, $fp, -57
	bnez $t0, .main_label28
	b .main_label14
.main_label11:
# br label %label12
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -64
	b .main_label12
.main_label12:
# %op13 = phi i32  [ 1, %label11 ], [ 0, %label14 ]
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -64
	bl putint
# ret i32  %op13
	ld.w $a0, $fp, -64
	b main_ret
.main_label14:
# %op15 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op16 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op17 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op18 = mul i32  %op16, %op17
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op19 = sub i32  %op15, %op18
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -80
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op20 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op21 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op22 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op23 = sdiv i32  %op21, %op22
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op24 = sub i32  %op20, %op23
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -100
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op25 = icmp eq i32  %op19, %op24
	ld.w $t0, $fp, -84
	ld.w $t1, $fp, -104
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -105
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -113
# br i1  %op27, label %label11, label %label12
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -64
	ld.b $t0, $fp, -113
	bnez $t0, .main_label11
	b .main_label12
.main_label28:
# %op29 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op30 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op31 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op32 = add i32  %op30, %op31
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -128
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op33 = mul i32  %op29, %op32
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -132
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op34 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op35 = add i32  %op33, %op34
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op36 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op37 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op38 = add i32  %op36, %op37
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op39 = icmp sle i32  %op35, %op38
	ld.w $t0, $fp, -144
	ld.w $t1, $fp, -156
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -157
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -165
# br i1  %op41, label %label11, label %label14
	ld.b $t0, $fp, -165
	bnez $t0, .main_label11
	b .main_label14
main_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
