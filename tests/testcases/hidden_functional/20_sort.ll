; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/20_sort.sy"

@n = global i32  zeroinitializer
@maxn = constant i32  100005
@cnt = global [400020 x i32 ] zeroinitializer
@x = global [100005 x i32 ] zeroinitializer
@a = global [100005 x i32 ] zeroinitializer
@b = global [100005 x i32 ] zeroinitializer
@c = global [100005 x i32 ] zeroinitializer
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
define void @sortA(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label32
  %op5 = load i32 , i32 * %op3
  %op6 = load i32 , i32 * @n
  %op7 = icmp slt i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label13
label10:                                                ; preds = %label4
  %op11 = load i32 , i32 * %op3
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op2
  br label %label14
label13:                                                ; preds = %label4
  ret void
label14:                                                ; preds = %label10, %label52
  %op15 = load i32 , i32 * %op2
  %op16 = load i32 , i32 * @n
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label32
label20:                                                ; preds = %label14
  %op21 = load i32 , i32 * %op3
  %op22 = load i32 *, i32 ** %op1
  %op23 = getelementptr i32 , i32 * %op22, i32  %op21
  %op24 = load i32 , i32 * %op23
  %op25 = load i32 , i32 * %op2
  %op26 = load i32 *, i32 ** %op1
  %op27 = getelementptr i32 , i32 * %op26, i32  %op25
  %op28 = load i32 , i32 * %op27
  %op29 = icmp sgt i32  %op24, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label35, label %label52
label32:                                                ; preds = %label14
  %op33 = load i32 , i32 * %op3
  %op34 = add i32  %op33, 1
  store i32  %op34, i32 * %op3
  br label %label4
label35:                                                ; preds = %label20
  %op36 = alloca i32 
  %op37 = load i32 , i32 * %op3
  %op38 = load i32 *, i32 ** %op1
  %op39 = getelementptr i32 , i32 * %op38, i32  %op37
  %op40 = load i32 , i32 * %op39
  store i32  %op40, i32 * %op36
  %op41 = load i32 , i32 * %op2
  %op42 = load i32 *, i32 ** %op1
  %op43 = getelementptr i32 , i32 * %op42, i32  %op41
  %op44 = load i32 , i32 * %op43
  %op45 = load i32 , i32 * %op3
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  store i32  %op44, i32 * %op47
  %op48 = load i32 , i32 * %op36
  %op49 = load i32 , i32 * %op2
  %op50 = load i32 *, i32 ** %op1
  %op51 = getelementptr i32 , i32 * %op50, i32  %op49
  store i32  %op48, i32 * %op51
  br label %label52
label52:                                                ; preds = %label20, %label35
  %op53 = load i32 , i32 * %op2
  %op54 = add i32  %op53, 1
  store i32  %op54, i32 * %op2
  br label %label14
}
define void @sortB(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  -100, i32 * %op2
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label38
  %op5 = load i32 , i32 * %op3
  %op6 = load i32 , i32 * @n
  %op7 = icmp slt i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label31
label10:                                                ; preds = %label4
  %op11 = load i32 , i32 * %op3
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  %op15 = getelementptr [400020 x i32 ], [400020 x i32 ]* @cnt, i32  0, i32  %op14
  %op16 = load i32 , i32 * %op15
  %op17 = add i32  %op16, 1
  %op18 = load i32 , i32 * %op3
  %op19 = load i32 *, i32 ** %op1
  %op20 = getelementptr i32 , i32 * %op19, i32  %op18
  %op21 = load i32 , i32 * %op20
  %op22 = getelementptr [400020 x i32 ], [400020 x i32 ]* @cnt, i32  0, i32  %op21
  store i32  %op17, i32 * %op22
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 *, i32 ** %op1
  %op25 = getelementptr i32 , i32 * %op24, i32  %op23
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op2
  %op28 = icmp sgt i32  %op26, %op27
  %op29 = zext i1  %op28 to i32 
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label33, label %label38
label31:                                                ; preds = %label4
  store i32  0, i32 * %op3
  %op32 = alloca i32 
  store i32  0, i32 * %op32
  br label %label41
label33:                                                ; preds = %label10
  %op34 = load i32 , i32 * %op3
  %op35 = load i32 *, i32 ** %op1
  %op36 = getelementptr i32 , i32 * %op35, i32  %op34
  %op37 = load i32 , i32 * %op36
  store i32  %op37, i32 * %op2
  br label %label38
label38:                                                ; preds = %label10, %label33
  %op39 = load i32 , i32 * %op3
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op3
  br label %label4
label41:                                                ; preds = %label31, %label65
  %op42 = load i32 , i32 * %op3
  %op43 = load i32 , i32 * %op2
  %op44 = icmp sle i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label52
label47:                                                ; preds = %label41
  %op48 = alloca i32 
  %op49 = load i32 , i32 * %op3
  %op50 = getelementptr [400020 x i32 ], [400020 x i32 ]* @cnt, i32  0, i32  %op49
  %op51 = load i32 , i32 * %op50
  store i32  %op51, i32 * %op48
  br label %label53
label52:                                                ; preds = %label41
  ret void
label53:                                                ; preds = %label47, %label56
  %op54 = load i32 , i32 * %op48
  %op55 = icmp ne i32  %op54, 0
  br i1  %op55, label %label56, label %label65
label56:                                                ; preds = %label53
  %op57 = load i32 , i32 * %op3
  %op58 = load i32 , i32 * %op32
  %op59 = load i32 *, i32 ** %op1
  %op60 = getelementptr i32 , i32 * %op59, i32  %op58
  store i32  %op57, i32 * %op60
  %op61 = load i32 , i32 * %op32
  %op62 = add i32  %op61, 1
  store i32  %op62, i32 * %op32
  %op63 = load i32 , i32 * %op48
  %op64 = sub i32  %op63, 1
  store i32  %op64, i32 * %op48
  br label %label53
label65:                                                ; preds = %label53
  %op66 = load i32 , i32 * %op3
  %op67 = add i32  %op66, 1
  store i32  %op67, i32 * %op3
  br label %label41
}
define void @sortC(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label34
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label15
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op10
  %op13 = alloca i32 
  %op14 = load i32 , i32 * %op2
  store i32  %op14, i32 * %op13
  br label %label16
label15:                                                ; preds = %label3
  ret void
label16:                                                ; preds = %label9, %label55
  %op17 = load i32 , i32 * %op10
  %op18 = load i32 , i32 * @n
  %op19 = icmp slt i32  %op17, %op18
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label34
label22:                                                ; preds = %label16
  %op23 = load i32 , i32 * %op10
  %op24 = load i32 *, i32 ** %op1
  %op25 = getelementptr i32 , i32 * %op24, i32  %op23
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op13
  %op28 = load i32 *, i32 ** %op1
  %op29 = getelementptr i32 , i32 * %op28, i32  %op27
  %op30 = load i32 , i32 * %op29
  %op31 = icmp slt i32  %op26, %op30
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label53, label %label55
label34:                                                ; preds = %label16
  %op35 = alloca i32 
  %op36 = load i32 , i32 * %op2
  %op37 = load i32 *, i32 ** %op1
  %op38 = getelementptr i32 , i32 * %op37, i32  %op36
  %op39 = load i32 , i32 * %op38
  store i32  %op39, i32 * %op35
  %op40 = load i32 , i32 * %op13
  %op41 = load i32 *, i32 ** %op1
  %op42 = getelementptr i32 , i32 * %op41, i32  %op40
  %op43 = load i32 , i32 * %op42
  %op44 = load i32 , i32 * %op2
  %op45 = load i32 *, i32 ** %op1
  %op46 = getelementptr i32 , i32 * %op45, i32  %op44
  store i32  %op43, i32 * %op46
  %op47 = load i32 , i32 * %op35
  %op48 = load i32 , i32 * %op13
  %op49 = load i32 *, i32 ** %op1
  %op50 = getelementptr i32 , i32 * %op49, i32  %op48
  store i32  %op47, i32 * %op50
  %op51 = load i32 , i32 * %op2
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op2
  br label %label3
label53:                                                ; preds = %label22
  %op54 = load i32 , i32 * %op10
  store i32  %op54, i32 * %op13
  br label %label55
label55:                                                ; preds = %label22, %label53
  %op56 = load i32 , i32 * %op10
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op10
  br label %label16
}
define i32  @main() {
label_entry:
  %op0 = call i32  @quick_read()
  store i32  %op0, i32 * @n
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label8
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * @n
  %op5 = icmp ne i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label24
label8:                                                ; preds = %label2
  %op9 = call i32  @quick_read()
  %op10 = load i32 , i32 * %op1
  %op11 = getelementptr [100005 x i32 ], [100005 x i32 ]* @a, i32  0, i32  %op10
  store i32  %op9, i32 * %op11
  %op12 = load i32 , i32 * %op1
  %op13 = getelementptr [100005 x i32 ], [100005 x i32 ]* @a, i32  0, i32  %op12
  %op14 = load i32 , i32 * %op13
  %op15 = load i32 , i32 * %op1
  %op16 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op15
  store i32  %op14, i32 * %op16
  %op17 = load i32 , i32 * %op1
  %op18 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op17
  %op19 = load i32 , i32 * %op18
  %op20 = load i32 , i32 * %op1
  %op21 = getelementptr [100005 x i32 ], [100005 x i32 ]* @c, i32  0, i32  %op20
  store i32  %op19, i32 * %op21
  %op22 = load i32 , i32 * %op1
  %op23 = add i32  %op22, 1
  store i32  %op23, i32 * %op1
  br label %label2
label24:                                                ; preds = %label2
  %op25 = getelementptr [100005 x i32 ], [100005 x i32 ]* @a, i32  0, i32  0
  call void @sortA(i32 * %op25)
  %op26 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  0
  call void @sortB(i32 * %op26)
  %op27 = getelementptr [100005 x i32 ], [100005 x i32 ]* @c, i32  0, i32  0
  call void @sortC(i32 * %op27)
  store i32  0, i32 * %op1
  br label %label28
label28:                                                ; preds = %label24, %label33
  %op29 = load i32 , i32 * @n
  %op30 = load i32 , i32 * %op1
  %op31 = sub i32  %op29, %op30
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label33, label %label58
label33:                                                ; preds = %label28
  %op34 = load i32 , i32 * %op1
  %op35 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op34
  %op36 = load i32 , i32 * %op35
  %op37 = load i32 , i32 * %op1
  %op38 = getelementptr [100005 x i32 ], [100005 x i32 ]* @a, i32  0, i32  %op37
  %op39 = load i32 , i32 * %op38
  %op40 = sub i32  %op36, %op39
  %op41 = load i32 , i32 * %op1
  %op42 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op41
  store i32  %op40, i32 * %op42
  %op43 = load i32 , i32 * %op1
  %op44 = getelementptr [100005 x i32 ], [100005 x i32 ]* @c, i32  0, i32  %op43
  %op45 = load i32 , i32 * %op44
  %op46 = load i32 , i32 * %op1
  %op47 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op46
  %op48 = load i32 , i32 * %op47
  %op49 = sub i32  %op45, %op48
  %op50 = load i32 , i32 * %op1
  %op51 = getelementptr [100005 x i32 ], [100005 x i32 ]* @a, i32  0, i32  %op50
  %op52 = load i32 , i32 * %op51
  %op53 = sub i32  %op49, %op52
  %op54 = load i32 , i32 * %op1
  %op55 = getelementptr [100005 x i32 ], [100005 x i32 ]* @c, i32  0, i32  %op54
  store i32  %op53, i32 * %op55
  %op56 = load i32 , i32 * %op1
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op1
  br label %label28
label58:                                                ; preds = %label28
  store i32  0, i32 * %op1
  br label %label59
label59:                                                ; preds = %label58, %label77
  %op60 = load i32 , i32 * %op1
  %op61 = load i32 , i32 * @n
  %op62 = sub i32  %op60, %op61
  %op63 = icmp ne i32  %op62, 0
  br i1  %op63, label %label64, label %label69
label64:                                                ; preds = %label59
  %op65 = load i32 , i32 * %op1
  %op66 = getelementptr [100005 x i32 ], [100005 x i32 ]* @b, i32  0, i32  %op65
  %op67 = load i32 , i32 * %op66
  %op68 = icmp ne i32  %op67, 0
  br i1  %op68, label %label70, label %label71
label69:                                                ; preds = %label59
  ret i32  -123
label70:                                                ; preds = %label64
  ret i32  1
label71:                                                ; preds = %label64
  %op72 = load i32 , i32 * %op1
  %op73 = getelementptr [100005 x i32 ], [100005 x i32 ]* @c, i32  0, i32  %op72
  %op74 = load i32 , i32 * %op73
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label76, label %label77
label76:                                                ; preds = %label71
  ret i32  2
label77:                                                ; preds = %label71
  %op78 = load i32 , i32 * %op1
  %op79 = add i32  %op78, 1
  store i32  %op79, i32 * %op1
  br label %label59
}
