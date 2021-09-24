(module
    (func $func1
        ;; global.set i32
        global.get $globalI32Value
        global.set $globalI32

        ;; global.set i64
        global.get $globalI64Value
        global.set $globalI64

        ;; global.set f32
        global.get $globalF32Value
        global.set $globalF32

        ;; global.set f64
        global.get $globalF64Value
        global.set $globalF64
    )
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
    (global $globalI32Value i32 i32.const 0)
    (global $globalI64Value i64 i64.const 0)
    (global $globalF32Value f32 f32.const 0)
    (global $globalF64Value f64 f64.const 0)
)