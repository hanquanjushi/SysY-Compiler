; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/13_LCA.sy"

@maxn = constant i32  10005
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@f = global [10005 x [20 x i32 ]] zeroinitializer
@dep = global [10005 x i32 ] zeroinitializer
@to = global [10005 x i32 ] zeroinitializer
@next = global [10005 x i32 ] zeroinitializer
@head = global [10005 x i32 ] zeroinitializer
@cnt = global i32  0
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

define i32  @quick_read() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getch()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label21
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op5, 48
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label15
label9:                                                ; preds = %label4, %label15
  %op10 = load i32 , i32 * %op0
  %op11 = icmp eq i32  %op10, 45
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label20, label %label21
label14:                                                ; preds = %label15
  br label %label23
label15:                                                ; preds = %label4
  %op16 = load i32 , i32 * %op0
  %op17 = icmp sgt i32  %op16, 57
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label9, label %label14
label20:                                                ; preds = %label9
  store i32  1, i32 * %op2
  br label %label21
label21:                                                ; preds = %label9, %label20
  %op22 = call i32  @getch()
  store i32  %op22, i32 * %op0
  br label %label4
label23:                                                ; preds = %label14, %label28
  %op24 = load i32 , i32 * %op0
  %op25 = icmp sge i32  %op24, 48
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label38, label %label35
label28:                                                ; preds = %label38
  %op29 = load i32 , i32 * %op3
  %op30 = mul i32  %op29, 10
  %op31 = load i32 , i32 * %op0
  %op32 = add i32  %op30, %op31
  %op33 = sub i32  %op32, 48
  store i32  %op33, i32 * %op3
  %op34 = call i32  @getch()
  store i32  %op34, i32 * %op0
  br label %label23
label35:                                                ; preds = %label23, %label38
  %op36 = load i32 , i32 * %op2
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label43, label %label46
label38:                                                ; preds = %label23
  %op39 = load i32 , i32 * %op0
  %op40 = icmp sle i32  %op39, 57
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label28, label %label35
label43:                                                ; preds = %label35
  %op44 = load i32 , i32 * %op3
  %op45 = sub i32  0, %op44
  ret i32  %op45
