(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)

        ;; unary i32 (clz)
        local.get $localI32
        i32.clz
        call $readI32

        ;; unary i64 (clz)
        local.get $localI64
        i64.clz
        call $readI64

        ;; unary f32 (abs)
        local.get $localF32
        f32.abs
        call $readF32

        ;; unary f64 (abs)
        local.get $localF64
        f64.abs
        call $readF64

    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)