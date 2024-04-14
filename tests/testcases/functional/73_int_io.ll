; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/73_int_io.sy"

@ascii_0 = constant i32  48
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

define i32  @my_getint() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label14
  %op3 = icmp ne i32  1, 0
  br i1  %op3, label %label4, label %label12
label4:                                                ; preds = %label2
  %op5 = call i32  @getch()
  %op6 = load i32 , i32 * @ascii_0
  %op7 = sub i32  %op5, %op6
  store i32  %op7, i32 * %op0
  %op8 = load i32 , i32 * %op0
  %op9 = icmp slt i32  %op8, 0
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label14, label %label16
label12:                                                ; preds = %label2, %label15
  %op13 = load i32 , i32 * %op0
  store i32  %op13, i32 * %op1
  br label %label21
label14:                                                ; preds = %label4, %label16
  br label %label2
label15:                                                ; preds = %label16
  br label %label12
label16:                                                ; preds = %label4
  %op17 = load i32 , i32 * %op0
  %op18 = icmp sgt i32  %op17, 9
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label14, label %label15
label21:                                                ; preds = %label12, %label39
  %op22 = icmp ne i32  1, 0
  br i1  %op22, label %label23, label %label31
label23:                                                ; preds = %label21
  %op24 = call i32  @getch()
  %op25 = load i32 , i32 * @ascii_0
  %op26 = sub i32  %op24, %op25
  store i32  %op26, i32 * %op0
  %op27 = load i32 , i32 * %op0
  %op28 = icmp sge i32  %op27, 0
  %op29 = zext i1  %op28 to i32 
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label40, label %label38
label31:                                                ; preds = %label21, %label38
  %op32 = load i32 , i32 * %op1
  ret i32  %op32
label33:                                                ; preds = %label40
  %op34 = load i32 , i32 * %op1
  %op35 = mul i32  %op34, 10
  %op36 = load i32 , i32 * %op0
  %op37 = add i32  %op35, %op36
  store i32  %op37, i32 * %op1
  br label %label39
label38:                                                ; preds = %label23, %label40
  br label %label31
label39:                                                ; preds = %label33
  br label %label21
label40:                                                ; preds = %label23
  %op41 = load i32 , i32 * %op0
  %op42 = icmp sle i32  %op41, 9
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label33, label %label38
}
define void @my_putint(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca [16 x i32 ]
  br label %label4
label4:                                                ; preds = %label_entry, %label9
  %op5 = load i32 , i32 * %op1
  %op6 = icmp sgt i32  %op5, 0
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label20
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op1
  %op11 = srem i32  %op10, 10
  %op12 = load i32 , i32 * @ascii_0
  %op13 = add i32  %op11, %op12
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op14
  store i32  %op13, i32 * %op15
  %op16 = load i32 , i32 * %op1
  %op17 = sdiv i32  %op16, 10
  store i32  %op17, i32 * %op1
  %op18 = load i32 , i32 * %op2
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op2
  br label %label4
label20:                                                ; preds = %label4
  br label %label21
label21:                                                ; preds = %label20, %label26
  %op22 = load i32 , i32 * %op2
  %op23 = icmp sgt i32  %op22, 0
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label32
label26:                                                ; preds = %label21
  %op27 = load i32 , i32 * %op2
  %op28 = sub i32  %op27, 1
  store i32  %op28, i32 * %op2
  %op29 = load i32 , i32 * %op2
  %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  call void @putch(i32  %op31)
  br label %label21
label32:                                                ; preds = %label21
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @my_getint()
  store i32  %op1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op0
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label13
label7:                                                ; preds = %label2
  %op8 = alloca i32 
  %op9 = call i32  @my_getint()
  store i32  %op9, i32 * %op8
  %op10 = load i32 , i32 * %op8
  call void @my_putint(i32  %op10)
  call void @putch(i32  10)
  %op11 = load i32 , i32 * %op0
  %op12 = sub i32  %op11, 1
  store i32  %op12, i32 * %op0
  br label %label2
label13:                                                ; preds = %label2
  ret i32  0
}
