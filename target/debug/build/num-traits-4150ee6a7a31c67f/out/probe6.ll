; ModuleID = 'probe6.74218960bd0c237b-cgu.0'
source_filename = "probe6.74218960bd0c237b-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@alloc_e6758488a51c40069ade2309416f0500 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"<anon>" }>, align 1
@alloc_5491181a412bbabfebff41ab96c406e4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e6758488a51c40069ade2309416f0500, [16 x i8] c"\06\00\00\00\00\00\00\00\01\00\00\00\1F\00\00\00" }>, align 8

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17h973b57852c3a0d4cE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h0d8dc2c2f147a164E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9561c5cc5757c56dE(ptr align 8 @alloc_5491181a412bbabfebff41ab96c406e4) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h0d8dc2c2f147a164E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h9561c5cc5757c56dE(ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+outline-atomics" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+outline-atomics" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.80.0-nightly (d2d24e395 2024-05-03)"}
