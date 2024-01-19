; ModuleID = 'instr_sub.c'
source_filename = "instr_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sub sub_prob=100 sub_loop=2\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [12 x i8] c"instr_sub.c\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @fibonacci, ptr @.str.1, ptr @.str.2, i32 7, ptr null }], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fibonacci() #0 !MD_obf !6 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %78

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load i32, ptr %1, align 4
  %12 = load i32, ptr %2, align 4
  %13 = or i32 %11, %11
  %14 = xor i32 %13, -1
  %15 = or i32 %12, %12
  %16 = xor i32 %15, -1
  %17 = or i32 %14, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %11, %12
  %20 = xor i32 2, -1
  %21 = and i32 %18, %20
  %22 = or i32 %18, %20
  %23 = xor i32 %22, -1
  %24 = mul i32 %23, %21
  %25 = and i32 %18, 2
  %26 = or i32 %18, 2
  %27 = mul i32 %26, %25
  %28 = add i32 %27, %24
  %29 = mul i32 %18, 2
  %30 = xor i32 %11, -1
  %31 = and i32 %12, %30
  %32 = xor i32 %12, -1
  %33 = and i32 %11, %32
  %34 = or i32 %31, %33
  %35 = xor i32 %11, %12
  %36 = and i32 %34, %28
  %37 = or i32 %34, %28
  %38 = add i32 %36, %37
  %39 = add i32 %34, %28
  %40 = xor i32 %12, -1
  %41 = sub i32 0, 1
  %42 = sub i32 %40, %41
  %43 = sub i32 %11, %42
  %44 = add nsw i32 %11, %12
  store i32 %38, ptr %3, align 4
  %45 = load i32, ptr %2, align 4
  store i32 %45, ptr %1, align 4
  %46 = load i32, ptr %3, align 4
  store i32 %46, ptr %2, align 4
  br label %47

47:                                               ; preds = %8
  %48 = load i32, ptr %4, align 4
  %49 = xor i32 %48, -1
  %50 = xor i32 1, -1
  %51 = or i32 %49, %50
  %52 = xor i32 %48, -1
  %53 = xor i32 1, -1
  %54 = or i32 %52, %53
  %55 = xor i32 %51, -1
  %56 = xor i32 %54, -1
  %57 = or i32 %55, %56
  %58 = and i32 %48, 1
  %59 = xor i32 %48, -1
  %60 = xor i32 1, -1
  %61 = and i32 %59, %60
  %62 = xor i32 %48, -1
  %63 = xor i32 1, -1
  %64 = and i32 %62, %63
  %65 = xor i32 %61, -1
  %66 = xor i32 %64, -1
  %67 = and i32 %65, %66
  %68 = or i32 %48, 1
  %69 = and i32 %57, %67
  %70 = or i32 %57, %67
  %71 = add i32 %69, %70
  %72 = add i32 %57, %67
  %73 = and i32 %48, 1
  %74 = mul i32 %73, 2
  %75 = xor i32 %48, 1
  %76 = add i32 %75, %74
  %77 = add nsw i32 %48, 1
  store i32 %71, ptr %4, align 4
  br label %5, !llvm.loop !7

78:                                               ; preds = %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @fibonacci()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0 (https://github.com/61bcdefg/Hikari-LLVM15.git fed008291456d62c7eb6d8dbced93b8c104e8797)"}
!6 = !{!"sub", !"sub_prob=100", !"sub_loop=2"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
