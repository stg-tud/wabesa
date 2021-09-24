(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
                    (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
                    (local $localI32Value i32) (local $localI64Value i64) (local $localF32Value f32) (local $localF64Value f64)
        ;; local.set i32
        local.get $localI32Value
        local.set $localI32

        ;; local.set i64
        local.get $localI64Value
        local.set $localI64

        ;; local.set f32
        local.get $localF32Value
        local.set $localF32

        ;; local.set f64
        local.get $localF64Value
        local.set $localF64

        ;; local.tee i32
        local.get $localI32Value
        local.tee $localI32
        drop

        ;; local.tee i64
        local.get $localI64Value
        local.tee $localI64
        drop

        ;; local.tee f32
        local.get $localF32Value
        local.tee $localF32
        drop

        ;; local.tee f64
        local.get $localF64Value
        local.tee $localF64
        drop

        ;; local.set parameter i32
        local.get $localI32Value
        local.set $paramI32

        ;; local.set parameter i64
        local.get $localI64Value
        local.set $paramI64

        ;; local.set parameter f32
        local.get $localF32Value
        local.set $paramF32

        ;; local.set parameter f64
        local.get $localF64Value
        local.set $paramF64
    )
)