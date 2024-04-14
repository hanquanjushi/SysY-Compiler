; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/79_var_name.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  2, i32 * %op0
  %op1 = alloca i32 
  store i32  20, i32 * %op1
  %op2 = alloca [20 x i32 ]
  %op3 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
  store i32  0, i32 * %op3
  %op4 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
  store i32  0, i32 * %op4
  %op5 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  2
  store i32  0, i32 * %op5
  %op6 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  3
  store i32  0, i32 * %op6
  %op7 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  4
  store i32  0, i32 * %op7
  %op8 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  5
  store i32  0, i32 * %op8
  %op9 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  6
  store i32  0, i32 * %op9
  %op10 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  7
  store i32  0, i32 * %op10
  %op11 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  8
  store i32  0, i32 * %op11
  %op12 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  9
  store i32  0, i32 * %op12
  %op13 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  10
  store i32  0, i32 * %op13
  %op14 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  11
  store i32  0, i32 * %op14
  %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  12
  store i32  0, i32 * %op15
  %op16 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  13
  store i32  0, i32 * %op16
  %op17 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  14
  store i32  0, i32 * %op17
  %op18 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  15
  store i32  0, i32 * %op18
  %op19 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  16
  store i32  0, i32 * %op19
  %op20 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  17
  store i32  0, i32 * %op20
  %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  18
  store i32  0, i32 * %op21
  %op22 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  19
  store i32  0, i32 * %op22
  %op23 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
  store i32  1, i32 * %op23
  %op24 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
  store i32  2, i32 * %op24
  %op25 = alloca i32 
  store i32  0, i32 * %op25
  br label %label26
label26:                                                ; preds = %label_entry, %label32
  %op27 = load i32 , i32 * %op0
  %op28 = load i32 , i32 * %op1
  %op29 = icmp slt i32  %op27, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label32, label %label58
label32:                                                ; preds = %label26
  %op33 = load i32 , i32 * %op0
  %op34 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op34
  %op36 = load i32 , i32 * %op0
  %op37 = sub i32  %op36, 1
  %op38 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op37
  %op39 = load i32 , i32 * %op38
  %op40 = add i32  %op35, %op39
  %op41 = load i32 , i32 * %op0
  %op42 = sub i32  %op41, 2
  %op43 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = add i32  %op40, %op44
  %op46 = load i32 , i32 * %op0
  %op47 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op46
  store i32  %op45, i32 * %op47
  %op48 = load i32 , i32 * %op25
  %op49 = load i32 , i32 * %op0
  %op50 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op49
  %op51 = load i32 , i32 * %op50
  %op52 = add i32  %op48, %op51
  store i32  %op52, i32 * %op25
  %op53 = load i32 , i32 * %op0
  %op54 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op54
  call void @putint(i32  %op55)
  call void @putch(i32  10)
  %op56 = load i32 , i32 * %op0
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op0
  br label %label26
label58:                                                ; preds = %label26
  %op59 = load i32 , i32 * %op25
  ret i32  %op59
}
