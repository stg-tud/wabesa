(module
    (func $func1

        ;; unary i32 (clz)
        global.get $globalI32
        i32.clz
        call $readI32

        ;; unary i64 (clz)
        global.get $globalI64
        i64.clz
        call $readI64

        ;; unary f32 (abs)
        global.get $globalF32
        f32.abs
        call $readF32

        ;; unary f64 (abs)
        global.get $globalF64
        f64.abs
        call $readF64

    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (global $globalI32 i32 i32.const 0)
    (global $globalI64 i64 i64.const 0)
    (global $globalF32 f32 f32.const 0)
    (global $globalF64 f64 f64.const 0)
)