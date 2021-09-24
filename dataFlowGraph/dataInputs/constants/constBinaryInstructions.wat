(module
    (func $func1
        ;; binary i32 (add)
        i32.const 1
        i32.const 1
        i32.add
        call $readI32

        ;; binary i64 (add)
        i64.const 1
        i64.const 1
        i64.add
        call $readI64

        ;; binary f32 (add)
        f32.const 1.5
        f32.const 1.5
        f32.add
        call $readF32

        ;; binary f64 (add)
        f64.const 1.5
        f64.const 1.5
        f64.add
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)