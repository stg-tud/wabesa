(module
    (func $func1
        ;; call i32
        i32.const 1
        call $readI32

        ;; call i64
        i64.const 1
        call $readI64

        ;; call f32
        f32.const 1.5
        call $readF32

        ;; call f64
        f64.const 1.5
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)