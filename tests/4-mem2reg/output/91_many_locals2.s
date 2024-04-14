# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# br label %label1
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -24
	b .main_label1
.main_label1:
# %op2 = phi i32  [ %op0, %label_entry ], [ %op7, %label6 ]
# %op3 = icmp eq i32  %op2, 5
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
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
# br i1  %op5, label %label6, label %label8
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label8
.main_label6:
# %op7 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# br label %label1
	ld.w $t0, $fp, -40
	st.w $t0, $fp, -24
	b .main_label1
.main_label8:
# %op9 = add i32  0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op10 = add i32  %op9, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op11 = add i32  %op10, 1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op12 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op13 = add i32  %op12, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op14 = add i32  %op13, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op17 = add i32  %op16, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op18 = add i32  %op17, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op21 = add i32  %op20, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op23 = add i32  %op22, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op24 = add i32  %op23, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op25 = add i32  %op24, 1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op26 = add i32  %op25, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op27 = add i32  %op26, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op29 = add i32  %op28, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op30 = add i32  %op29, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op32 = add i32  %op31, 1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op34 = add i32  %op33, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op35 = add i32  %op34, 1
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op36 = add i32  %op35, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# call void @putint(i32  0)
	addi.w $a0, $zero, 0
	bl putint
# call void @putint(i32  %op9)
	ld.w $a0, $fp, -44
	bl putint
# call void @putint(i32  %op10)
	ld.w $a0, $fp, -48
	bl putint
# call void @putint(i32  %op11)
	ld.w $a0, $fp, -52
	bl putint
# call void @putint(i32  %op12)
	ld.w $a0, $fp, -56
	bl putint
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -60
	bl putint
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -64
	bl putint
# call void @putint(i32  %op15)
	ld.w $a0, $fp, -68
	bl putint
# call void @putint(i32  %op16)
	ld.w $a0, $fp, -72
	bl putint
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -76
	bl putint
# call void @putint(i32  %op18)
	ld.w $a0, $fp, -80
	bl putint
# call void @putint(i32  %op19)
	ld.w $a0, $fp, -84
	bl putint
# call void @putint(i32  %op20)
	ld.w $a0, $fp, -88
	bl putint
# call void @putint(i32  %op21)
	ld.w $a0, $fp, -92
	bl putint
# call void @putint(i32  %op22)
	ld.w $a0, $fp, -96
	bl putint
# call void @putint(i32  %op23)
	ld.w $a0, $fp, -100
	bl putint
# call void @putint(i32  %op24)
	ld.w $a0, $fp, -104
	bl putint
# call void @putint(i32  %op25)
	ld.w $a0, $fp, -108
	bl putint
# call void @putint(i32  %op26)
	ld.w $a0, $fp, -112
	bl putint
# call void @putint(i32  %op27)
	ld.w $a0, $fp, -116
	bl putint
# call void @putint(i32  %op28)
	ld.w $a0, $fp, -120
	bl putint
# call void @putint(i32  %op29)
	ld.w $a0, $fp, -124
	bl putint
# call void @putint(i32  %op30)
	ld.w $a0, $fp, -128
	bl putint
# call void @putint(i32  %op31)
	ld.w $a0, $fp, -132
	bl putint
# call void @putint(i32  %op32)
	ld.w $a0, $fp, -136
	bl putint
# call void @putint(i32  %op33)
	ld.w $a0, $fp, -140
	bl putint
# call void @putint(i32  %op34)
	ld.w $a0, $fp, -144
	bl putint
# call void @putint(i32  %op35)
	ld.w $a0, $fp, -148
	bl putint
# call void @putint(i32  %op36)
	ld.w $a0, $fp, -152
	bl putint
# call void @putint(i32  %op37)
	ld.w $a0, $fp, -156
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# call void @putint(i32  %op2)
	ld.w $a0, $fp, -24
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  %op33
	ld.w $a0, $fp, -140
	b main_ret
main_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
