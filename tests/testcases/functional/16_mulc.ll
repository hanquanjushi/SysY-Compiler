; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/16_mulc.sy"

@a = constant i32  5
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
  %op0 = load i32 , i32 * @a
  %op1 = mul i32  %op0, 5
  ret i32  %op1
}
