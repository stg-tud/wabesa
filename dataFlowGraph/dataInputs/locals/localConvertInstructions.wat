(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; convert to f32
        local.get $localI32
        f32.convert_i32_s
        call $readF32

        ;; convert to f64
        local.get $localI64
        f64.convert_i64_s
        call $readF64

        ;; convert to i32
        local.get $localF32
        i32.trunc_f32_s
        call $readI32

        ;; convert to i64
        local.get $localF64
        i64.trunc_f64_s
        call $readI64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)