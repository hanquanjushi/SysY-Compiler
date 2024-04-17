; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/func/78_side_effect.sy"

@a = global i32  -1
@b = global i32  1
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

define i32  @inc_a() {
label_entry:
  %op0 = alloca i32 
  %op1 = load i32 , i32 * @a
  store i32  %op1, i32 * %op0
  %op2 = load i32 , i32 * %op0
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * %op0
  %op4 = load i32 , i32 * %op0
  store i32  %op4, i32 * @a
  %op5 = load i32 , i32 * @a
  ret i32  %op5
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label33
  %op2 = load i32 , i32 * %op0
  %op3 = icmp sge i32  %op2, 0
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label9
label6:                                                ; preds = %label1
  %op7 = call i32  @inc_a()
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label24, label %label16
label9:                                                ; preds = %label1
  %op10 = load i32 , i32 * @a
  call void @putint(i32  %op10)
  call void @putch(i32  32)
  %op11 = load i32 , i32 * @b
  call void @putint(i32  %op11)
  call void @putch(i32  10)
  %op12 = load i32 , i32 * @a
  ret i32  %op12
label13:                                                ; preds = %label21
  %op14 = load i32 , i32 * @a
  call void @putint(i32  %op14)
  call void @putch(i32  32)
  %op15 = load i32 , i32 * @b
  call void @putint(i32  %op15)
  call void @putch(i32  10)
  br label %label16
label16:                                                ; preds = %label6, %label24, %label21, %label13
  %op17 = call i32  @inc_a()
  %op18 = icmp slt i32  %op17, 14
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label27, label %label36
label21:                                                ; preds = %label24
  %op22 = call i32  @inc_a()
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label13, label %label16
label24:                                                ; preds = %label6
  %op25 = call i32  @inc_a()
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label21, label %label16
label27:                                                ; preds = %label16, %label39
  %op28 = load i32 , i32 * @a
  call void @putint(i32  %op28)
  call void @putch(i32  10)
  %op29 = load i32 , i32 * @b
  %op30 = mul i32  %op29, 2
  store i32  %op30, i32 * @b
  br label %label33
label31:                                                ; preds = %label36, %label39
  %op32 = call i32  @inc_a()
  br label %label33
label33:                                                ; preds = %label27, %label31
  %op34 = load i32 , i32 * %op0
  %op35 = sub i32  %op34, 1
  store i32  %op35, i32 * %op0
  br label %label1
label36:                                                ; preds = %label16
  %op37 = call i32  @inc_a()
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label39, label %label31
label39:                                                ; preds = %label36
  %op40 = call i32  @inc_a()
  %op41 = call i32  @inc_a()
  %op42 = sub i32  %op40, %op41
  %op43 = add i32  %op42, 1
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label27, label %label31
}
