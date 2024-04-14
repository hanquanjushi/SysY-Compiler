# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl bubblesort
	.type bubblesort, @function
bubblesort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -336
	st.d $a0, $fp, -24
.bubblesort_label_entry:
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
# %op3 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label4:
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = sub i32  %op6, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op8 = icmp slt i32  %op5, %op7
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -80
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op10, label %label11, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .bubblesort_label11
	b .bubblesort_label12
.bubblesort_label11:
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
.bubblesort_label12:
# ret i32  0
	addi.w $a0, $zero, 0
	b bubblesort_ret
.bubblesort_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op17 = sub i32  %op15, %op16
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -104
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op19 = icmp slt i32  %op14, %op18
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -112
	slt $t2, $t0, $t1
	st.b $t2, $fp, -113
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -121
# br i1  %op21, label %label22, label %label35
	ld.b $t0, $fp, -121
	bnez $t0, .bubblesort_label22
	b .bubblesort_label35
.bubblesort_label22:
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op24 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op25 = getelementptr i32 , i32 * %op24, i32  %op23
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -128
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op26 = load i32 , i32 * %op25
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op27 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op29 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -168
# %op30 = getelementptr i32 , i32 * %op29, i32  %op28
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -156
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op32 = icmp sgt i32  %op26, %op31
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -180
	slt $t2, $t1, $t0
	st.b $t2, $fp, -181
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -189
# br i1  %op34, label %label38, label %label57
	ld.b $t0, $fp, -189
	bnez $t0, .bubblesort_label38
	b .bubblesort_label57
.bubblesort_label35:
# %op36 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32  %op37, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label38:
# %op39 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# %op40 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op42 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op43 = getelementptr i32 , i32 * %op42, i32  %op41
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -220
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# store i32  %op44, i32 * %op39
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op46 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op47 = getelementptr i32 , i32 * %op46, i32  %op45
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -248
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op49 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# %op51 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op52 = getelementptr i32 , i32 * %op51, i32  %op50
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -276
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  %op48, i32 * %op52
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op39
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op54 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op55 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op56 = getelementptr i32 , i32 * %op55, i32  %op54
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -304
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  %op53, i32 * %op56
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label57
	b .bubblesort_label57
.bubblesort_label57:
# %op58 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op59 = add i32  %op58, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op59, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
bubblesort_ret:
	addi.d $sp, $sp, 336
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl insertsort
	.type insertsort, @function
insertsort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -288
	st.d $a0, $fp, -24
.insertsort_label_entry:
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
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .insertsort_label3
.insertsort_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp slt i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -69
	bnez $t0, .insertsort_label9
	b .insertsort_label18
.insertsort_label9:
# %op10 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op13 = getelementptr i32 , i32 * %op12, i32  %op11
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -88
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# store i32  %op14, i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op17 = sub i32  %op16, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# store i32  %op17, i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# br label %label19
	b .insertsort_label19
.insertsort_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b insertsort_ret
.insertsort_label19:
# %op20 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op21 = icmp sgt i32  %op20, -1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -137
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -145
# br i1  %op23, label %label43, label %label35
	ld.b $t0, $fp, -145
	bnez $t0, .insertsort_label43
	b .insertsort_label35
.insertsort_label24:
# %op25 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op26 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -160
# %op27 = getelementptr i32 , i32 * %op26, i32  %op25
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -152
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op29 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op30 = add i32  %op29, 1
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op31 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op32 = getelementptr i32 , i32 * %op31, i32  %op30
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -180
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# store i32  %op28, i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op34 = sub i32  %op33, 1
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# store i32  %op34, i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# br label %label19
	b .insertsort_label19
.insertsort_label35:
# %op36 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op37 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op38 = add i32  %op37, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op39 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op40 = getelementptr i32 , i32 * %op39, i32  %op38
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -220
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# store i32  %op36, i32 * %op40
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32  %op42, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label3
	b .insertsort_label3
.insertsort_label43:
# %op44 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op45 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op46 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op47 = getelementptr i32 , i32 * %op46, i32  %op45
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -256
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op49 = icmp slt i32  %op44, %op48
	ld.w $t0, $fp, -252
	ld.w $t1, $fp, -276
	slt $t2, $t0, $t1
	st.b $t2, $fp, -277
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -277
	st.w $t0, $fp, -284
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -285
# br i1  %op51, label %label24, label %label35
	ld.b $t0, $fp, -285
	bnez $t0, .insertsort_label24
	b .insertsort_label35
insertsort_ret:
	addi.d $sp, $sp, 288
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl QuickSort
	.type QuickSort, @function
QuickSort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -576
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.QuickSort_label_entry:
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
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label21
	ld.b $t0, $fp, -93
	bnez $t0, .QuickSort_label11
	b .QuickSort_label21
.QuickSort_label11:
# %op12 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# store i32  %op13, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# %op15 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# store i32  %op15, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op18 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op19 = getelementptr i32 , i32 * %op18, i32  %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -144
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# store i32  %op20, i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label22
	b .QuickSort_label22
