; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/01_multiple_returns.sy"

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
  store i32  12, i32 * %op0
  %op1 = alloca i32 
  store i32  8, i32 * %op1
  %op2 = alloca i32 
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * %op0
  %op5 = add i32  %op3, %op4
  store i32  %op5, i32 * %op2
  %op6 = load i32 , i32 * %op2
  ret i32  %op6
}
