# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl g
	.data
	.type g, @object
	.size g, 4
g:
	.word 0
	.text
	.globl func
	.type func, @function
func:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.func_label_entry:
# %op1 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = add i32  %op1, %arg0
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# store i32  %op2, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# call void @putint(i32  %op3)
	ld.w $a0, $fp, -32
	bl putint
# %op4 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# ret i32  %op4
	ld.w $a0, $fp, -36
	b func_ret
func_ret:
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
	addi.d $sp, $sp, -128
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# %op1 = icmp sgt i32  %op0, 10
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 10
	slt $t2, $t1, $t0
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
# br i1  %op3, label %label11, label %label5
	ld.b $t0, $fp, -29
	bnez $t0, .main_label11
	b .main_label5
.main_label4:
# br label %label6
	b .main_label6
.main_label5:
# br label %label6
	b .main_label6
.main_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# %op8 = icmp sgt i32  %op7, 11
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 11
	slt $t2, $t1, $t0
	st.b $t2, $fp, -37
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op10, label %label21, label %label15
	ld.b $t0, $fp, -45
	bnez $t0, .main_label21
	b .main_label15
.main_label11:
# %op12 = call i32  @func(i32  %op0)
	ld.w $a0, $fp, -20
	bl func
	st.w $a0, $fp, -52
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -53
# br i1  %op13, label %label4, label %label5
	ld.b $t0, $fp, -53
	bnez $t0, .main_label4
	b .main_label5
.main_label14:
# br label %label16
	b .main_label16
.main_label15:
# br label %label16
	b .main_label16
.main_label16:
# %op17 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -60
# %op18 = icmp sle i32  %op17, 99
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 99
	bge  $t1, $t0, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -61
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -69
# br i1  %op20, label %label24, label %label31
	ld.b $t0, $fp, -69
	bnez $t0, .main_label24
	b .main_label31
.main_label21:
# %op22 = call i32  @func(i32  %op7)
	ld.w $a0, $fp, -36
	bl func
	st.w $a0, $fp, -76
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -77
# br i1  %op23, label %label14, label %label15
	ld.b $t0, $fp, -77
	bnez $t0, .main_label14
	b .main_label15
.main_label24:
# br label %label26
	b .main_label26
.main_label25:
# br label %label26
	b .main_label26
.main_label26:
# %op27 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -84
# %op28 = icmp sle i32  %op27, 100
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 100
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -85
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -93
# br i1  %op30, label %label34, label %label39
	ld.b $t0, $fp, -93
	bnez $t0, .main_label34
	b .main_label39
.main_label31:
# %op32 = call i32  @func(i32  %op17)
	ld.w $a0, $fp, -60
	bl func
	st.w $a0, $fp, -100
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -101
# br i1  %op33, label %label24, label %label25
	ld.b $t0, $fp, -101
	bnez $t0, .main_label24
	b .main_label25
.main_label34:
# br label %label36
	b .main_label36
.main_label35:
# br label %label36
	b .main_label36
.main_label36:
# %op37 = call i32  @func(i32  99)
	addi.w $a0, $zero, 99
	bl func
	st.w $a0, $fp, -108
# %op38 = icmp eq i32  %op37, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -109
# br i1  %op38, label %label45, label %label43
	ld.b $t0, $fp, -109
	bnez $t0, .main_label45
	b .main_label43
.main_label39:
# %op40 = call i32  @func(i32  %op27)
	ld.w $a0, $fp, -84
	bl func
	st.w $a0, $fp, -116
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -117
# br i1  %op41, label %label34, label %label35
	ld.b $t0, $fp, -117
	bnez $t0, .main_label34
	b .main_label35
.main_label42:
# br label %label44
	b .main_label44
.main_label43:
# br label %label44
	b .main_label44
.main_label44:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label45:
# %op46 = call i32  @func(i32  100)
	addi.w $a0, $zero, 100
	bl func
	st.w $a0, $fp, -124
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -125
# br i1  %op47, label %label42, label %label43
	ld.b $t0, $fp, -125
	bnez $t0, .main_label42
	b .main_label43
main_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
