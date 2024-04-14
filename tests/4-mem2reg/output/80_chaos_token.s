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
	addi.d $sp, $sp, -64
	st.d $a0, $fp, -24
.putstr_label_entry:
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .putstr_label1
.putstr_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op9, %label6 ]
# %op3 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# br i1  %op5, label %label6, label %label10
	ld.b $t0, $fp, -45
	bnez $t0, .putstr_label6
	b .putstr_label10
.putstr_label6:
# %op7 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putch(i32  %op8)
	ld.w $a0, $fp, -60
	bl putch
# %op9 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label1
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -28
	b .putstr_label1
.putstr_label10:
# ret i32  %op2
	ld.w $a0, $fp, -28
	b putstr_ret
putstr_ret:
	addi.d $sp, $sp, 64
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
# %op0 = getelementptr [100 x i32 ], [100 x i32 ]* @__HELLO, i32  0, i32  0
	la.local $t0, __HELLO
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -24
# %op1 = call i32  @putstr(i32 * %op0)
	ld.d $a0, $fp, -24
	bl putstr
	st.w $a0, $fp, -28
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	b .main_label2
.main_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op26, %label31 ]
# %op4 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op4, label %label5, label %label11
	ld.b $t0, $fp, -33
	bnez $t0, .main_label5
	b .main_label11
.main_label5:
# %op6 = sdiv i32  %op3, 6
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 6
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op7 = srem i32  %op3, 6
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 6
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op8 = icmp ne i32  %op6, %op7
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -45
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -53
# br i1  %op10, label %label12, label %label23
	ld.b $t0, $fp, -53
	bnez $t0, .main_label12
	b .main_label23
.main_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label12:
# %op13 = getelementptr [6 x [50 x i32 ]], [6 x [50 x i32 ]]* @N4__mE___, i32  0, i32  %op6
	la.local $t0, N4__mE___
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 50
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# %op14 = getelementptr [50 x i32 ], [50 x i32 ]* %op13, i32  0, i32  0
	ld.d $t0, $fp, -64
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# %op15 = call i32  @putstr(i32 * %op14)
	ld.d $a0, $fp, -72
	bl putstr
	st.w $a0, $fp, -76
# %op16 = getelementptr [40 x i32 ], [40 x i32 ]* @saY_HeI10_To, i32  0, i32  0
	la.local $t0, saY_HeI10_To
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -88
# %op17 = call i32  @putstr(i32 * %op16)
	ld.d $a0, $fp, -88
	bl putstr
	st.w $a0, $fp, -92
# %op18 = getelementptr [6 x [50 x i32 ]], [6 x [50 x i32 ]]* @N4__mE___, i32  0, i32  %op7
	la.local $t0, N4__mE___
	ld.w $t1, $fp, -44
	addi.d $t3, $zero, 50
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# %op19 = getelementptr [50 x i32 ], [50 x i32 ]* %op18, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -112
# %op20 = call i32  @putstr(i32 * %op19)
	ld.d $a0, $fp, -112
	bl putstr
	st.w $a0, $fp, -116
# %op21 = getelementptr [5 x i32 ], [5 x i32 ]* @RET, i32  0, i32  0
	la.local $t0, RET
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -128
# %op22 = call i32  @putstr(i32 * %op21)
	ld.d $a0, $fp, -128
	bl putstr
	st.w $a0, $fp, -132
# br label %label23
	b .main_label23
.main_label23:
# %op24 = mul i32  %op3, 17
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 17
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op25 = add i32  %op24, 23
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 23
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op26 = srem i32  %op25, 32
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 32
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op27 = icmp eq i32  %op26, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -145
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -153
# br i1  %op29, label %label30, label %label31
	ld.b $t0, $fp, -153
	bnez $t0, .main_label30
	b .main_label31
.main_label30:
# br label %label11
	b .main_label11
.main_label31:
# br label %label2
	ld.w $t0, $fp, -144
	st.w $t0, $fp, -32
	b .main_label2
main_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
