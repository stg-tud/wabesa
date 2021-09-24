(module
    (func $func1
        ;; global.set i32
        i32.const 1
        global.set $globalI32

        ;; global.set i64
        i64.const 1
        global.set $globalI64

        ;; global.set f32
        f32.const 1.5
        global.set $globalF32

        ;; global.set f64
        f64.const 1.5
        global.set $globalF64
    )
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)