; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/85_long_code.sy"

@n = global i32  zeroinitializer
declare i32  @getint()

declare i32  @getch()

declare i32  @getarray(i32 *)

declare float @getfloat()

declare float @getfarray(float*)

declare void @putint(i32 )

declare void @putfloat(float)

declare void @putch(i32 )

declare void @putf(i8 )

declare void @putarray(i32 , i32 *)

declare void @putfarray(float)

define i32  @bubblesort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  0, i32 * %op2
  br label %label4
label4:                                                ; preds = %label_entry, %label35
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * @n
  %op7 = sub i32  %op6, 1
  %op8 = icmp slt i32  %op5, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label4
  store i32  0, i32 * %op3
  br label %label13
label12:                                                ; preds = %label4
  ret i32  0
label13:                                                ; preds = %label11, %label57
  %op14 = load i32 , i32 * %op3
  %op15 = load i32 , i32 * @n
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op15, %op16
  %op18 = sub i32  %op17, 1
  %op19 = icmp slt i32  %op14, %op18
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label35
label22:                                                ; preds = %label13
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 *, i32 ** %op1
  %op25 = getelementptr i32 , i32 * %op24, i32  %op23
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op3
  %op28 = add i32  %op27, 1
  %op29 = load i32 *, i32 ** %op1
  %op30 = getelementptr i32 , i32 * %op29, i32  %op28
  %op31 = load i32 , i32 * %op30
  %op32 = icmp sgt i32  %op26, %op31
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label38, label %label57
label35:                                                ; preds = %label13
  %op36 = load i32 , i32 * %op2
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op2
  br label %label4
label38:                                                ; preds = %label22
  %op39 = alloca i32 
  %op40 = load i32 , i32 * %op3
  %op41 = add i32  %op40, 1
  %op42 = load i32 *, i32 ** %op1
  %op43 = getelementptr i32 , i32 * %op42, i32  %op41
  %op44 = load i32 , i32 * %op43
  store i32  %op44, i32 * %op39
  %op45 = load i32 , i32 * %op3
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  %op48 = load i32 , i32 * %op47
  %op49 = load i32 , i32 * %op3
  %op50 = add i32  %op49, 1
  %op51 = load i32 *, i32 ** %op1
  %op52 = getelementptr i32 , i32 * %op51, i32  %op50
  store i32  %op48, i32 * %op52
  %op53 = load i32 , i32 * %op39
  %op54 = load i32 , i32 * %op3
  %op55 = load i32 *, i32 ** %op1
  %op56 = getelementptr i32 , i32 * %op55, i32  %op54
  store i32  %op53, i32 * %op56
  br label %label57
label57:                                                ; preds = %label22, %label38
  %op58 = load i32 , i32 * %op3
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op3
  br label %label13
}
define i32  @insertsort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label35
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  store i32  %op14, i32 * %op10
  %op15 = alloca i32 
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op16, 1
  store i32  %op17, i32 * %op15
  br label %label19
label18:                                                ; preds = %label3
  ret i32  0
label19:                                                ; preds = %label9, %label24
  %op20 = load i32 , i32 * %op15
  %op21 = icmp sgt i32  %op20, -1
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label43, label %label35
label24:                                                ; preds = %label43
  %op25 = load i32 , i32 * %op15
  %op26 = load i32 *, i32 ** %op1
  %op27 = getelementptr i32 , i32 * %op26, i32  %op25
  %op28 = load i32 , i32 * %op27
  %op29 = load i32 , i32 * %op15
  %op30 = add i32  %op29, 1
  %op31 = load i32 *, i32 ** %op1
  %op32 = getelementptr i32 , i32 * %op31, i32  %op30
  store i32  %op28, i32 * %op32
  %op33 = load i32 , i32 * %op15
  %op34 = sub i32  %op33, 1
  store i32  %op34, i32 * %op15
  br label %label19
