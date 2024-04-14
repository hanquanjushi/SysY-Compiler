; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/12_DSU.sy"

@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@fa = global [100005 x i32 ] zeroinitializer
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
define void @init() {
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
  br i1  %op6, label %label7, label %label13
label7:                                                ; preds = %label1
  %op8 = load i32 , i32 * %op0
  %op9 = load i32 , i32 * %op0
  %op10 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op9
  store i32  %op8, i32 * %op10
  %op11 = load i32 , i32 * %op0
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op0
  br label %label1
label13:                                                ; preds = %label1
  ret void
}
define i32  @find(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op2
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * %op1
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op1
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op1
  %op14 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op13
  %op15 = load i32 , i32 * %op14
  %op16 = call i32  @find(i32  %op15)
  store i32  %op16, i32 * %op12
  %op17 = load i32 , i32 * %op12
  %op18 = load i32 , i32 * %op1
  %op19 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op18
  store i32  %op17, i32 * %op19
  %op20 = load i32 , i32 * %op12
  ret i32  %op20
}
define i32  @same(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = call i32  @find(i32  %op4)
  %op6 = load i32 , i32 * %op3
  %op7 = call i32  @find(i32  %op6)
  %op8 = icmp eq i32  %op5, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label_entry
  ret i32  1
label12:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * @m
  call void @init()
  br label %label2
label2:                                                ; preds = %label_entry, %label44
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
  %op31 = load i32 , i32 * %op29
  %op32 = load i32 , i32 * %op27
  %op33 = call i32  @same(i32  %op31, i32  %op32)
  call void @putint(i32  %op33)
  call void @putch(i32  10)
  br label %label44
label34:                                                ; preds = %label16
  %op35 = alloca i32 
  %op36 = call i32  @quick_read()
  %op37 = call i32  @find(i32  %op36)
  store i32  %op37, i32 * %op35
  %op38 = alloca i32 
  %op39 = call i32  @quick_read()
  %op40 = call i32  @find(i32  %op39)
  store i32  %op40, i32 * %op38
  %op41 = load i32 , i32 * %op35
  %op42 = load i32 , i32 * %op38
  %op43 = getelementptr [100005 x i32 ], [100005 x i32 ]* @fa, i32  0, i32  %op42
  store i32  %op41, i32 * %op43
  br label %label44
label44:                                                ; preds = %label26, %label34
  %op45 = load i32 , i32 * @m
  %op46 = sub i32  %op45, 1
  store i32  %op46, i32 * @m
  br label %label2
}
