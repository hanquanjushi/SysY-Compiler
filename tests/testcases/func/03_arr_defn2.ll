; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/func/03_arr_defn2.sy"

@a = global [10 x [10 x i32 ]] zeroinitializer
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
  ret i32  0
}
