(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
                    (param $paramI32target i32) (param $paramI64target i64) (param $paramF32target f32) (param $paramF64target f64)
                    (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; local.set i32
        local.get $paramI32
        local.set $localI32

        ;; local.set i64
        local.get $paramI64
        local.set $localI64

        ;; local.set f32
        local.get $paramF32
        local.set $localF32

        ;; local.set f64
        local.get $paramF64
        local.set $localF64

        ;; local.tee i32
        local.get $paramI32
        local.tee $localI32
        drop

        ;; local.tee i64
        local.get $paramI64
        local.tee $localI64
        drop

        ;; local.tee f32
        local.get $paramF32
        local.tee $localF32
        drop

        ;; local.tee f64
        local.get $paramF64
        local.tee $localF64
        drop

        ;; local.set parameter i32
        local.get $paramI32
        local.set $paramI32target

        ;; local.set parameter i64
        local.get $paramI64
        local.set $paramI64target

        ;; local.set parameter f32
        local.get $paramF32
        local.set $paramF32target

        ;; local.set parameter f64
        local.get $paramF64
        local.set $paramF64target
    )
)