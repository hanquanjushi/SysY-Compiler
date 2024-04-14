; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/17_maximal_clique.sy"

@maxN = constant i32  30
@maxM = constant i32  600
@store = global [30 x i32 ] zeroinitializer
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@graph = global [30 x [30 x i32 ]] zeroinitializer
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

define i32  @is_clique(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label33
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op1
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label13
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  %op12 = add i32  %op11, 1
  store i32  %op12, i32 * %op10
  br label %label14
label13:                                                ; preds = %label3
  ret i32  1
label14:                                                ; preds = %label9, %label37
  %op15 = load i32 , i32 * %op10
  %op16 = load i32 , i32 * %op1
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label33
label20:                                                ; preds = %label14
  %op21 = load i32 , i32 * %op2
  %op22 = getelementptr [30 x i32 ], [30 x i32 ]* @store, i32  0, i32  %op21
  %op23 = load i32 , i32 * %op22
  %op24 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @graph, i32  0, i32  %op23
  %op25 = load i32 , i32 * %op10
  %op26 = getelementptr [30 x i32 ], [30 x i32 ]* @store, i32  0, i32  %op25
  %op27 = load i32 , i32 * %op26
  %op28 = getelementptr [30 x i32 ], [30 x i32 ]* %op24, i32  0, i32  %op27
  %op29 = load i32 , i32 * %op28
  %op30 = icmp eq i32  %op29, 0
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label36, label %label37
label33:                                                ; preds = %label14
  %op34 = load i32 , i32 * %op2
  %op35 = add i32  %op34, 1
  store i32  %op35, i32 * %op2
  br label %label3
label36:                                                ; preds = %label20
  ret i32  0
label37:                                                ; preds = %label20
  %op38 = load i32 , i32 * %op10
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * %op10
  br label %label14
}
define i32  @maxCliques(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  %op5 = alloca i32 
  store i32  1, i32 * %op5
  store i32  1, i32 * %op2
  br label %label6
label6:                                                ; preds = %label_entry, %label28
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @n
  %op9 = icmp sle i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label20
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 , i32 * %op3
  %op15 = getelementptr [30 x i32 ], [30 x i32 ]* @store, i32  0, i32  %op14
  store i32  %op13, i32 * %op15
  %op16 = load i32 , i32 * %op3
  %op17 = add i32  %op16, 1
  %op18 = call i32  @is_clique(i32  %op17)
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label22, label %label28
label20:                                                ; preds = %label6
  %op21 = load i32 , i32 * %op4
  ret i32  %op21
label22:                                                ; preds = %label12
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 , i32 * %op4
  %op25 = icmp sgt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label31, label %label33
label28:                                                ; preds = %label12, %label46
  %op29 = load i32 , i32 * %op5
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op5
  br label %label6
label31:                                                ; preds = %label22
  %op32 = load i32 , i32 * %op3
  store i32  %op32, i32 * %op4
  br label %label33
label33:                                                ; preds = %label22, %label31
  %op34 = alloca i32 
  %op35 = load i32 , i32 * %op5
  %op36 = load i32 , i32 * %op3
  %op37 = add i32  %op36, 1
  %op38 = call i32  @maxCliques(i32  %op35, i32  %op37)
  store i32  %op38, i32 * %op34
  %op39 = load i32 , i32 * %op34
  %op40 = load i32 , i32 * %op4
  %op41 = icmp sgt i32  %op39, %op40
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label44, label %label46
label44:                                                ; preds = %label33
  %op45 = load i32 , i32 * %op34
  store i32  %op45, i32 * %op4
  br label %label46
label46:                                                ; preds = %label33, %label44
  br label %label28
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  store i32  %op0, i32 * @n
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @m
  %op2 = alloca [600 x [2 x i32 ]]
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label10
  %op5 = load i32 , i32 * %op3
  %op6 = load i32 , i32 * @m
  %op7 = icmp slt i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label21
label10:                                                ; preds = %label4
  %op11 = call i32  @getint()
  %op12 = load i32 , i32 * %op3
  %op13 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op12
  %op14 = getelementptr [2 x i32 ], [2 x i32 ]* %op13, i32  0, i32  0
  store i32  %op11, i32 * %op14
  %op15 = call i32  @getint()
  %op16 = load i32 , i32 * %op3
  %op17 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op16
  %op18 = getelementptr [2 x i32 ], [2 x i32 ]* %op17, i32  0, i32  1
  store i32  %op15, i32 * %op18
  %op19 = load i32 , i32 * %op3
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op3
  br label %label4
label21:                                                ; preds = %label4
  store i32  0, i32 * %op3
  br label %label22
label22:                                                ; preds = %label21, %label28
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 , i32 * @m
  %op25 = icmp slt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label51
label28:                                                ; preds = %label22
  %op29 = load i32 , i32 * %op3
  %op30 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op29
  %op31 = getelementptr [2 x i32 ], [2 x i32 ]* %op30, i32  0, i32  0
  %op32 = load i32 , i32 * %op31
  %op33 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @graph, i32  0, i32  %op32
  %op34 = load i32 , i32 * %op3
  %op35 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op34
  %op36 = getelementptr [2 x i32 ], [2 x i32 ]* %op35, i32  0, i32  1
  %op37 = load i32 , i32 * %op36
  %op38 = getelementptr [30 x i32 ], [30 x i32 ]* %op33, i32  0, i32  %op37
  store i32  1, i32 * %op38
  %op39 = load i32 , i32 * %op3
  %op40 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op39
  %op41 = getelementptr [2 x i32 ], [2 x i32 ]* %op40, i32  0, i32  1
  %op42 = load i32 , i32 * %op41
  %op43 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @graph, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op3
  %op45 = getelementptr [600 x [2 x i32 ]], [600 x [2 x i32 ]]* %op2, i32  0, i32  %op44
  %op46 = getelementptr [2 x i32 ], [2 x i32 ]* %op45, i32  0, i32  0
  %op47 = load i32 , i32 * %op46
  %op48 = getelementptr [30 x i32 ], [30 x i32 ]* %op43, i32  0, i32  %op47
  store i32  1, i32 * %op48
  %op49 = load i32 , i32 * %op3
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op3
  br label %label22
label51:                                                ; preds = %label22
  %op52 = call i32  @maxCliques(i32  0, i32  1)
  call void @putint(i32  %op52)
  ret i32  0
}
