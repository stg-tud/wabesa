(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; drop i32
        local.get $paramI32
        drop

        ;; drop i64
        local.get $paramI64
        drop

        ;; drop f32
        local.get $paramF32
        drop

        ;; drop f64
        local.get $paramF64
        drop
    )
)