label46:                                                ; preds = %label35
  %op47 = load i32 , i32 * %op3
  ret i32  %op47
}
define void @add_edge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * @cnt
  %op6 = getelementptr [10005 x i32 ], [10005 x i32 ]* @to, i32  0, i32  %op5
  store i32  %op4, i32 * %op6
  %op7 = load i32 , i32 * %op2
  %op8 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op7
  %op9 = load i32 , i32 * %op8
  %op10 = load i32 , i32 * @cnt
  %op11 = getelementptr [10005 x i32 ], [10005 x i32 ]* @next, i32  0, i32  %op10
  store i32  %op9, i32 * %op11
  %op12 = load i32 , i32 * @cnt
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  %op15 = load i32 , i32 * @cnt
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * @cnt
  %op17 = load i32 , i32 * %op2
  %op18 = load i32 , i32 * %op3
  %op19 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op18
  %op20 = getelementptr [20 x i32 ], [20 x i32 ]* %op19, i32  0, i32  0
  store i32  %op17, i32 * %op20
  ret void
}
define void @init() {
label_entry:
  %op0 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  0
  store i32  1061109567, i32 * %op0
  %op1 = alloca i32 
  store i32  1, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label8
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * @n
  %op5 = icmp sle i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label13
label8:                                                ; preds = %label2
  %op9 = load i32 , i32 * %op1
  %op10 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op9
  store i32  -1, i32 * %op10
  %op11 = load i32 , i32 * %op1
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op1
  br label %label2
label13:                                                ; preds = %label2
  ret void
}
define void @tree(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * %op2
  %op6 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op5
  store i32  %op4, i32 * %op6
  %op7 = alloca i32 
  store i32  0, i32 * %op7
  br label %label8
label8:                                                ; preds = %label_entry, %label15
  %op9 = load i32 , i32 * %op2
  %op10 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op9
  %op11 = load i32 , i32 * %op7
  %op12 = getelementptr [20 x i32 ], [20 x i32 ]* %op10, i32  0, i32  %op11
  %op13 = load i32 , i32 * %op12
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label32
label15:                                                ; preds = %label8
  %op16 = load i32 , i32 * %op2
  %op17 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op16
  %op18 = load i32 , i32 * %op7
  %op19 = getelementptr [20 x i32 ], [20 x i32 ]* %op17, i32  0, i32  %op18
  %op20 = load i32 , i32 * %op19
  %op21 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op20
  %op22 = load i32 , i32 * %op7
  %op23 = getelementptr [20 x i32 ], [20 x i32 ]* %op21, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op23
  %op25 = load i32 , i32 * %op2
  %op26 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op25
  %op27 = load i32 , i32 * %op7
  %op28 = add i32  %op27, 1
  %op29 = getelementptr [20 x i32 ], [20 x i32 ]* %op26, i32  0, i32  %op28
  store i32  %op24, i32 * %op29
  %op30 = load i32 , i32 * %op7
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op7
  br label %label8
label32:                                                ; preds = %label8
  %op33 = load i32 , i32 * %op2
  %op34 = getelementptr [10005 x i32 ], [10005 x i32 ]* @head, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op34
  store i32  %op35, i32 * %op7
  br label %label36
label36:                                                ; preds = %label32, %label41
  %op37 = load i32 , i32 * %op7
  %op38 = icmp ne i32  %op37, -1
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label41, label %label52
label41:                                                ; preds = %label36
  %op42 = alloca i32 
  %op43 = load i32 , i32 * %op7
  %op44 = getelementptr [10005 x i32 ], [10005 x i32 ]* @to, i32  0, i32  %op43
  %op45 = load i32 , i32 * %op44
  store i32  %op45, i32 * %op42
  %op46 = load i32 , i32 * %op42
  %op47 = load i32 , i32 * %op3
  %op48 = add i32  %op47, 1
  call void @tree(i32  %op46, i32  %op48)
  %op49 = load i32 , i32 * %op7
  %op50 = getelementptr [10005 x i32 ], [10005 x i32 ]* @next, i32  0, i32  %op49
  %op51 = load i32 , i32 * %op50
  store i32  %op51, i32 * %op7
  br label %label36
label52:                                                ; preds = %label36
  ret void
}
define i32  @LCA(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op4
  %op6 = load i32 , i32 * %op5
  %op7 = load i32 , i32 * %op3
  %op8 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op7
  %op9 = load i32 , i32 * %op8
  %op10 = icmp slt i32  %op6, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label18
label13:                                                ; preds = %label_entry
  %op14 = alloca i32 
  %op15 = load i32 , i32 * %op2
  store i32  %op15, i32 * %op14
  %op16 = load i32 , i32 * %op3
  store i32  %op16, i32 * %op2
  %op17 = load i32 , i32 * %op14
  store i32  %op17, i32 * %op3
  br label %label18
label18:                                                ; preds = %label_entry, %label13
  %op19 = alloca i32 
  store i32  19, i32 * %op19
  br label %label20
label20:                                                ; preds = %label18, %label49
  %op21 = load i32 , i32 * %op2
  %op22 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op21
  %op23 = load i32 , i32 * %op22
  %op24 = load i32 , i32 * %op3
  %op25 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op24
  %op26 = load i32 , i32 * %op25
  %op27 = icmp sgt i32  %op23, %op26
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label30, label %label37
label30:                                                ; preds = %label20
  %op31 = load i32 , i32 * %op2
  %op32 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op31
  %op33 = load i32 , i32 * %op19
  %op34 = getelementptr [20 x i32 ], [20 x i32 ]* %op32, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op34
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label52, label %label49
label37:                                                ; preds = %label20
  %op38 = load i32 , i32 * %op2
  %op39 = load i32 , i32 * %op3
  %op40 = icmp eq i32  %op38, %op39
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label66, label %label68
label43:                                                ; preds = %label52
  %op44 = load i32 , i32 * %op2
  %op45 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op44
  %op46 = load i32 , i32 * %op19
  %op47 = getelementptr [20 x i32 ], [20 x i32 ]* %op45, i32  0, i32  %op46
  %op48 = load i32 , i32 * %op47
  store i32  %op48, i32 * %op2
  br label %label49
label49:                                                ; preds = %label30, %label52, %label43
  %op50 = load i32 , i32 * %op19
  %op51 = sub i32  %op50, 1
  store i32  %op51, i32 * %op19
  br label %label20
label52:                                                ; preds = %label30
  %op53 = load i32 , i32 * %op2
  %op54 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op19
  %op56 = getelementptr [20 x i32 ], [20 x i32 ]* %op54, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  %op58 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op57
  %op59 = load i32 , i32 * %op58
  %op60 = load i32 , i32 * %op3
  %op61 = getelementptr [10005 x i32 ], [10005 x i32 ]* @dep, i32  0, i32  %op60
  %op62 = load i32 , i32 * %op61
  %op63 = icmp sge i32  %op59, %op62
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label43, label %label49
label66:                                                ; preds = %label37
  %op67 = load i32 , i32 * %op2
  ret i32  %op67
label68:                                                ; preds = %label37
  store i32  19, i32 * %op19
  br label %label69
label69:                                                ; preds = %label68, %label104
  %op70 = load i32 , i32 * %op19
  %op71 = icmp sge i32  %op70, 0
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp ne i32  %op72, 0
  br i1  %op73, label %label74, label %label88
label74:                                                ; preds = %label69
  %op75 = load i32 , i32 * %op2
  %op76 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op75
  %op77 = load i32 , i32 * %op19
  %op78 = getelementptr [20 x i32 ], [20 x i32 ]* %op76, i32  0, i32  %op77
  %op79 = load i32 , i32 * %op78
  %op80 = load i32 , i32 * %op3
  %op81 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op80
  %op82 = load i32 , i32 * %op19
  %op83 = getelementptr [20 x i32 ], [20 x i32 ]* %op81, i32  0, i32  %op82
  %op84 = load i32 , i32 * %op83
  %op85 = icmp ne i32  %op79, %op84
  %op86 = zext i1  %op85 to i32 
  %op87 = icmp ne i32  %op86, 0
  br i1  %op87, label %label93, label %label104
label88:                                                ; preds = %label69
  %op89 = load i32 , i32 * %op2
  %op90 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op89
  %op91 = getelementptr [20 x i32 ], [20 x i32 ]* %op90, i32  0, i32  0
  %op92 = load i32 , i32 * %op91
  ret i32  %op92
label93:                                                ; preds = %label74
  %op94 = load i32 , i32 * %op2
  %op95 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op94
  %op96 = load i32 , i32 * %op19
  %op97 = getelementptr [20 x i32 ], [20 x i32 ]* %op95, i32  0, i32  %op96
  %op98 = load i32 , i32 * %op97
  store i32  %op98, i32 * %op2
  %op99 = load i32 , i32 * %op3
  %op100 = getelementptr [10005 x [20 x i32 ]], [10005 x [20 x i32 ]]* @f, i32  0, i32  %op99
  %op101 = load i32 , i32 * %op19
  %op102 = getelementptr [20 x i32 ], [20 x i32 ]* %op100, i32  0, i32  %op101
  %op103 = load i32 , i32 * %op102
  store i32  %op103, i32 * %op3
  br label %label104
label104:                                                ; preds = %label74, %label93
  %op105 = load i32 , i32 * %op19
  %op106 = sub i32  %op105, 1
  store i32  %op106, i32 * %op19
  br label %label69
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * @m
  call void @init()
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp ne i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = call i32  @quick_read()
  store i32  %op11, i32 * %op10
  %op12 = alloca i32 
  %op13 = call i32  @quick_read()
  store i32  %op13, i32 * %op12
  %op14 = load i32 , i32 * %op12
  %op15 = load i32 , i32 * %op10
  call void @add_edge(i32  %op14, i32  %op15)
  %op16 = load i32 , i32 * %op2
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op2
  br label %label3
label18:                                                ; preds = %label3
  call void @tree(i32  1, i32  1)
  br label %label19
label19:                                                ; preds = %label18, %label22
  %op20 = load i32 , i32 * @m
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label32
label22:                                                ; preds = %label19
  %op23 = alloca i32 
  %op24 = call i32  @quick_read()
  store i32  %op24, i32 * %op23
  %op25 = alloca i32 
  %op26 = call i32  @quick_read()
  store i32  %op26, i32 * %op25
  %op27 = load i32 , i32 * %op25
  %op28 = load i32 , i32 * %op23
  %op29 = call i32  @LCA(i32  %op27, i32  %op28)
  call void @putint(i32  %op29)
  call void @putch(i32  10)
  %op30 = load i32 , i32 * @m
  %op31 = sub i32  %op30, 1
  store i32  %op31, i32 * @m
  br label %label19
label32:                                                ; preds = %label19
  ret i32  0
}
