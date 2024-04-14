; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/16_k_smallest.sy"

@maxN = constant i32  1000
@space = constant i32  32
@array = global [1000 x i32 ] zeroinitializer
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

define void @swap(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op2
  %op6 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op5
  %op7 = load i32 , i32 * %op6
  store i32  %op7, i32 * %op4
  %op8 = load i32 , i32 * %op3
  %op9 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op8
  %op10 = load i32 , i32 * %op9
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op11
  store i32  %op10, i32 * %op12
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op3
  %op15 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op14
  store i32  %op13, i32 * %op15
  ret void
}
define i32  @findPivot(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op3
  %op6 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op5
  %op7 = load i32 , i32 * %op6
  store i32  %op7, i32 * %op4
  %op8 = alloca i32 
  %op9 = load i32 , i32 * %op2
  store i32  %op9, i32 * %op8
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  store i32  %op11, i32 * %op10
  br label %label12
label12:                                                ; preds = %label_entry, %label35
  %op13 = load i32 , i32 * %op8
  %op14 = load i32 , i32 * %op3
  %op15 = icmp slt i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label26
label18:                                                ; preds = %label12
  %op19 = load i32 , i32 * %op8
  %op20 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op19
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op4
  %op23 = icmp sle i32  %op21, %op22
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label30, label %label35
label26:                                                ; preds = %label12
  %op27 = load i32 , i32 * %op10
  %op28 = load i32 , i32 * %op3
  call void @swap(i32  %op27, i32  %op28)
  %op29 = load i32 , i32 * %op10
  ret i32  %op29
label30:                                                ; preds = %label18
  %op31 = load i32 , i32 * %op8
  %op32 = load i32 , i32 * %op10
  call void @swap(i32  %op31, i32  %op32)
  %op33 = load i32 , i32 * %op10
  %op34 = add i32  %op33, 1
  store i32  %op34, i32 * %op10
  br label %label35
label35:                                                ; preds = %label18, %label30
  %op36 = load i32 , i32 * %op8
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op8
  br label %label12
}
define void @findSmallest(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca i32 
  store i32  %arg0, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 
  store i32  %arg2, i32 * %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 , i32 * %op5
  %op10 = icmp eq i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label14
label13:                                                ; preds = %label_entry
  ret void
label14:                                                ; preds = %label_entry
  %op15 = alloca i32 
  %op16 = load i32 , i32 * %op4
  %op17 = load i32 , i32 * %op5
  %op18 = call i32  @findPivot(i32  %op16, i32  %op17)
  store i32  %op18, i32 * %op15
  %op19 = load i32 , i32 * %op6
  %op20 = load i32 , i32 * %op15
  %op21 = icmp eq i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label25, label %label27
label24:                                                ; preds = %label33
  ret void
label25:                                                ; preds = %label14
  %op26 = alloca i32 
  store i32  0, i32 * %op26
  br label %label34
label27:                                                ; preds = %label14
  %op28 = load i32 , i32 * %op6
  %op29 = load i32 , i32 * %op15
  %op30 = icmp slt i32  %op28, %op29
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label48, label %label54
label33:                                                ; preds = %label47, %label60
  br label %label24
label34:                                                ; preds = %label25, %label40
  %op35 = load i32 , i32 * %op26
  %op36 = load i32 , i32 * %op15
  %op37 = icmp slt i32  %op35, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label47
label40:                                                ; preds = %label34
  %op41 = load i32 , i32 * %op26
  %op42 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op41
  %op43 = load i32 , i32 * %op42
  call void @putint(i32  %op43)
  %op44 = load i32 , i32 * @space
  call void @putch(i32  %op44)
  %op45 = load i32 , i32 * %op26
  %op46 = add i32  %op45, 1
  store i32  %op46, i32 * %op26
  br label %label34
label47:                                                ; preds = %label34
  br label %label33
label48:                                                ; preds = %label27
  %op49 = load i32 , i32 * %op4
  %op50 = load i32 , i32 * %op15
  %op51 = sub i32  %op50, 1
  %op52 = load i32 , i32 * %op6
  %op53 = load i32 , i32 * %op7
  call void @findSmallest(i32  %op49, i32  %op51, i32  %op52, i32  %op53)
  br label %label60
label54:                                                ; preds = %label27
  %op55 = load i32 , i32 * %op15
  %op56 = add i32  %op55, 1
  %op57 = load i32 , i32 * %op5
  %op58 = load i32 , i32 * %op6
  %op59 = load i32 , i32 * %op7
  call void @findSmallest(i32  %op56, i32  %op57, i32  %op58, i32  %op59)
  br label %label60
label60:                                                ; preds = %label48, %label54
  br label %label33
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  %op3 = call i32  @getint()
  store i32  %op3, i32 * %op2
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op2
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label17
label11:                                                ; preds = %label5
  %op12 = call i32  @getint()
  %op13 = load i32 , i32 * %op4
  %op14 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  %op15 = load i32 , i32 * %op4
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * %op4
  br label %label5
label17:                                                ; preds = %label5
  %op18 = alloca i32 
  %op19 = load i32 , i32 * %op2
  %op20 = sub i32  %op19, 1
  store i32  %op20, i32 * %op18
  %op21 = alloca i32 
  store i32  0, i32 * %op21
  %op22 = load i32 , i32 * %op21
  %op23 = load i32 , i32 * %op18
  %op24 = load i32 , i32 * %op0
  %op25 = load i32 , i32 * %op2
  call void @findSmallest(i32  %op22, i32  %op23, i32  %op24, i32  %op25)
  ret i32  0
}
