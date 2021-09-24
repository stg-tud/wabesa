(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; call i32
        local.get $localI32
        call $readI32

        ;; call i64
        local.get $localI64
        call $readI64

        ;; call f32
        local.get $localF32
        call $readF32

        ;; call f64
        local.get $localF64
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)