.QuickSort_label21:
# ret i32  0
	addi.w $a0, $zero, 0
	b QuickSort_ret
.QuickSort_label22:
# %op23 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op24 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op25 = icmp slt i32  %op23, %op24
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	slt $t2, $t0, $t1
	st.b $t2, $fp, -173
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -181
# br i1  %op27, label %label28, label %label29
	ld.b $t0, $fp, -181
	bnez $t0, .QuickSort_label28
	b .QuickSort_label29
.QuickSort_label28:
# br label %label47
	b .QuickSort_label47
.QuickSort_label29:
# %op30 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op31 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op32 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op33 = getelementptr i32 , i32 * %op32, i32  %op31
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -192
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store i32  %op30, i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# %op35 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op36 = sub i32  %op35, 1
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# store i32  %op36, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op37 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op38 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op39 = load i32 , i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op40 = call i32  @QuickSort(i32 * %op37, i32  %op38, i32  %op39)
	ld.d $a0, $fp, -240
	ld.w $a1, $fp, -244
	ld.w $a2, $fp, -248
	bl QuickSort
	st.w $a0, $fp, -252
# store i32  %op40, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op42, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# %op43 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -272
# %op44 = load i32 , i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op45 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op46 = call i32  @QuickSort(i32 * %op43, i32  %op44, i32  %op45)
	ld.d $a0, $fp, -272
	ld.w $a1, $fp, -276
	ld.w $a2, $fp, -280
	bl QuickSort
	st.w $a0, $fp, -284
# store i32  %op46, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# br label %label21
	b .QuickSort_label21
.QuickSort_label47:
# %op48 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op49 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op50 = icmp slt i32  %op48, %op49
	ld.w $t0, $fp, -288
	ld.w $t1, $fp, -292
	slt $t2, $t0, $t1
	st.b $t2, $fp, -293
# %op51 = zext i1  %op50 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -301
# br i1  %op52, label %label62, label %label56
	ld.b $t0, $fp, -301
	bnez $t0, .QuickSort_label62
	b .QuickSort_label56
.QuickSort_label53:
# %op54 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op55 = sub i32  %op54, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op55, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label47
	b .QuickSort_label47
.QuickSort_label56:
# %op57 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op58 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op59 = icmp slt i32  %op57, %op58
	ld.w $t0, $fp, -316
	ld.w $t1, $fp, -320
	slt $t2, $t0, $t1
	st.b $t2, $fp, -321
# %op60 = zext i1  %op59 to i32 
	ld.b $t0, $fp, -321
	st.w $t0, $fp, -328
# %op61 = icmp ne i32  %op60, 0
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -329
# br i1  %op61, label %label72, label %label82
	ld.b $t0, $fp, -329
	bnez $t0, .QuickSort_label72
	b .QuickSort_label82
.QuickSort_label62:
# %op63 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op64 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -344
# %op65 = getelementptr i32 , i32 * %op64, i32  %op63
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -336
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op67 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op68 = sub i32  %op67, 1
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op69 = icmp sgt i32  %op66, %op68
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -364
	slt $t2, $t1, $t0
	st.b $t2, $fp, -365
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -365
	st.w $t0, $fp, -372
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -373
# br i1  %op71, label %label53, label %label56
	ld.b $t0, $fp, -373
	bnez $t0, .QuickSort_label53
	b .QuickSort_label56
.QuickSort_label72:
# %op73 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op74 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -392
# %op75 = getelementptr i32 , i32 * %op74, i32  %op73
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -380
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op76 = load i32 , i32 * %op75
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op77 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op78 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op79 = getelementptr i32 , i32 * %op78, i32  %op77
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -408
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store i32  %op76, i32 * %op79
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -404
	st.w $t1, $t0, 0
# %op80 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op81 = add i32  %op80, 1
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# store i32  %op81, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -432
	st.w $t1, $t0, 0
# br label %label82
	b .QuickSort_label82
.QuickSort_label82:
# br label %label83
	b .QuickSort_label83
.QuickSort_label83:
# %op84 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op85 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op86 = icmp slt i32  %op84, %op85
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -440
	slt $t2, $t0, $t1
	st.b $t2, $fp, -441
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -441
	st.w $t0, $fp, -448
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -449
# br i1  %op88, label %label98, label %label92
	ld.b $t0, $fp, -449
	bnez $t0, .QuickSort_label98
	b .QuickSort_label92
.QuickSort_label89:
# %op90 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op91 = add i32  %op90, 1
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -460
# store i32  %op91, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -460
	st.w $t1, $t0, 0
# br label %label83
	b .QuickSort_label83
.QuickSort_label92:
# %op93 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op94 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op95 = icmp slt i32  %op93, %op94
	ld.w $t0, $fp, -464
	ld.w $t1, $fp, -468
	slt $t2, $t0, $t1
	st.b $t2, $fp, -469
# %op96 = zext i1  %op95 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op97 = icmp ne i32  %op96, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -477
# br i1  %op97, label %label107, label %label117
	ld.b $t0, $fp, -477
	bnez $t0, .QuickSort_label107
	b .QuickSort_label117
