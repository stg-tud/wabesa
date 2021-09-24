(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; global.set i32
        local.get $localI32
        global.set $globalI32

        ;; global.set i64
        local.get $localI64
        global.set $globalI64

        ;; global.set f32
        local.get $localF32
        global.set $globalF32

        ;; global.set f64
        local.get $localF64
        global.set $globalF64
    )
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)