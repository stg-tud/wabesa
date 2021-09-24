(module
    (func $func1
        ;; convert to f32
        i32.const 1
        f32.convert_i32_s
        call $readF32

        ;; convert to f64
        i64.const 1
        f64.convert_i64_s
        call $readF64

        ;; convert to i32
        f32.const 1.5
        i32.trunc_f32_s
        call $readI32

        ;; convert to i64
        f64.const 1.5
        i64.trunc_f64_s
        call $readI64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)