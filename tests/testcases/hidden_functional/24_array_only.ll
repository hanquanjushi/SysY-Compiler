; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/24_array_only.sy"

@i = global [1 x i32 ] zeroinitializer
@k = global [1 x i32 ] zeroinitializer
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

define void @inc_impl(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = icmp eq i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label15
label8:                                                ; preds = %label_entry
  %op9 = load i32 *, i32 ** %op2
  %op10 = getelementptr i32 , i32 * %op9, i32  0
  %op11 = load i32 , i32 * %op10
  %op12 = add i32  %op11, 1
  %op13 = load i32 *, i32 ** %op2
  %op14 = getelementptr i32 , i32 * %op13, i32  0
  store i32  %op12, i32 * %op14
  br label %label25
label15:                                                ; preds = %label_entry
  %op16 = load i32 *, i32 ** %op2
  %op17 = getelementptr i32 , i32 * %op16, i32  0
  %op18 = load i32 , i32 * %op17
  %op19 = mul i32  %op18, 2
  %op20 = load i32 *, i32 ** %op2
  %op21 = getelementptr i32 , i32 * %op20, i32  0
  store i32  %op19, i32 * %op21
  %op22 = load i32 *, i32 ** %op2
  %op23 = load i32 , i32 * %op3
  %op24 = sub i32  %op23, 1
  call void @inc_impl(i32 * %op22, i32  %op24)
  br label %label25
label25:                                                ; preds = %label8, %label15
  ret void
}
define void @inc(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = load i32 *, i32 ** %op1
  %op3 = getelementptr [1 x i32 ], [1 x i32 ]* @k, i32  0, i32  0
  %op4 = load i32 , i32 * %op3
  call void @inc_impl(i32 * %op2, i32  %op4)
  ret void
}
define void @add_impl(i32 * %arg0, i32 * %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 *
  store i32 * %arg1, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op5
  %op7 = icmp eq i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label20
label10:                                                ; preds = %label_entry
  %op11 = load i32 *, i32 ** %op3
  %op12 = getelementptr i32 , i32 * %op11, i32  0
  %op13 = load i32 , i32 * %op12
  %op14 = load i32 *, i32 ** %op4
  %op15 = getelementptr i32 , i32 * %op14, i32  0
  %op16 = load i32 , i32 * %op15
  %op17 = add i32  %op13, %op16
  %op18 = load i32 *, i32 ** %op3
  %op19 = getelementptr i32 , i32 * %op18, i32  0
  store i32  %op17, i32 * %op19
  br label %label31
label20:                                                ; preds = %label_entry
  %op21 = load i32 *, i32 ** %op3
  %op22 = getelementptr i32 , i32 * %op21, i32  0
  %op23 = load i32 , i32 * %op22
  %op24 = mul i32  %op23, 2
  %op25 = load i32 *, i32 ** %op3
  %op26 = getelementptr i32 , i32 * %op25, i32  0
  store i32  %op24, i32 * %op26
  %op27 = load i32 *, i32 ** %op3
  %op28 = load i32 *, i32 ** %op4
  %op29 = load i32 , i32 * %op5
  %op30 = sub i32  %op29, 1
  call void @add_impl(i32 * %op27, i32 * %op28, i32  %op30)
  br label %label31
label31:                                                ; preds = %label10, %label20
  ret void
}
define void @add(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = load i32 *, i32 ** %op2
  %op5 = load i32 *, i32 ** %op3
  %op6 = getelementptr [1 x i32 ], [1 x i32 ]* @k, i32  0, i32  0
  %op7 = load i32 , i32 * %op6
  call void @add_impl(i32 * %op4, i32 * %op5, i32  %op7)
  ret void
}
define void @sub_impl(i32 * %arg0, i32 * %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 *
  store i32 * %arg1, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op5
  %op7 = icmp eq i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label20
label10:                                                ; preds = %label_entry
  %op11 = load i32 *, i32 ** %op3
  %op12 = getelementptr i32 , i32 * %op11, i32  0
  %op13 = load i32 , i32 * %op12
  %op14 = load i32 *, i32 ** %op4
  %op15 = getelementptr i32 , i32 * %op14, i32  0
  %op16 = load i32 , i32 * %op15
  %op17 = sub i32  %op13, %op16
  %op18 = load i32 *, i32 ** %op3
  %op19 = getelementptr i32 , i32 * %op18, i32  0
  store i32  %op17, i32 * %op19
  br label %label31
label20:                                                ; preds = %label_entry
  %op21 = load i32 *, i32 ** %op3
  %op22 = getelementptr i32 , i32 * %op21, i32  0
  %op23 = load i32 , i32 * %op22
  %op24 = mul i32  %op23, 2
  %op25 = load i32 *, i32 ** %op3
  %op26 = getelementptr i32 , i32 * %op25, i32  0
  store i32  %op24, i32 * %op26
  %op27 = load i32 *, i32 ** %op3
  %op28 = load i32 *, i32 ** %op4
  %op29 = load i32 , i32 * %op5
  %op30 = sub i32  %op29, 1
  call void @sub_impl(i32 * %op27, i32 * %op28, i32  %op30)
  br label %label31
label31:                                                ; preds = %label10, %label20
  ret void
}
define void @sub(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = load i32 *, i32 ** %op2
  %op5 = load i32 *, i32 ** %op3
  %op6 = getelementptr [1 x i32 ], [1 x i32 ]* @k, i32  0, i32  0
  %op7 = load i32 , i32 * %op6
  call void @sub_impl(i32 * %op4, i32 * %op5, i32  %op7)
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca [1 x [2 x i32 ]]
  %op1 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op1
  %op2 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op2
  %op3 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
  store i32  -1, i32 * %op3
  %op4 = alloca [1 x i32 ]
  %op5 = alloca [1 x i32 ]
  %op6 = call i32  @getint()
  %op7 = getelementptr [1 x i32 ], [1 x i32 ]* @k, i32  0, i32  0
  store i32  %op6, i32 * %op7
  %op8 = call i32  @getint()
  %op9 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  store i32  %op8, i32 * %op9
  %op10 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op11 = getelementptr [2 x i32 ], [2 x i32 ]* %op10, i32  0, i32  0
  %op12 = call i32  @getarray(i32 * %op11)
  br label %label13
label13:                                                ; preds = %label_entry, %label61
  %op14 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  %op15 = load i32 , i32 * %op14
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label22
label17:                                                ; preds = %label13
  %op18 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op19 = getelementptr [2 x i32 ], [2 x i32 ]* %op18, i32  0, i32  0
  %op20 = load i32 , i32 * %op19
  %op21 = getelementptr [1 x i32 ], [1 x i32 ]* %op5, i32  0, i32  0
  store i32  %op20, i32 * %op21
  br label %label23
label22:                                                ; preds = %label13, %label60
  call void @putch(i32  10)
  ret i32  0
label23:                                                ; preds = %label17, %label29
  %op24 = getelementptr [1 x i32 ], [1 x i32 ]* %op5, i32  0, i32  0
  %op25 = load i32 , i32 * %op24
  %op26 = icmp slt i32  %op25, 5
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label47
label29:                                                ; preds = %label23
  %op30 = getelementptr [1 x i32 ], [1 x i32 ]* @i, i32  0, i32  0
  %op31 = load i32 , i32 * %op30
  call void @putint(i32  %op31)
  %op32 = getelementptr [1 x i32 ], [1 x i32 ]* %op5, i32  0, i32  0
  %op33 = load i32 , i32 * %op32
  call void @putint(i32  %op33)
  %op34 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  %op35 = load i32 , i32 * %op34
  call void @putint(i32  %op35)
  %op36 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op37 = getelementptr [2 x i32 ], [2 x i32 ]* %op36, i32  0, i32  0
  %op38 = load i32 , i32 * %op37
  call void @putint(i32  %op38)
  %op39 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op40 = getelementptr [2 x i32 ], [2 x i32 ]* %op39, i32  0, i32  0
  %op41 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  call void @add(i32 * %op40, i32 * %op41)
  %op42 = getelementptr [1 x i32 ], [1 x i32 ]* %op5, i32  0, i32  0
  %op43 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  call void @add(i32 * %op42, i32 * %op43)
  %op44 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op45 = getelementptr [2 x i32 ], [2 x i32 ]* %op44, i32  0, i32  0
  %op46 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
  call void @sub(i32 * %op45, i32 * %op46)
  br label %label23
label47:                                                ; preds = %label23
  %op48 = getelementptr [1 x i32 ], [1 x i32 ]* @i, i32  0, i32  0
  call void @inc(i32 * %op48)
  %op49 = getelementptr [1 x i32 ], [1 x i32 ]* @i, i32  0, i32  0
  %op50 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op51 = getelementptr [2 x i32 ], [2 x i32 ]* %op50, i32  0, i32  0
  call void @add(i32 * %op49, i32 * %op51)
  %op52 = getelementptr [1 x i32 ], [1 x i32 ]* @i, i32  0, i32  0
  %op53 = load i32 , i32 * %op52
  %op54 = getelementptr [1 x [2 x i32 ]], [1 x [2 x i32 ]]* %op0, i32  0, i32  0
  %op55 = getelementptr [2 x i32 ], [2 x i32 ]* %op54, i32  0, i32  1
  %op56 = load i32 , i32 * %op55
  %op57 = icmp eq i32  %op53, %op56
  %op58 = zext i1  %op57 to i32 
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label60, label %label61
label60:                                                ; preds = %label47
  br label %label22
label61:                                                ; preds = %label47
  br label %label13
}
