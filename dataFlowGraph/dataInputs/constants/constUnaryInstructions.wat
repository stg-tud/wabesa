(module
    (func $func1

        ;; unary i32 (clz)
        i32.const 1
        i32.clz
        call $readI32

        ;; unary i64 (clz)
        i64.const 1
        i64.clz
        call $readI64

        ;; unary f32 (abs)
        f32.const 1.5
        f32.abs
        call $readF32

        ;; unary f64 (abs)
        f64.const 1.5
        f64.abs
        call $readF64

    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)