; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/34_arr_expr_len.sy"

@N = constant i32  -1
@arr = global [6 x i32 ] [i32  1, i32  2, i32  33, i32  4, i32  5, i32  6]
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
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op1
  %op4 = icmp slt i32  %op3, 6
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label15
label7:                                                ; preds = %label2
  %op8 = load i32 , i32 * %op0
  %op9 = load i32 , i32 * %op1
  %op10 = getelementptr [6 x i32 ], [6 x i32 ]* @arr, i32  0, i32  %op9
  %op11 = load i32 , i32 * %op10
  %op12 = add i32  %op8, %op11
  store i32  %op12, i32 * %op0
  %op13 = load i32 , i32 * %op1
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op1
  br label %label2
label15:                                                ; preds = %label2
  %op16 = load i32 , i32 * %op0
  ret i32  %op16
}
