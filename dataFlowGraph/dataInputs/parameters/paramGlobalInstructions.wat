(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; global.set i32
        local.get $paramI32
        global.set $globalI32

        ;; global.set i64
        local.get $paramI64
        global.set $globalI64

        ;; global.set f32
        local.get $paramF32
        global.set $globalF32

        ;; global.set f64
        local.get $paramF64
        global.set $globalF64
    )
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)