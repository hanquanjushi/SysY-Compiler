# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.type a, @object
	.size a, 4
a:
	.space 4
	.globl b
	.type b, @object
	.size b, 4
b:
	.space 4
	.globl c
	.type c, @object
	.size c, 4
c:
	.space 4
	.globl d
	.type d, @object
	.size d, 4
d:
	.space 4
	.globl e
	.type e, @object
	.size e, 4
e:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -28
# store i32  %op2, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op3, i32 * @d
	la.local $t0, d
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# store i32  %op4, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op6 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op7 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op8 = mul i32  %op6, %op7
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -48
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = sub i32  %op5, %op8
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -52
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op10 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op12 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op13 = sdiv i32  %op11, %op12
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -68
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op14 = sub i32  %op10, %op13
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -72
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op15 = icmp ne i32  %op9, %op14
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -76
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -77
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -85
# br i1  %op17, label %label18, label %label33
	ld.b $t0, $fp, -85
	bnez $t0, .main_label18
	b .main_label33
.main_label18:
# br label %label19
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -92
	b .main_label19
.main_label19:
# %op20 = phi i32  [ 1, %label18 ], [ 0, %label21 ]
# ret i32  %op20
	ld.w $a0, $fp, -92
	b main_ret
.main_label21:
# %op22 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op23 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op24 = add i32  %op22, %op23
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op25 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op26 = add i32  %op24, %op25
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -108
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op27 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op28 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op29 = add i32  %op27, %op28
	ld.w $t0, $fp, -116
	ld.w $t1, $fp, -120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op30 = icmp eq i32  %op26, %op29
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -124
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -125
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -133
# br i1  %op32, label %label18, label %label19
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	ld.b $t0, $fp, -133
	bnez $t0, .main_label18
	b .main_label19
.main_label33:
# %op34 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op35 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op36 = mul i32  %op34, %op35
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op37 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op38 = sdiv i32  %op36, %op37
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op39 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op40 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op41 = add i32  %op39, %op40
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op42 = icmp eq i32  %op38, %op41
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -168
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -169
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -177
# br i1  %op44, label %label18, label %label21
	ld.b $t0, $fp, -177
	bnez $t0, .main_label18
	b .main_label21
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