.QuickSort_label98:
# %op99 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op100 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -496
# %op101 = getelementptr i32 , i32 * %op100, i32  %op99
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -484
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op102 = load i32 , i32 * %op101
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op103 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op104 = icmp slt i32  %op102, %op103
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -512
	slt $t2, $t0, $t1
	st.b $t2, $fp, -513
# %op105 = zext i1  %op104 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op106 = icmp ne i32  %op105, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -521
# br i1  %op106, label %label89, label %label92
	ld.b $t0, $fp, -521
	bnez $t0, .QuickSort_label89
	b .QuickSort_label92
.QuickSort_label107:
# %op108 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op109 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -536
# %op110 = getelementptr i32 , i32 * %op109, i32  %op108
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -528
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op111 = load i32 , i32 * %op110
	ld.d $t0, $fp, -544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op112 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op113 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -560
# %op114 = getelementptr i32 , i32 * %op113, i32  %op112
	ld.d $t0, $fp, -560
	ld.w $t1, $fp, -552
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# store i32  %op111, i32 * %op114
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -548
	st.w $t1, $t0, 0
# %op115 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op116 = sub i32  %op115, 1
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# store i32  %op116, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# br label %label117
	b .QuickSort_label117
.QuickSort_label117:
# br label %label22
	b .QuickSort_label22
QuickSort_ret:
	addi.d $sp, $sp, 576
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getMid
	.type getMid, @function
getMid:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
	st.d $a0, $fp, -24
.getMid_label_entry:
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
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op4 = srem i32  %op3, 2
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op5 = icmp eq i32  %op4, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -61
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -69
# br i1  %op7, label %label8, label %label22
	ld.b $t0, $fp, -69
	bnez $t0, .getMid_label8
	b .getMid_label22
.getMid_label8:
# %op9 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op10 = sdiv i32  %op9, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op10, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op12 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op13 = getelementptr i32 , i32 * %op12, i32  %op11
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -84
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op15 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op16 = sub i32  %op15, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op17 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op18 = getelementptr i32 , i32 * %op17, i32  %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -116
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op20 = add i32  %op14, %op19
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op21 = sdiv i32  %op20, 2
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# ret i32  %op21
	ld.w $a0, $fp, -148
	b getMid_ret
.getMid_label22:
# %op23 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op24 = sdiv i32  %op23, 2
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op24, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op25 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op26 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -168
# %op27 = getelementptr i32 , i32 * %op26, i32  %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -160
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# ret i32  %op28
	ld.w $a0, $fp, -180
	b getMid_ret
getMid_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getMost
	.type getMost, @function
getMost:
	lu12i.w $t0, 1
	ori $t0, $t0, 192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
