; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/36_rotate.sy"

@MAX_WIDTH = constant i32  1024
@MAX_HEIGHT = constant i32  1024
@image = global [1048576 x i32 ] zeroinitializer
@width = global i32  zeroinitializer
@height = global i32  zeroinitializer
@PI = constant float 0x400921fb60000000
@TWO_PI = constant float 0x401921fb60000000
@EPSILON = constant float 0x3ff0000000000000
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

define float @my_fabs(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  0 to float
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label_entry
  %op8 = load float, float* %op1
  ret float %op8
label9:                                                ; preds = %label_entry
  %op10 = load float, float* %op1
  %op11 = fsub float 0x0, %op10
  ret float %op11
}
define float @p(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  3 to float
  %op4 = fmul float %op3, %op2
  %op5 = load float, float* %op1
  %op6 = sitofp i32  4 to float
  %op7 = fmul float %op6, %op5
  %op8 = load float, float* %op1
  %op9 = fmul float %op7, %op8
  %op10 = load float, float* %op1
  %op11 = fmul float %op9, %op10
  %op12 = fsub float %op4, %op11
  ret float %op12
}
define float @my_sin_impl(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = call float @my_fabs(float %op2)
  %op4 = load float, float* @EPSILON
  %op5 = fcmp ule float %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label10
label8:                                                ; preds = %label_entry
  %op9 = load float, float* %op1
  ret float %op9
label10:                                                ; preds = %label_entry
  %op11 = load float, float* %op1
  %op12 = fdiv float %op11, 0x4008000000000000
  %op13 = call float @my_sin_impl(float %op12)
  %op14 = call float @p(float %op13)
  ret float %op14
}
define float @my_sin(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = load float, float* @TWO_PI
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label25
label7:                                                ; preds = %label_entry, %label25
  %op8 = alloca i32 
  %op9 = load float, float* %op1
  %op10 = load float, float* @TWO_PI
  %op11 = fdiv float %op9, %op10
  %op12 = fptosi float %op11 to i32 
  store i32  %op12, i32 * %op8
  %op13 = load float, float* %op1
  %op14 = load i32 , i32 * %op8
  %op15 = load float, float* @TWO_PI
  %op16 = sitofp i32  %op14 to float
  %op17 = fmul float %op16, %op15
  %op18 = fsub float %op13, %op17
  store float %op18, float* %op1
  br label %label19
label19:                                                ; preds = %label25, %label7
  %op20 = load float, float* %op1
  %op21 = load float, float* @PI
  %op22 = fcmp ugt float %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label32, label %label36
label25:                                                ; preds = %label_entry
  %op26 = load float, float* %op1
  %op27 = load float, float* @TWO_PI
  %op28 = fsub float 0x0, %op27
  %op29 = fcmp ult float %op26, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label7, label %label19
label32:                                                ; preds = %label19
  %op33 = load float, float* %op1
  %op34 = load float, float* @TWO_PI
  %op35 = fsub float %op33, %op34
  store float %op35, float* %op1
  br label %label36
label36:                                                ; preds = %label19, %label32
  %op37 = load float, float* %op1
  %op38 = load float, float* @PI
  %op39 = fsub float 0x0, %op38
  %op40 = fcmp ult float %op37, %op39
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label43, label %label47
label43:                                                ; preds = %label36
  %op44 = load float, float* %op1
  %op45 = load float, float* @TWO_PI
  %op46 = fadd float %op44, %op45
  store float %op46, float* %op1
  br label %label47
label47:                                                ; preds = %label36, %label43
  %op48 = load float, float* %op1
  %op49 = call float @my_sin_impl(float %op48)
  ret float %op49
}
define float @my_cos(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = load float, float* @PI
  %op4 = sitofp i32  2 to float
  %op5 = fdiv float %op3, %op4
  %op6 = fadd float %op2, %op5
  %op7 = call float @my_sin(float %op6)
  ret float %op7
}
define i32  @read_image() {
label_entry:
  %op0 = call i32  @getch()
  %op1 = icmp ne i32  %op0, 80
  %op2 = zext i1  %op1 to i32 
  %op3 = icmp ne i32  %op2, 0
  br i1  %op3, label %label4, label %label13
label4:                                                ; preds = %label_entry, %label13
  ret i32  -1
label5:                                                ; preds = %label13
  %op6 = call i32  @getint()
  store i32  %op6, i32 * @width
  %op7 = call i32  @getint()
  store i32  %op7, i32 * @height
  %op8 = load i32 , i32 * @width
  %op9 = load i32 , i32 * @MAX_WIDTH
  %op10 = icmp sgt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label18, label %label26
label13:                                                ; preds = %label_entry
  %op14 = call i32  @getch()
  %op15 = icmp ne i32  %op14, 50
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label4, label %label5
label18:                                                ; preds = %label5, %label26, %label21
  ret i32  -1
label19:                                                ; preds = %label21
  %op20 = alloca i32 
  store i32  0, i32 * %op20
  br label %label32
label21:                                                ; preds = %label26
  %op22 = call i32  @getint()
  %op23 = icmp ne i32  %op22, 255
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label18, label %label19
label26:                                                ; preds = %label5
  %op27 = load i32 , i32 * @height
  %op28 = load i32 , i32 * @MAX_HEIGHT
  %op29 = icmp sgt i32  %op27, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label18, label %label21
label32:                                                ; preds = %label19, %label57
  %op33 = load i32 , i32 * %op20
  %op34 = load i32 , i32 * @height
  %op35 = icmp slt i32  %op33, %op34
  %op36 = zext i1  %op35 to i32 
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label38, label %label40
label38:                                                ; preds = %label32
  %op39 = alloca i32 
  store i32  0, i32 * %op39
  br label %label41
label40:                                                ; preds = %label32
  ret i32  0
label41:                                                ; preds = %label38, %label47
  %op42 = load i32 , i32 * %op39
  %op43 = load i32 , i32 * @width
  %op44 = icmp slt i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label57
label47:                                                ; preds = %label41
  %op48 = call i32  @getint()
  %op49 = load i32 , i32 * %op20
  %op50 = load i32 , i32 * @width
  %op51 = mul i32  %op49, %op50
  %op52 = load i32 , i32 * %op39
  %op53 = add i32  %op51, %op52
  %op54 = getelementptr [1048576 x i32 ], [1048576 x i32 ]* @image, i32  0, i32  %op53
  store i32  %op48, i32 * %op54
  %op55 = load i32 , i32 * %op39
  %op56 = add i32  %op55, 1
  store i32  %op56, i32 * %op39
  br label %label41
label57:                                                ; preds = %label41
  %op58 = load i32 , i32 * %op20
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op20
  br label %label32
}
define i32  @rotate(i32  %arg0, i32  %arg1, float %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca float
  store float %arg2, float* %op5
  %op6 = alloca float
  %op7 = load float, float* %op5
  %op8 = call float @my_cos(float %op7)
  store float %op8, float* %op6
  %op9 = alloca float
  %op10 = load float, float* %op5
  %op11 = call float @my_sin(float %op10)
  store float %op11, float* %op9
  %op12 = alloca i32 
  %op13 = load i32 , i32 * @height
  %op14 = sdiv i32  %op13, 2
  store i32  %op14, i32 * %op12
  %op15 = alloca i32 
  %op16 = load i32 , i32 * @width
  %op17 = sdiv i32  %op16, 2
  store i32  %op17, i32 * %op15
  %op18 = alloca i32 
  %op19 = load i32 , i32 * %op4
  %op20 = load i32 , i32 * %op12
  %op21 = sub i32  %op19, %op20
  store i32  %op21, i32 * %op18
  %op22 = alloca i32 
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 , i32 * %op15
  %op25 = sub i32  %op23, %op24
  store i32  %op25, i32 * %op22
  %op26 = alloca i32 
  %op27 = load i32 , i32 * %op22
  %op28 = load float, float* %op9
  %op29 = sitofp i32  %op27 to float
  %op30 = fmul float %op29, %op28
  %op31 = load i32 , i32 * %op18
  %op32 = load float, float* %op6
  %op33 = sitofp i32  %op31 to float
  %op34 = fmul float %op33, %op32
  %op35 = fadd float %op30, %op34
  %op36 = load i32 , i32 * %op12
  %op37 = sitofp i32  %op36 to float
  %op38 = fadd float %op35, %op37
  %op39 = fptosi float %op38 to i32 
  store i32  %op39, i32 * %op26
  %op40 = alloca i32 
  %op41 = load i32 , i32 * %op22
  %op42 = load float, float* %op6
  %op43 = sitofp i32  %op41 to float
  %op44 = fmul float %op43, %op42
  %op45 = load i32 , i32 * %op18
  %op46 = load float, float* %op9
  %op47 = sitofp i32  %op45 to float
  %op48 = fmul float %op47, %op46
  %op49 = fsub float %op44, %op48
  %op50 = load i32 , i32 * %op15
  %op51 = sitofp i32  %op50 to float
  %op52 = fadd float %op49, %op51
  %op53 = fptosi float %op52 to i32 
  store i32  %op53, i32 * %op40
  %op54 = load i32 , i32 * %op40
  %op55 = icmp slt i32  %op54, 0
  %op56 = zext i1  %op55 to i32 
  %op57 = icmp ne i32  %op56, 0
  br i1  %op57, label %label58, label %label78
label58:                                                ; preds = %label_entry, %label78, %label73, %label67
  ret i32  0
label59:                                                ; preds = %label67
  %op60 = load i32 , i32 * %op26
  %op61 = load i32 , i32 * @width
  %op62 = mul i32  %op60, %op61
  %op63 = load i32 , i32 * %op40
  %op64 = add i32  %op62, %op63
  %op65 = getelementptr [1048576 x i32 ], [1048576 x i32 ]* @image, i32  0, i32  %op64
  %op66 = load i32 , i32 * %op65
  ret i32  %op66
label67:                                                ; preds = %label73
  %op68 = load i32 , i32 * %op26
  %op69 = load i32 , i32 * @height
  %op70 = icmp sge i32  %op68, %op69
  %op71 = zext i1  %op70 to i32 
  %op72 = icmp ne i32  %op71, 0
  br i1  %op72, label %label58, label %label59
label73:                                                ; preds = %label78
  %op74 = load i32 , i32 * %op26
  %op75 = icmp slt i32  %op74, 0
  %op76 = zext i1  %op75 to i32 
  %op77 = icmp ne i32  %op76, 0
  br i1  %op77, label %label58, label %label67
label78:                                                ; preds = %label_entry
  %op79 = load i32 , i32 * %op40
  %op80 = load i32 , i32 * @width
  %op81 = icmp sge i32  %op79, %op80
  %op82 = zext i1  %op81 to i32 
  %op83 = icmp ne i32  %op82, 0
  br i1  %op83, label %label58, label %label73
}
define void @write_pgm(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  call void @putch(i32  80)
  call void @putch(i32  50)
  call void @putch(i32  10)
  %op2 = load i32 , i32 * @width
  call void @putint(i32  %op2)
  call void @putch(i32  32)
  %op3 = load i32 , i32 * @height
  call void @putint(i32  %op3)
  call void @putch(i32  32)
  call void @putint(i32  255)
  call void @putch(i32  10)
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label27
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * @height
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label13
label11:                                                ; preds = %label5
  %op12 = alloca i32 
  store i32  0, i32 * %op12
  br label %label14
label13:                                                ; preds = %label5
  ret void
label14:                                                ; preds = %label11, %label20
  %op15 = load i32 , i32 * %op12
  %op16 = load i32 , i32 * @width
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label27
label20:                                                ; preds = %label14
  %op21 = load i32 , i32 * %op12
  %op22 = load i32 , i32 * %op4
  %op23 = load float, float* %op1
  %op24 = call i32  @rotate(i32  %op21, i32  %op22, float %op23)
  call void @putint(i32  %op24)
  call void @putch(i32  32)
  %op25 = load i32 , i32 * %op12
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op12
  br label %label14
label27:                                                ; preds = %label14
  call void @putch(i32  10)
  %op28 = load i32 , i32 * %op4
  %op29 = add i32  %op28, 1
  store i32  %op29, i32 * %op4
  br label %label5
}
define i32  @main() {
label_entry:
  %op0 = alloca float
  %op1 = call float @getfloat()
  store float %op1, float* %op0
  %op2 = call i32  @getch()
  %op3 = call i32  @read_image()
  %op4 = icmp slt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label8
label7:                                                ; preds = %label_entry
  ret i32  -1
label8:                                                ; preds = %label_entry
  %op9 = load float, float* %op0
  call void @write_pgm(float %op9)
  ret i32  0
}
