(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)

        ;; unary i32 (clz)
        local.get $paramI32
        i32.clz
        call $readI32

        ;; unary i64 (clz)
        local.get $paramI64
        i64.clz
        call $readI64

        ;; unary f32 (abs)
        local.get $paramF32
        f32.abs
        call $readF32

        ;; unary f64 (abs)
        local.get $paramF64
        f64.abs
        call $readF64

    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)