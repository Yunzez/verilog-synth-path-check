; ModuleID = 'klee_harness.bc'
source_filename = "klee_harness.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Verilated::ThreadLocal" = type <{ ptr, i32, i32, ptr, ptr, i32, [4 x i8] }>
%class.VerilatedContext = type { %class.VerilatedMutex, %"struct.VerilatedContext::Serialized", %class.VerilatedMutex, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"struct.VerilatedContext::NonSerialized", %class.VerilatedMutex, %"struct.VerilatedContext::NonSerializedCommandArgs", %"class.std::unique_ptr", i32, i32, %"class.std::unique_ptr.10", %"class.std::unique_ptr.10", %"class.std::unique_ptr.10", %class.VerilatedMutex, %"class.std::vector.18", %"class.std::vector.23", %"class.std::vector.23", i64 }
%"struct.VerilatedContext::Serialized" = type { i64, %"struct.std::atomic", i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32 }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.VerilatedContext::NonSerialized" = type { i64, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.VlOs::DeltaCpuTime", %"class.VlOs::DeltaWallTime", %"class.std::vector" }
%"class.VlOs::DeltaCpuTime" = type { double }
%"class.VlOs::DeltaWallTime" = type { double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::function<void (VerilatedTraceBaseC *, int, int)>, std::allocator<std::function<void (VerilatedTraceBaseC *, int, int)>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::function<void (VerilatedTraceBaseC *, int, int)>, std::allocator<std::function<void (VerilatedTraceBaseC *, int, int)>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::function<void (VerilatedTraceBaseC *, int, int)>, std::allocator<std::function<void (VerilatedTraceBaseC *, int, int)>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::function<void (VerilatedTraceBaseC *, int, int)>, std::allocator<std::function<void (VerilatedTraceBaseC *, int, int)>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.VerilatedContext::NonSerializedCommandArgs" = type <{ %"class.std::vector.3", i8, [7 x i8] }>
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%class.VerilatedMutex = type { %"class.std::mutex" }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<_IO_FILE *, std::allocator<_IO_FILE *>>::_Vector_impl" }
%"struct.std::_Vector_base<_IO_FILE *, std::allocator<_IO_FILE *>>::_Vector_impl" = type { %"struct.std::_Vector_base<_IO_FILE *, std::allocator<_IO_FILE *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<_IO_FILE *, std::allocator<_IO_FILE *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.Vtop = type { %class.VerilatedModel, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%class.VerilatedModel = type { ptr, ptr }
%class.Vtop___024root = type { %class.VerilatedModule, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %class.VlTriggerVec, %class.VlTriggerVec, %class.VlTriggerVec, %class.VlTriggerVec, ptr, [24 x i8] }
%class.VerilatedModule = type { ptr }
%class.VlTriggerVec = type { %"struct.std::array", [8 x i8] }
%"struct.std::array" = type { [1 x i64] }

$_ZN9Verilated11commandArgsEiPPc = comdat any

$_ZN4Vtop4evalEv = comdat any

$_ZN9Verilated11commandArgsEiPPKc = comdat any

$_ZN9Verilated14threadContextpEv = comdat any

$_ZTWN9Verilated3t_sE = comdat any

$_ZN9Verilated12lastContextpEv = comdat any

$_ZN9Verilated12lastContextpEP16VerilatedContext = comdat any

$_ZN9Verilated15defaultContextpEv = comdat any

$_ZZN9Verilated15defaultContextpEvE3s_s = comdat any

$_ZGVZN9Verilated15defaultContextpEvE3s_s = comdat any

@.str = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"state_violation\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"state >= 3\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"violation\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"MT_SAFE\00", section "llvm.metadata"
@.str.8 = private unnamed_addr constant [47 x i8] c"/usr/local/share/verilator/include/verilated.h\00", section "llvm.metadata"
@_ZN9Verilated3t_sE = external thread_local global %"struct.Verilated::ThreadLocal", align 8
@_ZN9Verilated14s_lastContextpE = external global ptr, align 8
@_ZZN9Verilated15defaultContextpEvE3s_s = linkonce_odr dso_local global %class.VerilatedContext zeroinitializer, comdat, align 8
@_ZGVZN9Verilated15defaultContextpEvE3s_s = linkonce_odr dso_local global i64 0, comdat, align 8
@llvm.global.annotations = appending global [6 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated11commandArgsEiPPc, ptr @.str.7, ptr @.str.8, i32 871, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated11commandArgsEiPPKc, ptr @.str.7, ptr @.str.8, i32 868, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated14threadContextpEv, ptr @.str.7, ptr @.str.8, i32 844, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated12lastContextpEv, ptr @.str.7, ptr @.str.8, i32 830, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated12lastContextpEP16VerilatedContext, ptr @.str.7, ptr @.str.8, i32 827, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN9Verilated15defaultContextpEv, ptr @.str.7, ptr @.str.8, i32 849, ptr null }], section "llvm.metadata"
@__dso_handle = hidden global ptr null, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %5, align 8
  call void @_ZN9Verilated11commandArgsEiPPc(i32 noundef %10, ptr noundef %11)
  %12 = call noalias noundef nonnull align 64 ptr @_ZnwmSt11align_val_t(i64 noundef 128, i64 noundef 64) #10
  %13 = bitcast ptr %12 to ptr
  invoke void @_ZN4VtopC1EPKc(ptr noundef nonnull align 64 dereferenceable(72) %13, ptr noundef @.str)
          to label %14 unwind label %45

14:                                               ; preds = %2
  store ptr %13, ptr %6, align 8
  store i32 0, ptr %9, align 4
  br label %15

15:                                               ; preds = %50, %14
  %16 = load i32, ptr %9, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %class.Vtop, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 32
  call void @klee_make_symbolic(ptr noundef %21, i64 noundef 1, ptr noundef @.str.1)
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %class.Vtop, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  call void @klee_make_symbolic(ptr noundef %24, i64 noundef 1, ptr noundef @.str.2)
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %class.Vtop, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = bitcast ptr %27 to ptr
  call void @klee_make_symbolic(ptr noundef %28, i64 noundef 4, ptr noundef @.str.3)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %class.Vtop, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  store i8 0, ptr %31, align 1
  %32 = load ptr, ptr %6, align 8
  call void @_ZN4Vtop4evalEv(ptr noundef nonnull align 64 dereferenceable(72) %32)
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %class.Vtop, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  store i8 1, ptr %35, align 1
  %36 = load ptr, ptr %6, align 8
  call void @_ZN4Vtop4evalEv(ptr noundef nonnull align 64 dereferenceable(72) %36)
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %class.Vtop, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %class.Vtop___024root, ptr %39, i32 0, i32 5
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %49, label %44

44:                                               ; preds = %18
  call void @klee_report_error(ptr noundef @.str.4, i32 noundef 1, ptr noundef @.str.5, ptr noundef @.str.6) #11
  unreachable

45:                                               ; preds = %2
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = extractvalue { ptr, i32 } %46, 0
  store ptr %47, ptr %7, align 8
  %48 = extractvalue { ptr, i32 } %46, 1
  store i32 %48, ptr %8, align 4
  call void @_ZdlPvSt11align_val_t(ptr noundef %12, i64 noundef 64) #12
  br label %55

49:                                               ; preds = %18
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %9, align 4
  br label %15, !llvm.loop !7

53:                                               ; preds = %15
  %54 = load i32, ptr %3, align 4
  ret i32 %54

55:                                               ; preds = %45
  %56 = load ptr, ptr %7, align 8
  %57 = load i32, ptr %8, align 4
  %58 = insertvalue { ptr, i32 } undef, ptr %56, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9Verilated11commandArgsEiPPc(i32 noundef %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = load ptr, ptr %4, align 8
  call void @_ZN9Verilated11commandArgsEiPPKc(i32 noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #2

declare void @_ZN4VtopC1EPKc(ptr noundef nonnull align 64 dereferenceable(72), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #4

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Vtop4evalEv(ptr noundef nonnull align 64 dereferenceable(72) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4Vtop9eval_stepEv(ptr noundef nonnull align 64 dereferenceable(72) %3)
  ret void
}

; Function Attrs: noreturn
declare void @klee_report_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9Verilated11commandArgsEiPPKc(i32 noundef %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = call noundef ptr @_ZN9Verilated14threadContextpEv()
  %6 = load i32, ptr %3, align 4
  %7 = load ptr, ptr %4, align 8
  call void @_ZN16VerilatedContext11commandArgsEiPPKc(ptr noundef nonnull align 8 dereferenceable(608) %5, i32 noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9Verilated14threadContextpEv() #1 comdat align 2 {
  %1 = call ptr @_ZTWN9Verilated3t_sE()
  %2 = getelementptr inbounds %"struct.Verilated::ThreadLocal", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  %5 = xor i1 %4, true
  %6 = xor i1 %5, true
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = call noundef ptr @_ZN9Verilated12lastContextpEv()
  %10 = call ptr @_ZTWN9Verilated3t_sE()
  %11 = getelementptr inbounds %"struct.Verilated::ThreadLocal", ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %0
  %13 = call ptr @_ZTWN9Verilated3t_sE()
  %14 = getelementptr inbounds %"struct.Verilated::ThreadLocal", ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  ret ptr %15
}

declare void @_ZN16VerilatedContext11commandArgsEiPPKc(ptr noundef nonnull align 8 dereferenceable(608), i32 noundef, ptr noundef) #3

; Function Attrs: noinline uwtable
define linkonce_odr hidden noundef ptr @_ZTWN9Verilated3t_sE() #6 comdat {
  br i1 icmp ne (ptr @_ZTHN9Verilated3t_sE, ptr null), label %1, label %2

1:                                                ; preds = %0
  call void @_ZTHN9Verilated3t_sE()
  br label %2

2:                                                ; preds = %1, %0
  ret ptr @_ZN9Verilated3t_sE
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9Verilated12lastContextpEv() #1 comdat align 2 {
  %1 = load ptr, ptr @_ZN9Verilated14s_lastContextpE, align 8
  %2 = icmp ne ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call noundef ptr @_ZN9Verilated15defaultContextpEv()
  call void @_ZN9Verilated12lastContextpEP16VerilatedContext(ptr noundef %4)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @_ZN9Verilated14s_lastContextpE, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9Verilated12lastContextpEP16VerilatedContext(ptr noundef %0) #7 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr @_ZN9Verilated14s_lastContextpE, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9Verilated15defaultContextpEv() #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = load i8, ptr @_ZGVZN9Verilated15defaultContextpEvE3s_s, align 8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11, !prof !9

5:                                                ; preds = %0
  %6 = call i32 @__cxa_guard_acquire(ptr @_ZGVZN9Verilated15defaultContextpEvE3s_s) #8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  invoke void @_ZN16VerilatedContextC1Ev(ptr noundef nonnull align 8 dereferenceable(608) @_ZZN9Verilated15defaultContextpEvE3s_s)
          to label %9 unwind label %12

9:                                                ; preds = %8
  %10 = call i32 @__cxa_atexit(ptr @_ZN16VerilatedContextD1Ev, ptr @_ZZN9Verilated15defaultContextpEvE3s_s, ptr @__dso_handle) #8
  call void @__cxa_guard_release(ptr @_ZGVZN9Verilated15defaultContextpEvE3s_s) #8
  br label %11

11:                                               ; preds = %9, %5, %0
  ret ptr @_ZZN9Verilated15defaultContextpEvE3s_s

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %1, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %2, align 4
  call void @__cxa_guard_abort(ptr @_ZGVZN9Verilated15defaultContextpEvE3s_s) #8
  br label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8
  %18 = load i32, ptr %2, align 4
  %19 = insertvalue { ptr, i32 } undef, ptr %17, 0
  %20 = insertvalue { ptr, i32 } %19, i32 %18, 1
  resume { ptr, i32 } %20
}

; Function Attrs: nounwind
declare i32 @__cxa_guard_acquire(ptr) #8

declare void @_ZN16VerilatedContextC1Ev(ptr noundef nonnull align 8 dereferenceable(608)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN16VerilatedContextD1Ev(ptr noundef nonnull align 8 dereferenceable(608)) unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #8

; Function Attrs: nounwind
declare void @__cxa_guard_abort(ptr) #8

; Function Attrs: nounwind
declare void @__cxa_guard_release(ptr) #8

declare void @_ZN4Vtop9eval_stepEv(ptr noundef nonnull align 64 dereferenceable(72)) #3

declare extern_weak void @_ZTHN9Verilated3t_sE() #3

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5, !6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = !{!"Homebrew clang version 16.0.6"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", i32 1, i32 1048575}
