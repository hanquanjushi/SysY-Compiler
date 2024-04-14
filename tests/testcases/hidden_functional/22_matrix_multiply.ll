; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/22_matrix_multiply.sy"

@MAX_SIZE = constant i32  100
@a = global [100 x [100 x i32 ]] zeroinitializer
@b = global [100 x [100 x i32 ]] zeroinitializer
@res = global [100 x [100 x i32 ]] zeroinitializer
@n1 = global i32  zeroinitializer
@m1 = global i32  zeroinitializer
@n2 = global i32  zeroinitializer
@m2 = global i32  zeroinitializer
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

define void @matrix_multiply() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label18
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @m1
  %op4 = icmp slt i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label1
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label10
label9:                                                ; preds = %label1
  ret void
label10:                                                ; preds = %label7, %label51
  %op11 = load i32 , i32 * %op8
  %op12 = load i32 , i32 * @n2
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label18
label16:                                                ; preds = %label10
  %op17 = alloca i32 
  store i32  0, i32 * %op17
  br label %label21
label18:                                                ; preds = %label10
  %op19 = load i32 , i32 * %op0
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op0
  br label %label1
label21:                                                ; preds = %label16, %label27
  %op22 = load i32 , i32 * %op17
  %op23 = load i32 , i32 * @n1
  %op24 = icmp slt i32  %op22, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label51
label27:                                                ; preds = %label21
  %op28 = load i32 , i32 * %op0
  %op29 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @res, i32  0, i32  %op28
  %op30 = load i32 , i32 * %op8
  %op31 = getelementptr [100 x i32 ], [100 x i32 ]* %op29, i32  0, i32  %op30
  %op32 = load i32 , i32 * %op31
  %op33 = load i32 , i32 * %op0
  %op34 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @a, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op17
  %op36 = getelementptr [100 x i32 ], [100 x i32 ]* %op34, i32  0, i32  %op35
  %op37 = load i32 , i32 * %op36
  %op38 = load i32 , i32 * %op17
  %op39 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @b, i32  0, i32  %op38
  %op40 = load i32 , i32 * %op8
  %op41 = getelementptr [100 x i32 ], [100 x i32 ]* %op39, i32  0, i32  %op40
  %op42 = load i32 , i32 * %op41
  %op43 = mul i32  %op37, %op42
  %op44 = add i32  %op32, %op43
  %op45 = load i32 , i32 * %op0
  %op46 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @res, i32  0, i32  %op45
  %op47 = load i32 , i32 * %op8
  %op48 = getelementptr [100 x i32 ], [100 x i32 ]* %op46, i32  0, i32  %op47
  store i32  %op44, i32 * %op48
  %op49 = load i32 , i32 * %op17
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op17
  br label %label21
label51:                                                ; preds = %label21
  %op52 = load i32 , i32 * %op8
  %op53 = add i32  %op52, 1
  store i32  %op53, i32 * %op8
  br label %label10
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = call i32  @getint()
  store i32  %op2, i32 * @m1
  %op3 = call i32  @getint()
  store i32  %op3, i32 * @n1
  store i32  0, i32 * %op1
  br label %label4
label4:                                                ; preds = %label_entry, %label28
  %op5 = load i32 , i32 * %op1
  %op6 = load i32 , i32 * @m1
  %op7 = icmp slt i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label11
label10:                                                ; preds = %label4
  store i32  0, i32 * %op0
  br label %label14
label11:                                                ; preds = %label4
  %op12 = call i32  @getint()
  store i32  %op12, i32 * @m2
  %op13 = call i32  @getint()
  store i32  %op13, i32 * @n2
  store i32  0, i32 * %op1
  br label %label31
label14:                                                ; preds = %label10, %label20
  %op15 = load i32 , i32 * %op0
  %op16 = load i32 , i32 * @n1
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label28
label20:                                                ; preds = %label14
  %op21 = call i32  @getint()
  %op22 = load i32 , i32 * %op1
  %op23 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @a, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op0
  %op25 = getelementptr [100 x i32 ], [100 x i32 ]* %op23, i32  0, i32  %op24
  store i32  %op21, i32 * %op25
  %op26 = load i32 , i32 * %op0
  %op27 = add i32  %op26, 1
  store i32  %op27, i32 * %op0
  br label %label14
label28:                                                ; preds = %label14
  %op29 = load i32 , i32 * %op1
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op1
  br label %label4
label31:                                                ; preds = %label11, %label53
  %op32 = load i32 , i32 * %op1
  %op33 = load i32 , i32 * @m2
  %op34 = icmp slt i32  %op32, %op33
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label37, label %label38
label37:                                                ; preds = %label31
  store i32  0, i32 * %op0
  br label %label39
label38:                                                ; preds = %label31
  call void @matrix_multiply()
  store i32  0, i32 * %op1
  br label %label56
label39:                                                ; preds = %label37, %label45
  %op40 = load i32 , i32 * %op0
  %op41 = load i32 , i32 * @n2
  %op42 = icmp slt i32  %op40, %op41
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label45, label %label53
label45:                                                ; preds = %label39
  %op46 = call i32  @getint()
  %op47 = load i32 , i32 * %op1
  %op48 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @b, i32  0, i32  %op47
  %op49 = load i32 , i32 * %op0
  %op50 = getelementptr [100 x i32 ], [100 x i32 ]* %op48, i32  0, i32  %op49
  store i32  %op46, i32 * %op50
  %op51 = load i32 , i32 * %op0
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op0
  br label %label39
label53:                                                ; preds = %label39
  %op54 = load i32 , i32 * %op1
  %op55 = add i32  %op54, 1
  store i32  %op55, i32 * %op1
  br label %label31
label56:                                                ; preds = %label38, %label78
  %op57 = load i32 , i32 * %op1
  %op58 = load i32 , i32 * @m1
  %op59 = icmp slt i32  %op57, %op58
  %op60 = zext i1  %op59 to i32 
  %op61 = icmp ne i32  %op60, 0
  br i1  %op61, label %label62, label %label63
label62:                                                ; preds = %label56
  store i32  0, i32 * %op0
  br label %label64
label63:                                                ; preds = %label56
  ret i32  0
label64:                                                ; preds = %label62, %label70
  %op65 = load i32 , i32 * %op0
  %op66 = load i32 , i32 * @n2
  %op67 = icmp slt i32  %op65, %op66
  %op68 = zext i1  %op67 to i32 
  %op69 = icmp ne i32  %op68, 0
  br i1  %op69, label %label70, label %label78
label70:                                                ; preds = %label64
  %op71 = load i32 , i32 * %op1
  %op72 = getelementptr [100 x [100 x i32 ]], [100 x [100 x i32 ]]* @res, i32  0, i32  %op71
  %op73 = load i32 , i32 * %op0
  %op74 = getelementptr [100 x i32 ], [100 x i32 ]* %op72, i32  0, i32  %op73
  %op75 = load i32 , i32 * %op74
  call void @putint(i32  %op75)
  call void @putch(i32  32)
  %op76 = load i32 , i32 * %op0
  %op77 = add i32  %op76, 1
  store i32  %op77, i32 * %op0
  br label %label64
label78:                                                ; preds = %label64
  call void @putch(i32  10)
  %op79 = load i32 , i32 * %op1
  %op80 = add i32  %op79, 1
  store i32  %op80, i32 * %op1
  br label %label56
}
