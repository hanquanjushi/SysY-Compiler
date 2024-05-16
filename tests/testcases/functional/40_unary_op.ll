; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/40_unary_op.sy"

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
  store i32  10, i32 * %op0
  %op1 = load i32 , i32 * %op0
  %op2 = icmp eq i32  %op1, 0
  %op3 = zext i1  %op2 to i32 
  %op4 = icmp eq i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp eq i32  %op5, 0
  %op7 = zext i1  %op6 to i32 
  %op8 = sub i32  0, %op7
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label11
label10:                                                ; preds = %label_entry
  store i32  -1, i32 * %op0
  br label %label12
label11:                                                ; preds = %label_entry
  store i32  0, i32 * %op0
  br label %label12
label12:                                                ; preds = %label10, %label11
  %op13 = load i32 , i32 * %op0
  ret i32  %op13
}
