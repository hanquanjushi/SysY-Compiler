; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/41_unary_op2.sy"

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
  %op1 = alloca i32 
  store i32  56, i32 * %op1
  store i32  4, i32 * %op0
  %op2 = load i32 , i32 * %op1
  %op3 = sub i32  %op2, -4
  %op4 = load i32 , i32 * %op0
  %op5 = add i32  %op3, %op4
  store i32  %op5, i32 * %op1
  %op6 = load i32 , i32 * %op1
  %op7 = icmp eq i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp eq i32  %op8, 0
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp eq i32  %op10, 0
  %op12 = zext i1  %op11 to i32 
  %op13 = sub i32  0, %op12
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label16
label15:                                                ; preds = %label_entry
  store i32  -1, i32 * %op1
  br label %label19
label16:                                                ; preds = %label_entry
  %op17 = load i32 , i32 * %op0
  %op18 = add i32  0, %op17
  store i32  %op18, i32 * %op1
  br label %label19
label19:                                                ; preds = %label15, %label16
  %op20 = load i32 , i32 * %op1
  call void @putint(i32  %op20)
  ret i32  0
}
