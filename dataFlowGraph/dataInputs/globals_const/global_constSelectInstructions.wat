(module
    (func $func1
        ;; select i32
        global.get $globalI32Value0
        global.get $globalI32Value1
        global.get $globalSelect0
        select
        drop

        ;; select i64
        global.get $globalI64Value0
        global.get $globalI64Value1
        global.get $globalSelect1
        select
        drop

        ;; select f32
        global.get $globalF32Value0
        global.get $globalF32Value1
        global.get $globalSelect2
        select
        drop

        ;; select f64
        global.get $globalF64Value0
        global.get $globalF64Value1
        global.get $globalSelect3
        select
        drop
    )
    (global $globalI32Value0 i32 i32.const 0)
    (global $globalI32Value1 i32 i32.const 0)
    (global $globalSelect0 i32 i32.const 0)
    (global $globalI64Value0 i64 i64.const 0)
    (global $globalI64Value1 i64 i64.const 0)
    (global $globalSelect1 i32 i32.const 0)
    (global $globalF32Value0 f32 f32.const 0)
    (global $globalF32Value1 f32 f32.const 0)
    (global $globalSelect2 i32 i32.const 0)
    (global $globalF64Value0 f64 f64.const 0)
    (global $globalF64Value1 f64 f64.const 0)
    (global $globalSelect3 i32 i32.const 0)
)