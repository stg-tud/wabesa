(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; call i32
        local.get $paramI32
        call $readI32

        ;; call i64
        local.get $paramI64
        call $readI64

        ;; call f32
        local.get $paramF32
        call $readF32

        ;; call f64
        local.get $paramF64
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)