label35:                                                ; preds = %label19, %label43
  %op36 = load i32 , i32 * %op10
  %op37 = load i32 , i32 * %op15
  %op38 = add i32  %op37, 1
  %op39 = load i32 *, i32 ** %op1
  %op40 = getelementptr i32 , i32 * %op39, i32  %op38
  store i32  %op36, i32 * %op40
  %op41 = load i32 , i32 * %op2
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op2
  br label %label3
label43:                                                ; preds = %label19
  %op44 = load i32 , i32 * %op10
  %op45 = load i32 , i32 * %op15
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  %op48 = load i32 , i32 * %op47
  %op49 = icmp slt i32  %op44, %op48
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label24, label %label35
}
define i32  @QuickSort(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op5
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label21
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op4
  store i32  %op13, i32 * %op12
  %op14 = alloca i32 
  %op15 = load i32 , i32 * %op5
  store i32  %op15, i32 * %op14
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 *, i32 ** %op3
  %op19 = getelementptr i32 , i32 * %op18, i32  %op17
  %op20 = load i32 , i32 * %op19
  store i32  %op20, i32 * %op16
  br label %label22
label21:                                                ; preds = %label_entry, %label29
  ret i32  0
label22:                                                ; preds = %label11, %label117
  %op23 = load i32 , i32 * %op12
  %op24 = load i32 , i32 * %op14
  %op25 = icmp slt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label29
label28:                                                ; preds = %label22
  br label %label47
label29:                                                ; preds = %label22
  %op30 = load i32 , i32 * %op16
  %op31 = load i32 , i32 * %op12
  %op32 = load i32 *, i32 ** %op3
  %op33 = getelementptr i32 , i32 * %op32, i32  %op31
  store i32  %op30, i32 * %op33
  %op34 = alloca i32 
  %op35 = load i32 , i32 * %op12
  %op36 = sub i32  %op35, 1
  store i32  %op36, i32 * %op34
  %op37 = load i32 *, i32 ** %op3
  %op38 = load i32 , i32 * %op4
  %op39 = load i32 , i32 * %op34
  %op40 = call i32  @QuickSort(i32 * %op37, i32  %op38, i32  %op39)
  store i32  %op40, i32 * %op34
  %op41 = load i32 , i32 * %op12
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op34
  %op43 = load i32 *, i32 ** %op3
  %op44 = load i32 , i32 * %op34
  %op45 = load i32 , i32 * %op5
  %op46 = call i32  @QuickSort(i32 * %op43, i32  %op44, i32  %op45)
  store i32  %op46, i32 * %op34
  br label %label21
label47:                                                ; preds = %label28, %label53
  %op48 = load i32 , i32 * %op12
  %op49 = load i32 , i32 * %op14
  %op50 = icmp slt i32  %op48, %op49
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label62, label %label56
label53:                                                ; preds = %label62
  %op54 = load i32 , i32 * %op14
  %op55 = sub i32  %op54, 1
  store i32  %op55, i32 * %op14
  br label %label47
label56:                                                ; preds = %label47, %label62
  %op57 = load i32 , i32 * %op12
  %op58 = load i32 , i32 * %op14
  %op59 = icmp slt i32  %op57, %op58
  %op60 = zext i1  %op59 to i32 
  %op61 = icmp ne i32  %op60, 0
  br i1  %op61, label %label72, label %label82
label62:                                                ; preds = %label47
  %op63 = load i32 , i32 * %op14
  %op64 = load i32 *, i32 ** %op3
  %op65 = getelementptr i32 , i32 * %op64, i32  %op63
  %op66 = load i32 , i32 * %op65
  %op67 = load i32 , i32 * %op16
  %op68 = sub i32  %op67, 1
  %op69 = icmp sgt i32  %op66, %op68
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label53, label %label56
label72:                                                ; preds = %label56
  %op73 = load i32 , i32 * %op14
  %op74 = load i32 *, i32 ** %op3
  %op75 = getelementptr i32 , i32 * %op74, i32  %op73
  %op76 = load i32 , i32 * %op75
  %op77 = load i32 , i32 * %op12
  %op78 = load i32 *, i32 ** %op3
  %op79 = getelementptr i32 , i32 * %op78, i32  %op77
  store i32  %op76, i32 * %op79
  %op80 = load i32 , i32 * %op12
  %op81 = add i32  %op80, 1
  store i32  %op81, i32 * %op12
  br label %label82
label82:                                                ; preds = %label56, %label72
  br label %label83
label83:                                                ; preds = %label82, %label89
  %op84 = load i32 , i32 * %op12
  %op85 = load i32 , i32 * %op14
  %op86 = icmp slt i32  %op84, %op85
  %op87 = zext i1  %op86 to i32 
  %op88 = icmp ne i32  %op87, 0
  br i1  %op88, label %label98, label %label92
label89:                                                ; preds = %label98
  %op90 = load i32 , i32 * %op12
  %op91 = add i32  %op90, 1
  store i32  %op91, i32 * %op12
  br label %label83
label92:                                                ; preds = %label83, %label98
  %op93 = load i32 , i32 * %op12
  %op94 = load i32 , i32 * %op14
  %op95 = icmp slt i32  %op93, %op94
  %op96 = zext i1  %op95 to i32 
  %op97 = icmp ne i32  %op96, 0
  br i1  %op97, label %label107, label %label117
label98:                                                ; preds = %label83
  %op99 = load i32 , i32 * %op12
  %op100 = load i32 *, i32 ** %op3
  %op101 = getelementptr i32 , i32 * %op100, i32  %op99
  %op102 = load i32 , i32 * %op101
  %op103 = load i32 , i32 * %op16
  %op104 = icmp slt i32  %op102, %op103
  %op105 = zext i1  %op104 to i32 
  %op106 = icmp ne i32  %op105, 0
  br i1  %op106, label %label89, label %label92
label107:                                                ; preds = %label92
  %op108 = load i32 , i32 * %op12
  %op109 = load i32 *, i32 ** %op3
  %op110 = getelementptr i32 , i32 * %op109, i32  %op108
  %op111 = load i32 , i32 * %op110
  %op112 = load i32 , i32 * %op14
  %op113 = load i32 *, i32 ** %op3
  %op114 = getelementptr i32 , i32 * %op113, i32  %op112
  store i32  %op111, i32 * %op114
  %op115 = load i32 , i32 * %op14
  %op116 = sub i32  %op115, 1
  store i32  %op116, i32 * %op14
  br label %label117
label117:                                                ; preds = %label92, %label107
  br label %label22
}
define i32  @getMid(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = load i32 , i32 * @n
  %op4 = srem i32  %op3, 2
  %op5 = icmp eq i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label22
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * @n
  %op10 = sdiv i32  %op9, 2
  store i32  %op10, i32 * %op2
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  %op15 = load i32 , i32 * %op2
  %op16 = sub i32  %op15, 1
  %op17 = load i32 *, i32 ** %op1
  %op18 = getelementptr i32 , i32 * %op17, i32  %op16
  %op19 = load i32 , i32 * %op18
  %op20 = add i32  %op14, %op19
  %op21 = sdiv i32  %op20, 2
  ret i32  %op21
label22:                                                ; preds = %label_entry
  %op23 = load i32 , i32 * @n
  %op24 = sdiv i32  %op23, 2
  store i32  %op24, i32 * %op2
  %op25 = load i32 , i32 * %op2
  %op26 = load i32 *, i32 ** %op1
  %op27 = getelementptr i32 , i32 * %op26, i32  %op25
  %op28 = load i32 , i32 * %op27
  ret i32  %op28
}
define i32  @getMost(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca [1000 x i32 ]
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label9
  %op5 = load i32 , i32 * %op3
  %op6 = icmp slt i32  %op5, 1000
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label14
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op3
  %op11 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op10
  store i32  0, i32 * %op11
  %op12 = load i32 , i32 * %op3
  %op13 = add i32  %op12, 1
  store i32  %op13, i32 * %op3
  br label %label4
label14:                                                ; preds = %label4
  store i32  0, i32 * %op3
  %op15 = alloca i32 
  %op16 = alloca i32 
  store i32  0, i32 * %op15
  br label %label17
label17:                                                ; preds = %label14, %label49
  %op18 = load i32 , i32 * %op3
  %op19 = load i32 , i32 * @n
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label42
label23:                                                ; preds = %label17
  %op24 = alloca i32 
  %op25 = load i32 , i32 * %op3
  %op26 = load i32 *, i32 ** %op1
  %op27 = getelementptr i32 , i32 * %op26, i32  %op25
  %op28 = load i32 , i32 * %op27
  store i32  %op28, i32 * %op24
  %op29 = load i32 , i32 * %op24
  %op30 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  %op32 = add i32  %op31, 1
  %op33 = load i32 , i32 * %op24
  %op34 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op33
  store i32  %op32, i32 * %op34
  %op35 = load i32 , i32 * %op24
  %op36 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op35
  %op37 = load i32 , i32 * %op36
  %op38 = load i32 , i32 * %op15
  %op39 = icmp sgt i32  %op37, %op38
  %op40 = zext i1  %op39 to i32 
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label44, label %label49
label42:                                                ; preds = %label17
  %op43 = load i32 , i32 * %op16
  ret i32  %op43
label44:                                                ; preds = %label23
  %op45 = load i32 , i32 * %op24
  %op46 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op45
  %op47 = load i32 , i32 * %op46
  store i32  %op47, i32 * %op15
  %op48 = load i32 , i32 * %op24
  store i32  %op48, i32 * %op16
  br label %label49
label49:                                                ; preds = %label23, %label44
  %op50 = load i32 , i32 * %op3
  %op51 = add i32  %op50, 1
  store i32  %op51, i32 * %op3
  br label %label17
}
define i32  @revert(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  store i32  0, i32 * %op3
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op3
  %op7 = load i32 , i32 * %op4
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label31
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op3
  %op13 = load i32 *, i32 ** %op1
  %op14 = getelementptr i32 , i32 * %op13, i32  %op12
  %op15 = load i32 , i32 * %op14
  store i32  %op15, i32 * %op2
  %op16 = load i32 , i32 * %op4
  %op17 = load i32 *, i32 ** %op1
  %op18 = getelementptr i32 , i32 * %op17, i32  %op16
  %op19 = load i32 , i32 * %op18
  %op20 = load i32 , i32 * %op3
  %op21 = load i32 *, i32 ** %op1
  %op22 = getelementptr i32 , i32 * %op21, i32  %op20
  store i32  %op19, i32 * %op22
  %op23 = load i32 , i32 * %op2
  %op24 = load i32 , i32 * %op4
  %op25 = load i32 *, i32 ** %op1
  %op26 = getelementptr i32 , i32 * %op25, i32  %op24
  store i32  %op23, i32 * %op26
  %op27 = load i32 , i32 * %op3
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * %op3
  %op29 = load i32 , i32 * %op4
  %op30 = sub i32  %op29, 1
  store i32  %op30, i32 * %op4
  br label %label5
label31:                                                ; preds = %label5
  ret i32  0
}
define i32  @arrCopy(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * @n
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label21
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op4
  %op13 = load i32 *, i32 ** %op2
  %op14 = getelementptr i32 , i32 * %op13, i32  %op12
  %op15 = load i32 , i32 * %op14
  %op16 = load i32 , i32 * %op4
  %op17 = load i32 *, i32 ** %op3
  %op18 = getelementptr i32 , i32 * %op17, i32  %op16
  store i32  %op15, i32 * %op18
  %op19 = load i32 , i32 * %op4
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op4
  br label %label5
label21:                                                ; preds = %label5
  ret i32  0
}
define i32  @calSum(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label37
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @n
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label27
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op5
  %op15 = load i32 *, i32 ** %op2
  %op16 = getelementptr i32 , i32 * %op15, i32  %op14
  %op17 = load i32 , i32 * %op16
  %op18 = add i32  %op13, %op17
  store i32  %op18, i32 * %op4
  %op19 = load i32 , i32 * %op5
  %op20 = load i32 , i32 * %op3
  %op21 = srem i32  %op19, %op20
  %op22 = load i32 , i32 * %op3
  %op23 = sub i32  %op22, 1
  %op24 = icmp ne i32  %op21, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label28, label %label32
label27:                                                ; preds = %label6
  ret i32  0
label28:                                                ; preds = %label12
  %op29 = load i32 , i32 * %op5
  %op30 = load i32 *, i32 ** %op2
  %op31 = getelementptr i32 , i32 * %op30, i32  %op29
  store i32  0, i32 * %op31
  br label %label37
label32:                                                ; preds = %label12
  %op33 = load i32 , i32 * %op4
  %op34 = load i32 , i32 * %op5
  %op35 = load i32 *, i32 ** %op2
  %op36 = getelementptr i32 , i32 * %op35, i32  %op34
  store i32  %op33, i32 * %op36
  store i32  0, i32 * %op4
  br label %label37
label37:                                                ; preds = %label28, %label32
  %op38 = load i32 , i32 * %op5
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * %op5
  br label %label6
}
define i32  @avgPooling(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  store i32  0, i32 * %op4
  %op6 = alloca i32 
  br label %label7
label7:                                                ; preds = %label_entry, %label39
  %op8 = load i32 , i32 * %op5
  %op9 = load i32 , i32 * @n
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label20
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op5
  %op15 = load i32 , i32 * %op3
  %op16 = sub i32  %op15, 1
  %op17 = icmp slt i32  %op14, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label25, label %label32
label20:                                                ; preds = %label7
  %op21 = load i32 , i32 * @n
  %op22 = load i32 , i32 * %op3
  %op23 = sub i32  %op21, %op22
  %op24 = add i32  %op23, 1
  store i32  %op24, i32 * %op5
  br label %label77
label25:                                                ; preds = %label13
  %op26 = load i32 , i32 * %op4
  %op27 = load i32 , i32 * %op5
  %op28 = load i32 *, i32 ** %op2
  %op29 = getelementptr i32 , i32 * %op28, i32  %op27
  %op30 = load i32 , i32 * %op29
  %op31 = add i32  %op26, %op30
  store i32  %op31, i32 * %op4
  br label %label39
label32:                                                ; preds = %label13
  %op33 = load i32 , i32 * %op5
  %op34 = load i32 , i32 * %op3
  %op35 = sub i32  %op34, 1
  %op36 = icmp eq i32  %op33, %op35
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label42, label %label51
label39:                                                ; preds = %label25, %label76
  %op40 = load i32 , i32 * %op5
  %op41 = add i32  %op40, 1
  store i32  %op41, i32 * %op5
  br label %label7
label42:                                                ; preds = %label32
  %op43 = load i32 *, i32 ** %op2
  %op44 = getelementptr i32 , i32 * %op43, i32  0
  %op45 = load i32 , i32 * %op44
  store i32  %op45, i32 * %op6
  %op46 = load i32 , i32 * %op4
  %op47 = load i32 , i32 * %op3
  %op48 = sdiv i32  %op46, %op47
  %op49 = load i32 *, i32 ** %op2
  %op50 = getelementptr i32 , i32 * %op49, i32  0
  store i32  %op48, i32 * %op50
  br label %label76
label51:                                                ; preds = %label32
  %op52 = load i32 , i32 * %op4
  %op53 = load i32 , i32 * %op5
  %op54 = load i32 *, i32 ** %op2
  %op55 = getelementptr i32 , i32 * %op54, i32  %op53
  %op56 = load i32 , i32 * %op55
  %op57 = add i32  %op52, %op56
  %op58 = load i32 , i32 * %op6
  %op59 = sub i32  %op57, %op58
  store i32  %op59, i32 * %op4
  %op60 = load i32 , i32 * %op5
  %op61 = load i32 , i32 * %op3
  %op62 = sub i32  %op60, %op61
  %op63 = add i32  %op62, 1
  %op64 = load i32 *, i32 ** %op2
  %op65 = getelementptr i32 , i32 * %op64, i32  %op63
  %op66 = load i32 , i32 * %op65
  store i32  %op66, i32 * %op6
  %op67 = load i32 , i32 * %op4
  %op68 = load i32 , i32 * %op3
  %op69 = sdiv i32  %op67, %op68
  %op70 = load i32 , i32 * %op5
  %op71 = load i32 , i32 * %op3
  %op72 = sub i32  %op70, %op71
  %op73 = add i32  %op72, 1
  %op74 = load i32 *, i32 ** %op2
  %op75 = getelementptr i32 , i32 * %op74, i32  %op73
  store i32  %op69, i32 * %op75
  br label %label76
label76:                                                ; preds = %label42, %label51
  br label %label39
label77:                                                ; preds = %label20, %label83
  %op78 = load i32 , i32 * %op5
  %op79 = load i32 , i32 * @n
  %op80 = icmp slt i32  %op78, %op79
  %op81 = zext i1  %op80 to i32 
  %op82 = icmp ne i32  %op81, 0
  br i1  %op82, label %label83, label %label89
label83:                                                ; preds = %label77
  %op84 = load i32 , i32 * %op5
  %op85 = load i32 *, i32 ** %op2
  %op86 = getelementptr i32 , i32 * %op85, i32  %op84
  store i32  0, i32 * %op86
  %op87 = load i32 , i32 * %op5
  %op88 = add i32  %op87, 1
  store i32  %op88, i32 * %op5
  br label %label77
label89:                                                ; preds = %label77
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  32, i32 * @n
  %op0 = alloca [32 x i32 ]
  %op1 = alloca [32 x i32 ]
  %op2 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  store i32  7, i32 * %op2
  %op3 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  1
  store i32  23, i32 * %op3
  %op4 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  2
  store i32  89, i32 * %op4
  %op5 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  3
  store i32  26, i32 * %op5
  %op6 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  4
  store i32  282, i32 * %op6
  %op7 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  5
  store i32  254, i32 * %op7
  %op8 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  6
  store i32  27, i32 * %op8
  %op9 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op9
  %op10 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  8
  store i32  83, i32 * %op10
  %op11 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  9
  store i32  273, i32 * %op11
  %op12 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  10
  store i32  574, i32 * %op12
  %op13 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  11
  store i32  905, i32 * %op13
  %op14 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  12
  store i32  354, i32 * %op14
  %op15 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  13
  store i32  657, i32 * %op15
  %op16 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  14
  store i32  935, i32 * %op16
  %op17 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  15
  store i32  264, i32 * %op17
  %op18 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  16
  store i32  639, i32 * %op18
  %op19 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  17
  store i32  459, i32 * %op19
  %op20 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  18
  store i32  29, i32 * %op20
  %op21 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  19
  store i32  68, i32 * %op21
  %op22 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  20
  store i32  929, i32 * %op22
  %op23 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  21
  store i32  756, i32 * %op23
  %op24 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  22
  store i32  452, i32 * %op24
  %op25 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  23
  store i32  279, i32 * %op25
  %op26 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  24
  store i32  58, i32 * %op26
  %op27 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  25
  store i32  87, i32 * %op27
  %op28 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  26
  store i32  96, i32 * %op28
  %op29 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  27
  store i32  36, i32 * %op29
  %op30 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  28
  store i32  39, i32 * %op30
  %op31 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  29
  store i32  28, i32 * %op31
  %op32 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  30
  store i32  1, i32 * %op32
  %op33 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  31
  store i32  290, i32 * %op33
  %op34 = alloca i32 
  %op35 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op36 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op37 = call i32  @arrCopy(i32 * %op35, i32 * %op36)
  store i32  %op37, i32 * %op34
  %op38 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op39 = call i32  @revert(i32 * %op38)
  store i32  %op39, i32 * %op34
  %op40 = alloca i32 
  store i32  0, i32 * %op40
  br label %label41
label41:                                                ; preds = %label_entry, %label46
  %op42 = load i32 , i32 * %op40
  %op43 = icmp slt i32  %op42, 32
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label46, label %label53
label46:                                                ; preds = %label41
  %op47 = load i32 , i32 * %op40
  %op48 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op47
  %op49 = load i32 , i32 * %op48
  store i32  %op49, i32 * %op34
  %op50 = load i32 , i32 * %op34
  call void @putint(i32  %op50)
  %op51 = load i32 , i32 * %op40
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op40
  br label %label41
label53:                                                ; preds = %label41
  %op54 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op55 = call i32  @bubblesort(i32 * %op54)
  store i32  %op55, i32 * %op34
  store i32  0, i32 * %op40
  br label %label56
label56:                                                ; preds = %label53, %label61
  %op57 = load i32 , i32 * %op40
  %op58 = icmp slt i32  %op57, 32
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label68
label61:                                                ; preds = %label56
  %op62 = load i32 , i32 * %op40
  %op63 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op62
  %op64 = load i32 , i32 * %op63
  store i32  %op64, i32 * %op34
  %op65 = load i32 , i32 * %op34
  call void @putint(i32  %op65)
  %op66 = load i32 , i32 * %op40
  %op67 = add i32  %op66, 1
  store i32  %op67, i32 * %op40
  br label %label56
label68:                                                ; preds = %label56
  %op69 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op70 = call i32  @getMid(i32 * %op69)
  store i32  %op70, i32 * %op34
  %op71 = load i32 , i32 * %op34
  call void @putint(i32  %op71)
  %op72 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op73 = call i32  @getMost(i32 * %op72)
  store i32  %op73, i32 * %op34
  %op74 = load i32 , i32 * %op34
  call void @putint(i32  %op74)
  %op75 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op76 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op77 = call i32  @arrCopy(i32 * %op75, i32 * %op76)
  store i32  %op77, i32 * %op34
  %op78 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op79 = call i32  @bubblesort(i32 * %op78)
  store i32  %op79, i32 * %op34
  store i32  0, i32 * %op40
  br label %label80
label80:                                                ; preds = %label68, %label85
  %op81 = load i32 , i32 * %op40
  %op82 = icmp slt i32  %op81, 32
  %op83 = zext i1  %op82 to i32 
  %op84 = icmp ne i32  %op83, 0
  br i1  %op84, label %label85, label %label92
label85:                                                ; preds = %label80
  %op86 = load i32 , i32 * %op40
  %op87 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op86
  %op88 = load i32 , i32 * %op87
  store i32  %op88, i32 * %op34
  %op89 = load i32 , i32 * %op34
  call void @putint(i32  %op89)
  %op90 = load i32 , i32 * %op40
  %op91 = add i32  %op90, 1
  store i32  %op91, i32 * %op40
  br label %label80
label92:                                                ; preds = %label80
  %op93 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op94 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op95 = call i32  @arrCopy(i32 * %op93, i32 * %op94)
  store i32  %op95, i32 * %op34
  %op96 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op97 = call i32  @insertsort(i32 * %op96)
  store i32  %op97, i32 * %op34
  store i32  0, i32 * %op40
  br label %label98
label98:                                                ; preds = %label92, %label103
  %op99 = load i32 , i32 * %op40
  %op100 = icmp slt i32  %op99, 32
  %op101 = zext i1  %op100 to i32 
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label103, label %label110
label103:                                                ; preds = %label98
  %op104 = load i32 , i32 * %op40
  %op105 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op104
  %op106 = load i32 , i32 * %op105
  store i32  %op106, i32 * %op34
  %op107 = load i32 , i32 * %op34
  call void @putint(i32  %op107)
  %op108 = load i32 , i32 * %op40
  %op109 = add i32  %op108, 1
  store i32  %op109, i32 * %op40
  br label %label98
label110:                                                ; preds = %label98
  %op111 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op112 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op113 = call i32  @arrCopy(i32 * %op111, i32 * %op112)
  store i32  %op113, i32 * %op34
  store i32  0, i32 * %op40
  store i32  31, i32 * %op34
  %op114 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op115 = load i32 , i32 * %op40
  %op116 = load i32 , i32 * %op34
  %op117 = call i32  @QuickSort(i32 * %op114, i32  %op115, i32  %op116)
  store i32  %op117, i32 * %op34
  br label %label118
label118:                                                ; preds = %label110, %label123
  %op119 = load i32 , i32 * %op40
  %op120 = icmp slt i32  %op119, 32
  %op121 = zext i1  %op120 to i32 
  %op122 = icmp ne i32  %op121, 0
  br i1  %op122, label %label123, label %label130
label123:                                                ; preds = %label118
  %op124 = load i32 , i32 * %op40
  %op125 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op124
  %op126 = load i32 , i32 * %op125
  store i32  %op126, i32 * %op34
  %op127 = load i32 , i32 * %op34
  call void @putint(i32  %op127)
  %op128 = load i32 , i32 * %op40
  %op129 = add i32  %op128, 1
  store i32  %op129, i32 * %op40
  br label %label118
label130:                                                ; preds = %label118
  %op131 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op132 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op133 = call i32  @arrCopy(i32 * %op131, i32 * %op132)
  store i32  %op133, i32 * %op34
  %op134 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op135 = call i32  @calSum(i32 * %op134, i32  4)
  store i32  %op135, i32 * %op34
  store i32  0, i32 * %op40
  br label %label136
label136:                                                ; preds = %label130, %label141
  %op137 = load i32 , i32 * %op40
  %op138 = icmp slt i32  %op137, 32
  %op139 = zext i1  %op138 to i32 
  %op140 = icmp ne i32  %op139, 0
  br i1  %op140, label %label141, label %label148
label141:                                                ; preds = %label136
  %op142 = load i32 , i32 * %op40
  %op143 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op142
  %op144 = load i32 , i32 * %op143
  store i32  %op144, i32 * %op34
  %op145 = load i32 , i32 * %op34
  call void @putint(i32  %op145)
  %op146 = load i32 , i32 * %op40
  %op147 = add i32  %op146, 1
  store i32  %op147, i32 * %op40
  br label %label136
label148:                                                ; preds = %label136
  %op149 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
  %op150 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op151 = call i32  @arrCopy(i32 * %op149, i32 * %op150)
  store i32  %op151, i32 * %op34
  %op152 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
  %op153 = call i32  @avgPooling(i32 * %op152, i32  3)
  store i32  %op153, i32 * %op34
  store i32  0, i32 * %op40
  br label %label154
label154:                                                ; preds = %label148, %label159
  %op155 = load i32 , i32 * %op40
  %op156 = icmp slt i32  %op155, 32
  %op157 = zext i1  %op156 to i32 
  %op158 = icmp ne i32  %op157, 0
  br i1  %op158, label %label159, label %label166
label159:                                                ; preds = %label154
  %op160 = load i32 , i32 * %op40
  %op161 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op160
  %op162 = load i32 , i32 * %op161
  store i32  %op162, i32 * %op34
  %op163 = load i32 , i32 * %op34
  call void @putint(i32  %op163)
  %op164 = load i32 , i32 * %op40
  %op165 = add i32  %op164, 1
  store i32  %op165, i32 * %op40
  br label %label154
label166:                                                ; preds = %label154
  ret i32  0
}
