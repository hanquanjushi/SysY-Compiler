; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/10_DFS.sy"

@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@maxn = constant i32  1005
@maxm = constant i32  5005
@to = global [5005 x i32 ] zeroinitializer
@next = global [5005 x i32 ] zeroinitializer
@head = global [1005 x i32 ] zeroinitializer
@cnt = global i32  0
@vis = global [1005 x i32 ] zeroinitializer
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
  %op6 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op5
  store i32  %op4, i32 * %op6
  %op7 = load i32 , i32 * %op2
  %op8 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op7
  %op9 = load i32 , i32 * %op8
  %op10 = load i32 , i32 * @cnt
  %op11 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op10
  store i32  %op9, i32 * %op11
  %op12 = load i32 , i32 * @cnt
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  %op15 = load i32 , i32 * @cnt
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * @cnt
  %op17 = load i32 , i32 * %op2
  %op18 = load i32 , i32 * @cnt
  %op19 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op18
  store i32  %op17, i32 * %op19
  %op20 = load i32 , i32 * %op3
  %op21 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op20
  %op22 = load i32 , i32 * %op21
  %op23 = load i32 , i32 * @cnt
  %op24 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op23
  store i32  %op22, i32 * %op24
  %op25 = load i32 , i32 * @cnt
  %op26 = load i32 , i32 * %op3
  %op27 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op26
  store i32  %op25, i32 * %op27
  %op28 = load i32 , i32 * @cnt
  %op29 = add i32  %op28, 1
  store i32  %op29, i32 * @cnt
  ret void
}
define void @init() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label7
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @maxn
  %op4 = icmp slt i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label1
  %op8 = load i32 , i32 * %op0
  %op9 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op8
  store i32  -1, i32 * %op9
  %op10 = load i32 , i32 * %op0
  %op11 = add i32  %op10, 1
  store i32  %op11, i32 * %op0
  br label %label1
label12:                                                ; preds = %label1
  ret void
}
define void @clear() {
label_entry:
  %op0 = alloca i32 
  store i32  1, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label7
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @n
  %op4 = icmp sle i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label1
  %op8 = load i32 , i32 * %op0
  %op9 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32  0, i32  %op8
  store i32  0, i32 * %op9
  %op10 = load i32 , i32 * %op0
  %op11 = add i32  %op10, 1
  store i32  %op11, i32 * %op0
  br label %label1
label12:                                                ; preds = %label1
  ret void
}
define i32  @same(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32  0, i32  %op4
  store i32  1, i32 * %op5
  %op6 = load i32 , i32 * %op2
  %op7 = load i32 , i32 * %op3
  %op8 = icmp eq i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label_entry
  ret i32  1
label12:                                                ; preds = %label_entry
  %op13 = alloca i32 
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op14
  %op16 = load i32 , i32 * %op15
  store i32  %op16, i32 * %op13
  br label %label17
label17:                                                ; preds = %label12, %label33
  %op18 = load i32 , i32 * %op13
  %op19 = icmp ne i32  %op18, -1
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label31
label22:                                                ; preds = %label17
  %op23 = alloca i32 
  %op24 = load i32 , i32 * %op13
  %op25 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op24
  %op26 = load i32 , i32 * %op25
  store i32  %op26, i32 * %op23
  %op27 = load i32 , i32 * %op23
  %op28 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32  0, i32  %op27
  %op29 = load i32 , i32 * %op28
  %op30 = icmp eq i32  %op29, 0
  br i1  %op30, label %label37, label %label33
label31:                                                ; preds = %label17
  ret i32  0
label32:                                                ; preds = %label37
  ret i32  1
label33:                                                ; preds = %label22, %label37
  %op34 = load i32 , i32 * %op13
  %op35 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op34
  %op36 = load i32 , i32 * %op35
  store i32  %op36, i32 * %op13
  br label %label17
label37:                                                ; preds = %label22
  %op38 = load i32 , i32 * %op23
  %op39 = load i32 , i32 * %op3
  %op40 = call i32  @same(i32  %op38, i32  %op39)
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label32, label %label33
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * @m
  call void @init()
  br label %label2
label2:                                                ; preds = %label_entry, %label41
  %op3 = load i32 , i32 * @m
  %op4 = icmp ne i32  %op3, 0
  br i1  %op4, label %label5, label %label8
label5:                                                ; preds = %label2
  %op6 = alloca i32 
  %op7 = call i32  @getch()
  store i32  %op7, i32 * %op6
  br label %label9
label8:                                                ; preds = %label2
  ret i32  0
label9:                                                ; preds = %label5, %label14
  %op10 = load i32 , i32 * %op6
  %op11 = icmp ne i32  %op10, 81
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label21, label %label16
label14:                                                ; preds = %label21
  %op15 = call i32  @getch()
  store i32  %op15, i32 * %op6
  br label %label9
label16:                                                ; preds = %label9, %label21
  %op17 = load i32 , i32 * %op6
  %op18 = icmp eq i32  %op17, 81
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label26, label %label34
label21:                                                ; preds = %label9
  %op22 = load i32 , i32 * %op6
  %op23 = icmp ne i32  %op22, 85
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label14, label %label16
label26:                                                ; preds = %label16
  %op27 = alloca i32 
  %op28 = call i32  @quick_read()
  store i32  %op28, i32 * %op27
  %op29 = alloca i32 
  %op30 = call i32  @quick_read()
  store i32  %op30, i32 * %op29
  call void @clear()
  %op31 = load i32 , i32 * %op29
  %op32 = load i32 , i32 * %op27
  %op33 = call i32  @same(i32  %op31, i32  %op32)
  call void @putint(i32  %op33)
  call void @putch(i32  10)
  br label %label41
label34:                                                ; preds = %label16
  %op35 = alloca i32 
  %op36 = call i32  @quick_read()
  store i32  %op36, i32 * %op35
  %op37 = alloca i32 
  %op38 = call i32  @quick_read()
  store i32  %op38, i32 * %op37
  %op39 = load i32 , i32 * %op37
  %op40 = load i32 , i32 * %op35
  call void @add_edge(i32  %op39, i32  %op40)
  br label %label41
label41:                                                ; preds = %label26, %label34
  %op42 = load i32 , i32 * @m
  %op43 = sub i32  %op42, 1
  store i32  %op43, i32 * @m
  br label %label2
}
