(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; drop i32
        local.get $localI32
        drop

        ;; drop i64
        local.get $localI64
        drop

        ;; drop f32
        local.get $localF32
        drop

        ;; drop f64
        local.get $localF64
        drop
    )
)