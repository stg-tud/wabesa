(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
                    (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)

        ;; local.set i32
        i32.const 1
        local.set $localI32

        ;; local.set i64
        i64.const 1
        local.set $localI64

        ;; local.set f32
        f32.const 1.5
        local.set $localF32

        ;; local.set f64
        f64.const 1.5
        local.set $localF64

        ;; local.tee i32
        i32.const 1
        local.tee $localI32
        drop

        ;; local.tee i64
        i64.const 1
        local.tee $localI64
        drop

        ;; local.tee f32
        f32.const 1.5
        local.tee $localF32
        drop

        ;; local.tee f64
        f64.const 1.5
        local.tee $localF64
        drop

        ;; local.set parameter i32
        i32.const 1
        local.set $paramI32

        ;; local.set parameter i64
        i64.const 1
        local.set $paramI64

        ;; local.set parameter f32
        f32.const 1.5
        local.set $paramF32

        ;; local.set parameter f64
        f64.const 1.5
        local.set $paramF64
    )
)