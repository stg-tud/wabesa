(module
    (func $func1
        ;; drop i32
        global.get $globalI32
        drop

        ;; drop i64
        global.get $globalI64
        drop

        ;; drop f32
        global.get $globalF32
        drop

        ;; drop f64
        global.get $globalF64
        drop
    )
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)