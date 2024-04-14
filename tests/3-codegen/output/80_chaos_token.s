# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl __HELLO
	.data
	.type __HELLO, @object
	.size __HELLO, 400
__HELLO:
	.word  87
	.word  101
	.word  108
	.word  99
	.word  111
	.word  109
	.word  101
	.word  32
	.word  116
	.word  111
	.word  32
	.word  116
	.word  104
	.word  101
	.word  32
	.word  74
	.word  97
	.word  112
	.word  97
	.word  114
	.word  105
	.word  32
	.word  80
	.word  97
	.word  114
	.word  107
	.word  33
	.word  10
	.space  288
	.globl N4__mE___
	.data
	.type N4__mE___, @object
	.size N4__mE___, 1200
N4__mE___:
	.word  83
	.word  97
	.word  97
	.word  98
	.word  97
	.word  114
	.word  117
	.space  172
	.word  75
	.word  97
	.word  98
	.word  97
	.word  110
	.space  180
	.word  72
	.word  97
	.word  115
	.word  104
	.word  105
	.word  98
	.word  105
	.word  114
	.word  111
	.word  107
	.word  111
	.word  117
	.space  152
	.word  65
	.word  114
	.word  97
	.word  105
	.word  103
	.word  117
	.word  109
	.word  97
	.space  168
	.word  72
	.word  117
	.word  110
	.word  98
	.word  111
	.word  114
	.word  117
	.word  116
	.word  111
	.word  32
	.word  80
	.word  101
	.word  110
	.word  103
	.word  105
	.word  110
	.space  136
	.word  84
	.word  97
	.word  105
	.word  114
	.word  105
	.word  107
	.word  117
	.word  32
	.word  79
	.word  111
	.word  107
	.word  97
	.word  109
	.word  105
	.space  144
	.globl saY_HeI10_To
	.data
	.type saY_HeI10_To, @object
	.size saY_HeI10_To, 160
saY_HeI10_To:
	.word  32
	.word  115
	.word  97
	.word  121
	.word  115
	.word  32
	.word  104
	.word  101
	.word  108
	.word  108
	.word  111
	.word  32
	.word  116
	.word  111
	.word  32
	.space  100
	.globl RET
	.data
	.type RET, @object
	.size RET, 20
RET:
	.word  10
	.space  16
	.text
	.globl putstr
	.type putstr, @function
putstr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.d $a0, $fp, -24
.putstr_label_entry:
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
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .putstr_label3
.putstr_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -64
# %op6 = getelementptr i32 , i32 * %op5, i32  %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -56
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -77
# br i1  %op8, label %label9, label %label16
	ld.b $t0, $fp, -77
	bnez $t0, .putstr_label9
	b .putstr_label16
.putstr_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op11 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op12 = getelementptr i32 , i32 * %op11, i32  %op10
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -84
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# call void @putch(i32  %op13)
	ld.w $a0, $fp, -108
	bl putch
# %op14 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# store i32  %op15, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# br label %label3
	b .putstr_label3
.putstr_label16:
# %op17 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# ret i32  %op17
	ld.w $a0, $fp, -120
	b putstr_ret
putstr_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
.main_label_entry:
# %op0 = getelementptr [100 x i32 ], [100 x i32 ]* @__HELLO, i32  0, i32  0
	la.local $t0, __HELLO
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -24
# %op1 = call i32  @putstr(i32 * %op0)
	ld.d $a0, $fp, -24
	bl putstr
	st.w $a0, $fp, -28
# %op2 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -45
# br i1  %op4, label %label5, label %label17
	ld.b $t0, $fp, -45
	bnez $t0, .main_label5
	b .main_label17
.main_label5:
# %op6 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op7 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = sdiv i32  %op7, 6
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 6
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# store i32  %op8, i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op9 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op11 = srem i32  %op10, 6
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 6
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32  %op11, i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op13 = load i32 , i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op14 = icmp ne i32  %op12, %op13
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -101
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -109
# br i1  %op16, label %label18, label %label31
	ld.b $t0, $fp, -109
	bnez $t0, .main_label18
	b .main_label31
.main_label17:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label18:
# %op19 = load i32 , i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op20 = getelementptr [6 x [50 x i32 ]], [6 x [50 x i32 ]]* @N4__mE___, i32  0, i32  %op19
	la.local $t0, N4__mE___
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 50
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op21 = getelementptr [50 x i32 ], [50 x i32 ]* %op20, i32  0, i32  0
	ld.d $t0, $fp, -128
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -136
# %op22 = call i32  @putstr(i32 * %op21)
	ld.d $a0, $fp, -136
	bl putstr
	st.w $a0, $fp, -140
# %op23 = getelementptr [40 x i32 ], [40 x i32 ]* @saY_HeI10_To, i32  0, i32  0
	la.local $t0, saY_HeI10_To
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -152
# %op24 = call i32  @putstr(i32 * %op23)
	ld.d $a0, $fp, -152
	bl putstr
	st.w $a0, $fp, -156
# %op25 = load i32 , i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op26 = getelementptr [6 x [50 x i32 ]], [6 x [50 x i32 ]]* @N4__mE___, i32  0, i32  %op25
	la.local $t0, N4__mE___
	ld.w $t1, $fp, -160
	addi.d $t3, $zero, 50
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -168
# %op27 = getelementptr [50 x i32 ], [50 x i32 ]* %op26, i32  0, i32  0
	ld.d $t0, $fp, -168
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -176
# %op28 = call i32  @putstr(i32 * %op27)
	ld.d $a0, $fp, -176
	bl putstr
	st.w $a0, $fp, -180
# %op29 = getelementptr [5 x i32 ], [5 x i32 ]* @RET, i32  0, i32  0
	la.local $t0, RET
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -192
# %op30 = call i32  @putstr(i32 * %op29)
	ld.d $a0, $fp, -192
	bl putstr
	st.w $a0, $fp, -196
# br label %label31
	b .main_label31
.main_label31:
# %op32 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op33 = mul i32  %op32, 17
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 17
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# %op34 = add i32  %op33, 23
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 23
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op35 = srem i32  %op34, 32
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 32
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# store i32  %op35, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op37 = icmp eq i32  %op36, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -217
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -217
	st.w $t0, $fp, -224
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -225
# br i1  %op39, label %label40, label %label41
	ld.b $t0, $fp, -225
	bnez $t0, .main_label40
	b .main_label41
.main_label40:
# br label %label17
	b .main_label17
.main_label41:
# br label %label3
	b .main_label3
main_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
