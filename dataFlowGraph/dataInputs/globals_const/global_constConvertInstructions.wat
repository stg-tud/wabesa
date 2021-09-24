(module
    (func $func1
        ;; convert to f32
        global.get $globalI32
        f32.convert_i32_s
        call $readF32

        ;; convert to f64
        global.get $globalI64
        f64.convert_i64_s
        call $readF64

        ;; convert to i32
        global.get $globalF32
        i32.trunc_f32_s
        call $readI32

        ;; convert to i64
        global.get $globalF64
        i64.trunc_f64_s
        call $readI64
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