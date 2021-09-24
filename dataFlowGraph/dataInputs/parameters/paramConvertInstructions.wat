(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; convert to f32
        local.get $paramI32
        f32.convert_i32_s
        call $readF32

        ;; convert to f64
        local.get $paramI64
        f64.convert_i64_s
        call $readF64

        ;; convert to i32
        local.get $paramF32
        i32.trunc_f32_s
        call $readI32

        ;; convert to i64
        local.get $paramF64
        i64.trunc_f64_s
        call $readI64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)