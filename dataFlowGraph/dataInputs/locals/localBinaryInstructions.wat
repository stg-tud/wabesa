(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; binary i32 (add)
        local.get $localI32
        local.get $localI32
        i32.add
        call $readI32

        ;; binary i64 (add)
        local.get $localI64
        local.get $localI64
        i64.add
        call $readI64

        ;; binary f32 (add)
        local.get $localF32
        local.get $localF32
        f32.add
        call $readF32

        ;; binary f64 (add)
        local.get $localF64
        local.get $localF64
        f64.add
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
)