(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; binary i32 (add)
        local.get $paramI32
        local.get $paramI32
        i32.add
        call $readI32

        ;; binary i64 (add)
        local.get $paramI64
        local.get $paramI64
        i64.add
        call $readI64

        ;; binary f32 (add)
        local.get $paramF32
        local.get $paramF32
        f32.add
        call $readF32

        ;; binary f64 (add)
        local.get $paramF64
        local.get $paramF64
        f64.add
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)