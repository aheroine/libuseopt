; ModuleID = 'mod.bc'
source_filename = "test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test1() #0 {
  %1 = call i32 @test()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @test2() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @test()
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main__use_main__() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

define i32 @test1__use_main__(i32, i8**) {
  %3 = call i32 @test1()
  ret i32 0
}

declare void @klee_make_symbolic(i8*, i64, i8*)

define i32 @test2__use_main__(i32, i8**) {
  %3 = call i32 @test2()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Apple LLVM version 10.0.0 (clang-1000.10.44.4)"}