.getMost_label_entry:
# %op1 = alloca i32 *
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca [1000 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 48
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .getMost_label4
.getMost_label4:
# %op5 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op6 = icmp slt i32  %op5, 1000
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 31
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op7 = zext i1  %op6 to i32 
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
# %op8 = icmp ne i32  %op7, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	lu12i.w $t8, -1
	ori $t8, $t8, 23
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op8, label %label9, label %label14
	lu12i.w $t0, -1
	ori $t0, $t0, 23
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label9
	b .getMost_label14
.getMost_label9:
# %op10 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op11 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op10
	ld.d $t0, $fp, -48
	lu12i.w $t1, -1
	ori $t1, $t1, 16
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op11
	lu12i.w $t0, -1
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op13 = add i32  %op12, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 4
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op13, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 0
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label4
	b .getMost_label4
.getMost_label14:
# store i32  0, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op16 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op15
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label17
	b .getMost_label17
.getMost_label17:
# %op18 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op19 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op20 = icmp slt i32  %op18, %op19
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op21 = zext i1  %op20 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op22 = icmp ne i32  %op21, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	lu12i.w $t8, -2
	ori $t8, $t8, 4051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op22, label %label23, label %label42
	lu12i.w $t0, -2
	ori $t0, $t0, 4051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label23
	b .getMost_label42
.getMost_label23:
# %op24 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op25 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op26 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op27 = getelementptr i32 , i32 * %op26, i32  %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op28 = load i32 , i32 * %op27
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op28, i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op30 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op29
	ld.d $t0, $fp, -48
	lu12i.w $t1, -2
	ori $t1, $t1, 4008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op31 = load i32 , i32 * %op30
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op32 = add i32  %op31, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op33 = load i32 , i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op34 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op33
	ld.d $t0, $fp, -48
	lu12i.w $t1, -2
	ori $t1, $t1, 3988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op32, i32 * %op34
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op35 = load i32 , i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op36 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op35
	ld.d $t0, $fp, -48
	lu12i.w $t1, -2
	ori $t1, $t1, 3972
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
# %op37 = load i32 , i32 * %op36
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
# %op38 = load i32 , i32 * %op15
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op39 = icmp sgt i32  %op37, %op38
	lu12i.w $t0, -2
	ori $t0, $t0, 3956
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
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op40 = zext i1  %op39 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op41 = icmp ne i32  %op40, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	lu12i.w $t8, -2
	ori $t8, $t8, 3943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op41, label %label44, label %label49
	lu12i.w $t0, -2
	ori $t0, $t0, 3943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label44
	b .getMost_label49
.getMost_label42:
# %op43 = load i32 , i32 * %op16
	lu12i.w $t0, -2
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# ret i32  %op43
	lu12i.w $a0, -2
	ori $a0, $a0, 3936
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b getMost_ret
.getMost_label44:
# %op45 = load i32 , i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op46 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op45
	ld.d $t0, $fp, -48
	lu12i.w $t1, -2
	ori $t1, $t1, 3932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op47 = load i32 , i32 * %op46
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op47, i32 * %op15
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op24
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op48, i32 * %op16
	lu12i.w $t0, -2
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label49
	b .getMost_label49
.getMost_label49:
# %op50 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op51 = add i32  %op50, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op51, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label17
	b .getMost_label17
getMost_ret:
	lu12i.w $t0, 1
	ori $t0, $t0, 192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl revert
	.type revert, @function
revert:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -224
	st.d $a0, $fp, -24
.revert_label_entry:
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
# %op3 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# %op4 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .revert_label5
.revert_label5:
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	slt $t2, $t0, $t1
	st.b $t2, $fp, -93
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -101
# br i1  %op10, label %label11, label %label31
	ld.b $t0, $fp, -101
	bnez $t0, .revert_label11
	b .revert_label31
.revert_label11:
# %op12 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op13 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -120
# %op14 = getelementptr i32 , i32 * %op13, i32  %op12
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -108
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# store i32  %op15, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op17 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op18 = getelementptr i32 , i32 * %op17, i32  %op16
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -136
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op21 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -168
# %op22 = getelementptr i32 , i32 * %op21, i32  %op20
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -160
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  %op19, i32 * %op22
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op23 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op24 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op25 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op26 = getelementptr i32 , i32 * %op25, i32  %op24
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -184
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# store i32  %op23, i32 * %op26
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# store i32  %op28, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op30 = sub i32  %op29, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op30, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label5
	b .revert_label5
.revert_label31:
# ret i32  0
	addi.w $a0, $zero, 0
	b revert_ret
revert_ret:
	addi.d $sp, $sp, 224
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl arrCopy
	.type arrCopy, @function
arrCopy:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.arrCopy_label_entry:
# %op2 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 *
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -56
# store i32 * %arg1, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .arrCopy_label5
.arrCopy_label5:
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label21
	ld.b $t0, $fp, -93
	bnez $t0, .arrCopy_label11
	b .arrCopy_label21
.arrCopy_label11:
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op13 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -112
# %op14 = getelementptr i32 , i32 * %op13, i32  %op12
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -100
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op17 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op18 = getelementptr i32 , i32 * %op17, i32  %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -128
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  %op15, i32 * %op18
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op20, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label5
	b .arrCopy_label5
.arrCopy_label21:
# ret i32  0
	addi.w $a0, $zero, 0
	b arrCopy_ret
arrCopy_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl calSum
	.type calSum, @function
calSum:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.calSum_label_entry:
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
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label6
	b .calSum_label6
.calSum_label6:
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op8 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op9 = icmp slt i32  %op7, %op8
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -109
# br i1  %op11, label %label12, label %label27
	ld.b $t0, $fp, -109
	bnez $t0, .calSum_label12
	b .calSum_label27
.calSum_label12:
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op15 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op16 = getelementptr i32 , i32 * %op15, i32  %op14
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -120
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op17 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op18 = add i32  %op13, %op17
	ld.w $t0, $fp, -116
	ld.w $t1, $fp, -140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op18, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op21 = srem i32  %op19, %op20
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op22 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op23 = sub i32  %op22, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op24 = icmp ne i32  %op21, %op23
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -164
	bne  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -165
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -173
# br i1  %op26, label %label28, label %label32
	ld.b $t0, $fp, -173
	bnez $t0, .calSum_label28
	b .calSum_label32
.calSum_label27:
# ret i32  0
	addi.w $a0, $zero, 0
	b calSum_ret
.calSum_label28:
# %op29 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op30 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op31 = getelementptr i32 , i32 * %op30, i32  %op29
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -180
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label37
	b .calSum_label37
.calSum_label32:
# %op33 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op34 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op35 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op36 = getelementptr i32 , i32 * %op35, i32  %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -208
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op33, i32 * %op36
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -204
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label37
	b .calSum_label37
.calSum_label37:
# %op38 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op39 = add i32  %op38, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# store i32  %op39, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label6
	b .calSum_label6
calSum_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl avgPooling
	.type avgPooling, @function
avgPooling:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -448
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.avgPooling_label_entry:
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
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# br label %label7
	b .avgPooling_label7
.avgPooling_label7:
# %op8 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op9 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op10 = icmp slt i32  %op8, %op9
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	slt $t2, $t0, $t1
	st.b $t2, $fp, -117
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -125
# br i1  %op12, label %label13, label %label20
	ld.b $t0, $fp, -125
	bnez $t0, .avgPooling_label13
	b .avgPooling_label20
.avgPooling_label13:
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op16 = sub i32  %op15, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op17 = icmp slt i32  %op14, %op16
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -140
	slt $t2, $t0, $t1
	st.b $t2, $fp, -141
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -149
# br i1  %op19, label %label25, label %label32
	ld.b $t0, $fp, -149
	bnez $t0, .avgPooling_label25
	b .avgPooling_label32
.avgPooling_label20:
# %op21 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op22 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op23 = sub i32  %op21, %op22
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op24 = add i32  %op23, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# store i32  %op24, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# br label %label77
	b .avgPooling_label77
.avgPooling_label25:
# %op26 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op27 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op28 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op29 = getelementptr i32 , i32 * %op28, i32  %op27
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -176
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op31 = add i32  %op26, %op30
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32  %op31, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# br label %label39
	b .avgPooling_label39
.avgPooling_label32:
# %op33 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op34 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op35 = sub i32  %op34, 1
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op36 = icmp eq i32  %op33, %op35
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -212
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -213
# %op37 = zext i1  %op36 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -221
# br i1  %op38, label %label42, label %label51
	ld.b $t0, $fp, -221
	bnez $t0, .avgPooling_label42
	b .avgPooling_label51
.avgPooling_label39:
# %op40 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# store i32  %op41, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label7
	b .avgPooling_label7
.avgPooling_label42:
# %op43 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op44 = getelementptr i32 , i32 * %op43, i32  0
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# store i32  %op45, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op46 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op47 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op48 = sdiv i32  %op46, %op47
	ld.w $t0, $fp, -256
	ld.w $t1, $fp, -260
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -264
# %op49 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -272
# %op50 = getelementptr i32 , i32 * %op49, i32  0
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# store i32  %op48, i32 * %op50
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -264
	st.w $t1, $t0, 0
# br label %label76
	b .avgPooling_label76
.avgPooling_label51:
# %op52 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op53 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op54 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -296
# %op55 = getelementptr i32 , i32 * %op54, i32  %op53
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -288
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op56 = load i32 , i32 * %op55
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op57 = add i32  %op52, %op56
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -308
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op58 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op59 = sub i32  %op57, %op58
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -316
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# store i32  %op59, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -320
	st.w $t1, $t0, 0
# %op60 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op61 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op62 = sub i32  %op60, %op61
	ld.w $t0, $fp, -324
	ld.w $t1, $fp, -328
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -332
# %op63 = add i32  %op62, 1
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op64 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -344
# %op65 = getelementptr i32 , i32 * %op64, i32  %op63
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -336
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# store i32  %op66, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -356
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op68 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op69 = sdiv i32  %op67, %op68
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op70 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op71 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op72 = sub i32  %op70, %op71
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -376
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# %op73 = add i32  %op72, 1
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op74 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -392
# %op75 = getelementptr i32 , i32 * %op74, i32  %op73
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -384
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# store i32  %op69, i32 * %op75
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -368
	st.w $t1, $t0, 0
# br label %label76
	b .avgPooling_label76
.avgPooling_label76:
# br label %label39
	b .avgPooling_label39
.avgPooling_label77:
# %op78 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op79 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op80 = icmp slt i32  %op78, %op79
	ld.w $t0, $fp, -404
	ld.w $t1, $fp, -408
	slt $t2, $t0, $t1
	st.b $t2, $fp, -409
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -409
	st.w $t0, $fp, -416
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -417
# br i1  %op82, label %label83, label %label89
	ld.b $t0, $fp, -417
	bnez $t0, .avgPooling_label83
	b .avgPooling_label89
.avgPooling_label83:
# %op84 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op85 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -432
# %op86 = getelementptr i32 , i32 * %op85, i32  %op84
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -424
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# store i32  0, i32 * %op86
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op87 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op88 = add i32  %op87, 1
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# store i32  %op88, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -448
	st.w $t1, $t0, 0
# br label %label77
	b .avgPooling_label77
.avgPooling_label89:
# ret i32  0
	addi.w $a0, $zero, 0
	b avgPooling_ret
avgPooling_ret:
	addi.d $sp, $sp, 448
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1152
.main_label_entry:
# store i32  32, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op0 = alloca [32 x i32 ]
	addi.d $t1, $fp, -152
	st.d $t1, $fp, -24
# %op1 = alloca [32 x i32 ]
	addi.d $t1, $fp, -288
	st.d $t1, $fp, -160
# %op2 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -296
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -304
# store i32  23, i32 * %op3
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 23
	st.w $t1, $t0, 0
# %op4 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -312
# store i32  89, i32 * %op4
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 89
	st.w $t1, $t0, 0
# %op5 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -320
# store i32  26, i32 * %op5
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 26
	st.w $t1, $t0, 0
# %op6 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -328
# store i32  282, i32 * %op6
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 282
	st.w $t1, $t0, 0
# %op7 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -336
# store i32  254, i32 * %op7
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 254
	st.w $t1, $t0, 0
# %op8 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -344
# store i32  27, i32 * %op8
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 27
	st.w $t1, $t0, 0
# %op9 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -352
# store i32  5, i32 * %op9
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op10 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -360
# store i32  83, i32 * %op10
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 83
	st.w $t1, $t0, 0
# %op11 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -368
# store i32  273, i32 * %op11
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 273
	st.w $t1, $t0, 0
# %op12 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -376
# store i32  574, i32 * %op12
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 574
	st.w $t1, $t0, 0
# %op13 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -384
# store i32  905, i32 * %op13
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 905
	st.w $t1, $t0, 0
# %op14 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -392
# store i32  354, i32 * %op14
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 354
	st.w $t1, $t0, 0
# %op15 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -400
# store i32  657, i32 * %op15
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 657
	st.w $t1, $t0, 0
# %op16 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -408
# store i32  935, i32 * %op16
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 935
	st.w $t1, $t0, 0
# %op17 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -416
# store i32  264, i32 * %op17
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 264
	st.w $t1, $t0, 0
# %op18 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -424
# store i32  639, i32 * %op18
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 639
	st.w $t1, $t0, 0
# %op19 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -432
# store i32  459, i32 * %op19
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 459
	st.w $t1, $t0, 0
# %op20 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -440
# store i32  29, i32 * %op20
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 29
	st.w $t1, $t0, 0
# %op21 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -448
# store i32  68, i32 * %op21
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 68
	st.w $t1, $t0, 0
# %op22 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  20
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -456
# store i32  929, i32 * %op22
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 929
	st.w $t1, $t0, 0
# %op23 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  21
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -464
# store i32  756, i32 * %op23
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 756
	st.w $t1, $t0, 0
# %op24 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  22
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -472
# store i32  452, i32 * %op24
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 452
	st.w $t1, $t0, 0
# %op25 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  23
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -480
# store i32  279, i32 * %op25
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 279
	st.w $t1, $t0, 0
# %op26 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  24
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -488
# store i32  58, i32 * %op26
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 58
	st.w $t1, $t0, 0
# %op27 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  25
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -496
# store i32  87, i32 * %op27
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 87
	st.w $t1, $t0, 0
# %op28 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  26
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -504
# store i32  96, i32 * %op28
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 96
	st.w $t1, $t0, 0
# %op29 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  27
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -512
# store i32  36, i32 * %op29
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 36
	st.w $t1, $t0, 0
# %op30 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  28
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -520
# store i32  39, i32 * %op30
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 39
	st.w $t1, $t0, 0
# %op31 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  29
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -528
# store i32  28, i32 * %op31
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 28
	st.w $t1, $t0, 0
# %op32 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  30
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -536
# store i32  1, i32 * %op32
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op33 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  31
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -544
# store i32  290, i32 * %op33
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 290
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	addi.d $t1, $fp, -556
	st.d $t1, $fp, -552
# %op35 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -568
# %op36 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -576
# %op37 = call i32  @arrCopy(i32 * %op35, i32 * %op36)
	ld.d $a0, $fp, -568
	ld.d $a1, $fp, -576
	bl arrCopy
	st.w $a0, $fp, -580
# store i32  %op37, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -580
	st.w $t1, $t0, 0
# %op38 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -592
# %op39 = call i32  @revert(i32 * %op38)
	ld.d $a0, $fp, -592
	bl revert
	st.w $a0, $fp, -596
# store i32  %op39, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -596
	st.w $t1, $t0, 0
# %op40 = alloca i32 
	addi.d $t1, $fp, -612
	st.d $t1, $fp, -608
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label41:
# %op42 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op43 = icmp slt i32  %op42, 32
	ld.w $t0, $fp, -616
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -617
# %op44 = zext i1  %op43 to i32 
	ld.b $t0, $fp, -617
	st.w $t0, $fp, -624
# %op45 = icmp ne i32  %op44, 0
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -625
# br i1  %op45, label %label46, label %label53
	ld.b $t0, $fp, -625
	bnez $t0, .main_label46
	b .main_label53
.main_label46:
# %op47 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op48 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op47
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -632
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -640
# %op49 = load i32 , i32 * %op48
	ld.d $t0, $fp, -640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# store i32  %op49, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -644
	st.w $t1, $t0, 0
# %op50 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# call void @putint(i32  %op50)
	ld.w $a0, $fp, -648
	bl putint
# %op51 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op52 = add i32  %op51, 1
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# store i32  %op52, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -656
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label53:
# %op54 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -664
# %op55 = call i32  @bubblesort(i32 * %op54)
	ld.d $a0, $fp, -664
	bl bubblesort
	st.w $a0, $fp, -668
# store i32  %op55, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -668
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label56
	b .main_label56
.main_label56:
# %op57 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op58 = icmp slt i32  %op57, 32
	ld.w $t0, $fp, -672
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -673
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -673
	st.w $t0, $fp, -680
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -681
# br i1  %op60, label %label61, label %label68
	ld.b $t0, $fp, -681
	bnez $t0, .main_label61
	b .main_label68
.main_label61:
# %op62 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op63 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op62
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -688
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -696
# %op64 = load i32 , i32 * %op63
	ld.d $t0, $fp, -696
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# store i32  %op64, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -700
	st.w $t1, $t0, 0
# %op65 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -704
# call void @putint(i32  %op65)
	ld.w $a0, $fp, -704
	bl putint
# %op66 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op67 = add i32  %op66, 1
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# store i32  %op67, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -712
	st.w $t1, $t0, 0
# br label %label56
	b .main_label56
.main_label68:
# %op69 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -720
# %op70 = call i32  @getMid(i32 * %op69)
	ld.d $a0, $fp, -720
	bl getMid
	st.w $a0, $fp, -724
# store i32  %op70, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -724
	st.w $t1, $t0, 0
# %op71 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -728
# call void @putint(i32  %op71)
	ld.w $a0, $fp, -728
	bl putint
# %op72 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -736
# %op73 = call i32  @getMost(i32 * %op72)
	ld.d $a0, $fp, -736
	bl getMost
	st.w $a0, $fp, -740
# store i32  %op73, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -740
	st.w $t1, $t0, 0
# %op74 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -744
# call void @putint(i32  %op74)
	ld.w $a0, $fp, -744
	bl putint
# %op75 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -752
# %op76 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -760
# %op77 = call i32  @arrCopy(i32 * %op75, i32 * %op76)
	ld.d $a0, $fp, -752
	ld.d $a1, $fp, -760
	bl arrCopy
	st.w $a0, $fp, -764
# store i32  %op77, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -764
	st.w $t1, $t0, 0
# %op78 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -776
# %op79 = call i32  @bubblesort(i32 * %op78)
	ld.d $a0, $fp, -776
	bl bubblesort
	st.w $a0, $fp, -780
# store i32  %op79, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -780
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label80
	b .main_label80
.main_label80:
# %op81 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# %op82 = icmp slt i32  %op81, 32
	ld.w $t0, $fp, -784
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -785
# %op83 = zext i1  %op82 to i32 
	ld.b $t0, $fp, -785
	st.w $t0, $fp, -792
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -792
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -793
# br i1  %op84, label %label85, label %label92
	ld.b $t0, $fp, -793
	bnez $t0, .main_label85
	b .main_label92
.main_label85:
# %op86 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op87 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op86
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -800
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -808
# %op88 = load i32 , i32 * %op87
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# store i32  %op88, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -812
	st.w $t1, $t0, 0
# %op89 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -816
# call void @putint(i32  %op89)
	ld.w $a0, $fp, -816
	bl putint
# %op90 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op91 = add i32  %op90, 1
	ld.w $t0, $fp, -820
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -824
# store i32  %op91, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -824
	st.w $t1, $t0, 0
# br label %label80
	b .main_label80
.main_label92:
# %op93 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -832
# %op94 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -840
# %op95 = call i32  @arrCopy(i32 * %op93, i32 * %op94)
	ld.d $a0, $fp, -832
	ld.d $a1, $fp, -840
	bl arrCopy
	st.w $a0, $fp, -844
# store i32  %op95, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -844
	st.w $t1, $t0, 0
# %op96 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -856
# %op97 = call i32  @insertsort(i32 * %op96)
	ld.d $a0, $fp, -856
	bl insertsort
	st.w $a0, $fp, -860
# store i32  %op97, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -860
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label98
	b .main_label98
.main_label98:
# %op99 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -864
# %op100 = icmp slt i32  %op99, 32
	ld.w $t0, $fp, -864
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -865
# %op101 = zext i1  %op100 to i32 
	ld.b $t0, $fp, -865
	st.w $t0, $fp, -872
# %op102 = icmp ne i32  %op101, 0
	ld.w $t0, $fp, -872
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -873
# br i1  %op102, label %label103, label %label110
	ld.b $t0, $fp, -873
	bnez $t0, .main_label103
	b .main_label110
.main_label103:
# %op104 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -880
# %op105 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op104
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -880
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -888
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# store i32  %op106, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -892
	st.w $t1, $t0, 0
# %op107 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# call void @putint(i32  %op107)
	ld.w $a0, $fp, -896
	bl putint
# %op108 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op109 = add i32  %op108, 1
	ld.w $t0, $fp, -900
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# store i32  %op109, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -904
	st.w $t1, $t0, 0
# br label %label98
	b .main_label98
.main_label110:
# %op111 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -912
# %op112 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -920
# %op113 = call i32  @arrCopy(i32 * %op111, i32 * %op112)
	ld.d $a0, $fp, -912
	ld.d $a1, $fp, -920
	bl arrCopy
	st.w $a0, $fp, -924
# store i32  %op113, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -924
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  31, i32 * %op34
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 31
	st.w $t1, $t0, 0
# %op114 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -936
# %op115 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op116 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# %op117 = call i32  @QuickSort(i32 * %op114, i32  %op115, i32  %op116)
	ld.d $a0, $fp, -936
	ld.w $a1, $fp, -940
	ld.w $a2, $fp, -944
	bl QuickSort
	st.w $a0, $fp, -948
# store i32  %op117, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -948
	st.w $t1, $t0, 0
# br label %label118
	b .main_label118
.main_label118:
# %op119 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -952
# %op120 = icmp slt i32  %op119, 32
	ld.w $t0, $fp, -952
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -953
# %op121 = zext i1  %op120 to i32 
	ld.b $t0, $fp, -953
	st.w $t0, $fp, -960
# %op122 = icmp ne i32  %op121, 0
	ld.w $t0, $fp, -960
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -961
# br i1  %op122, label %label123, label %label130
	ld.b $t0, $fp, -961
	bnez $t0, .main_label123
	b .main_label130
.main_label123:
# %op124 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -968
# %op125 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op124
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -968
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -976
# %op126 = load i32 , i32 * %op125
	ld.d $t0, $fp, -976
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# store i32  %op126, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -980
	st.w $t1, $t0, 0
# %op127 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -984
# call void @putint(i32  %op127)
	ld.w $a0, $fp, -984
	bl putint
# %op128 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op129 = add i32  %op128, 1
	ld.w $t0, $fp, -988
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -992
# store i32  %op129, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -992
	st.w $t1, $t0, 0
# br label %label118
	b .main_label118
.main_label130:
# %op131 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1000
# %op132 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1008
# %op133 = call i32  @arrCopy(i32 * %op131, i32 * %op132)
	ld.d $a0, $fp, -1000
	ld.d $a1, $fp, -1008
	bl arrCopy
	st.w $a0, $fp, -1012
# store i32  %op133, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1012
	st.w $t1, $t0, 0
# %op134 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1024
# %op135 = call i32  @calSum(i32 * %op134, i32  4)
	ld.d $a0, $fp, -1024
	addi.w $a1, $zero, 4
	bl calSum
	st.w $a0, $fp, -1028
# store i32  %op135, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1028
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label136
	b .main_label136
.main_label136:
# %op137 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1032
# %op138 = icmp slt i32  %op137, 32
	ld.w $t0, $fp, -1032
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1033
# %op139 = zext i1  %op138 to i32 
	ld.b $t0, $fp, -1033
	st.w $t0, $fp, -1040
# %op140 = icmp ne i32  %op139, 0
	ld.w $t0, $fp, -1040
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1041
# br i1  %op140, label %label141, label %label148
	ld.b $t0, $fp, -1041
	bnez $t0, .main_label141
	b .main_label148
.main_label141:
# %op142 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1048
# %op143 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op142
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -1048
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1056
# %op144 = load i32 , i32 * %op143
	ld.d $t0, $fp, -1056
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1060
# store i32  %op144, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1060
	st.w $t1, $t0, 0
# %op145 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1064
# call void @putint(i32  %op145)
	ld.w $a0, $fp, -1064
	bl putint
# %op146 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op147 = add i32  %op146, 1
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1072
# store i32  %op147, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -1072
	st.w $t1, $t0, 0
# br label %label136
	b .main_label136
.main_label148:
# %op149 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1080
# %op150 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1088
# %op151 = call i32  @arrCopy(i32 * %op149, i32 * %op150)
	ld.d $a0, $fp, -1080
	ld.d $a1, $fp, -1088
	bl arrCopy
	st.w $a0, $fp, -1092
# store i32  %op151, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1092
	st.w $t1, $t0, 0
# %op152 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1104
# %op153 = call i32  @avgPooling(i32 * %op152, i32  3)
	ld.d $a0, $fp, -1104
	addi.w $a1, $zero, 3
	bl avgPooling
	st.w $a0, $fp, -1108
# store i32  %op153, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1108
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label154
	b .main_label154
.main_label154:
# %op155 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1112
# %op156 = icmp slt i32  %op155, 32
	ld.w $t0, $fp, -1112
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1113
# %op157 = zext i1  %op156 to i32 
	ld.b $t0, $fp, -1113
	st.w $t0, $fp, -1120
# %op158 = icmp ne i32  %op157, 0
	ld.w $t0, $fp, -1120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1121
# br i1  %op158, label %label159, label %label166
	ld.b $t0, $fp, -1121
	bnez $t0, .main_label159
	b .main_label166
.main_label159:
# %op160 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1128
# %op161 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op160
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -1128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1136
# %op162 = load i32 , i32 * %op161
	ld.d $t0, $fp, -1136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1140
# store i32  %op162, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1140
	st.w $t1, $t0, 0
# %op163 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1144
# call void @putint(i32  %op163)
	ld.w $a0, $fp, -1144
	bl putint
# %op164 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op165 = add i32  %op164, 1
	ld.w $t0, $fp, -1148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1152
# store i32  %op165, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -1152
	st.w $t1, $t0, 0
# br label %label154
	b .main_label154
.main_label166:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1152
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
