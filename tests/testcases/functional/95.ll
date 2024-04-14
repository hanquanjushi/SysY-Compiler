; ModuleID = '95.c'
source_filename = "95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@RADIUS = dso_local constant float 5.500000e+00, align 4
@PI = dso_local constant float 0x400921FB60000000, align 4
@EPS = dso_local constant float 0x3EB0C6F7A0000000, align 4
@PI_HEX = dso_local constant float 0x400921FB60000000, align 4
@HEX2 = dso_local constant float 7.812500e-02, align 4
@FACT = dso_local constant float -3.300000e+04, align 4
@EVAL1 = dso_local constant float 0x4057C21FC0000000, align 4
@EVAL2 = dso_local constant float 0x4041475CE0000000, align 4
@EVAL3 = dso_local constant float 0x4041475CE0000000, align 4
@CONV1 = dso_local constant float 2.330000e+02, align 4
@CONV2 = dso_local constant float 4.095000e+03, align 4
@MAX = dso_local constant i32 1000000000, align 4
@TWO = dso_local constant i32 2, align 4
@THREE = dso_local constant i32 3, align 4
@FIVE = dso_local constant i32 5, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
