(module
    (func $func1
        ;; comparison i32 (eq)
        i32.const 1
        i32.const 1
        i32.eq
        call $readI32

        ;; comparison i32 (eq)
        i64.const 1
        i64.const 1
        i64.eq
        call $readI32

        ;; comparison f32 (eq)
        f32.const 1.5
        f32.const 1.5
        f32.eq
        call $readI32

        ;; comparison f64 (eq)
        f64.const 1.5
        f64.const 1.5
        f64.eq
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)