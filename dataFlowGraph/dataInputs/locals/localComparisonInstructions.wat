(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; comparison i32 (eq)
        local.get $localI32
        i32.const 0
        i32.eq
        call $readI32

        ;; comparison i32 (eq)
        local.get $localI64
        i64.const 0
        i64.eq
        call $readI32

        ;; comparison f32 (eq)
        local.get $localF32
        f32.const 0
        f32.eq
        call $readI32

        ;; comparison f64 (eq)
        local.get $localF64
        f64.const 0
        f64.eq
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)