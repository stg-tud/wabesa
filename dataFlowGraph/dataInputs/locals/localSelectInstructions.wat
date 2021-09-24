(module
    (func $func1 (local $localSelect0 i32) (local $localSelect1 i32) (local $localSelect2 i32) (local $localSelect3 i32) (local $localI32Value0 i32) (local $localI32Value1 i32) (local $localI64Value0 i64) (local $localI64Value1 i64) (local $localF32Value0 f32) (local $localF32Value1 f32) (local $localF64Value0 f64) (local $localF64Value1 f64)
        ;; select i32
        local.get $localI32Value0
        local.get $localI32Value1
        local.get $localSelect0
        select
        drop

        ;; select i64
        local.get $localI64Value0
        local.get $localI64Value1
        local.get $localSelect1
        select
        drop

        ;; select f32
        local.get $localF32Value0
        local.get $localF32Value1
        local.get $localSelect2
        select
        drop

        ;; select f64
        local.get $localF64Value0
        local.get $localF64Value1
        local.get $localSelect3
        select
        drop
    )
)