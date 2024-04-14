; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/21_union_find.sy"

@maxN = constant i32  1005
@parent = global [1005 x i32 ] zeroinitializer
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

define i32  @find(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op2
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
  %op12 = load i32 , i32 * %op1
  %op13 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op12
  %op14 = load i32 , i32 * %op13
  %op15 = call i32  @find(i32  %op14)
  %op16 = load i32 , i32 * %op1
  %op17 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op16
  store i32  %op15, i32 * %op17
  %op18 = load i32 , i32 * %op1
  %op19 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op18
  %op20 = load i32 , i32 * %op19
  ret i32  %op20
}
define void @merge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = load i32 , i32 * %op2
  %op7 = call i32  @find(i32  %op6)
  store i32  %op7, i32 * %op5
  %op8 = load i32 , i32 * %op3
  %op9 = call i32  @find(i32  %op8)
  store i32  %op9, i32 * %op4
  %op10 = load i32 , i32 * %op5
  %op11 = load i32 , i32 * %op4
  %op12 = icmp ne i32  %op10, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label19
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op5
  %op17 = load i32 , i32 * %op4
  %op18 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op17
  store i32  %op16, i32 * %op18
  br label %label19
label19:                                                ; preds = %label_entry, %label15
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = call i32  @getint()
  store i32  %op2, i32 * %op1
  %op3 = alloca i32 
  %op4 = call i32  @getint()
  store i32  %op4, i32 * %op3
  %op5 = alloca i32 
  %op6 = alloca i32 
  store i32  0, i32 * %op0
  br label %label7
label7:                                                ; preds = %label_entry, %label13
  %op8 = load i32 , i32 * %op0
  %op9 = load i32 , i32 * %op3
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label19
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op0
  %op15 = load i32 , i32 * %op0
  %op16 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op15
  store i32  %op14, i32 * %op16
  %op17 = load i32 , i32 * %op0
  %op18 = add i32  %op17, 1
  store i32  %op18, i32 * %op0
  br label %label7
label19:                                                ; preds = %label7
  store i32  0, i32 * %op0
  br label %label20
label20:                                                ; preds = %label19, %label26
  %op21 = load i32 , i32 * %op0
  %op22 = load i32 , i32 * %op1
  %op23 = icmp slt i32  %op21, %op22
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label33
label26:                                                ; preds = %label20
  %op27 = call i32  @getint()
  store i32  %op27, i32 * %op6
  %op28 = call i32  @getint()
  store i32  %op28, i32 * %op5
  %op29 = load i32 , i32 * %op6
  %op30 = load i32 , i32 * %op5
  call void @merge(i32  %op29, i32  %op30)
  %op31 = load i32 , i32 * %op0
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op0
  br label %label20
label33:                                                ; preds = %label20
  %op34 = alloca i32 
  store i32  0, i32 * %op34
  store i32  0, i32 * %op0
  br label %label35
label35:                                                ; preds = %label33, %label54
  %op36 = load i32 , i32 * %op0
  %op37 = load i32 , i32 * %op3
  %op38 = icmp slt i32  %op36, %op37
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label41, label %label49
label41:                                                ; preds = %label35
  %op42 = load i32 , i32 * %op0
  %op43 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = load i32 , i32 * %op0
  %op46 = icmp eq i32  %op44, %op45
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label51, label %label54
label49:                                                ; preds = %label35
  %op50 = load i32 , i32 * %op34
  call void @putint(i32  %op50)
  ret i32  0
label51:                                                ; preds = %label41
  %op52 = load i32 , i32 * %op34
  %op53 = add i32  %op52, 1
  store i32  %op53, i32 * %op34
  br label %label54
label54:                                                ; preds = %label41, %label51
  %op55 = load i32 , i32 * %op0
  %op56 = add i32  %op55, 1
  store i32  %op56, i32 * %op0
  br label %label35
}
