; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/81_skip_spaces.sy"

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
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  %op2 = alloca [100 x i32 ]
  br label %label3
label3:                                                ; preds = %label_entry, %label6
  %op4 = call i32  @getint()
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label12
label6:                                                ; preds = %label3
  %op7 = call i32  @getint()
  %op8 = load i32 , i32 * %op1
  %op9 = getelementptr [100 x i32 ], [100 x i32 ]* %op2, i32  0, i32  %op8
  store i32  %op7, i32 * %op9
  %op10 = load i32 , i32 * %op1
  %op11 = add i32  %op10, 1
  store i32  %op11, i32 * %op1
  br label %label3
label12:                                                ; preds = %label3
  br label %label13
label13:                                                ; preds = %label12, %label16
  %op14 = load i32 , i32 * %op1
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label24
label16:                                                ; preds = %label13
  %op17 = load i32 , i32 * %op1
  %op18 = sub i32  %op17, 1
  store i32  %op18, i32 * %op1
  %op19 = load i32 , i32 * %op0
  %op20 = load i32 , i32 * %op1
  %op21 = getelementptr [100 x i32 ], [100 x i32 ]* %op2, i32  0, i32  %op20
  %op22 = load i32 , i32 * %op21
  %op23 = add i32  %op19, %op22
  store i32  %op23, i32 * %op0
  br label %label13
label24:                                                ; preds = %label13
  %op25 = load i32 , i32 * %op0
  %op26 = srem i32  %op25, 79
  ret i32  %op26
}
