(module
    (func $func1 (param $paramSelect0 i32) (param $paramSelect1 i32) (param $paramSelect2 i32) (param $paramSelect3 i32)
                    (param $paramI32Value0 i32) (param $paramI32Value1 i32)
                    (param $paramI64Value0 i64) (param $paramI64Value1 i64)
                    (param $paramF32Value0 f32) (param $paramF32Value1 f32)
                    (param $paramF64Value0 f64) (param $paramF64Value1 f64)

        ;; select i32
        local.get $paramI32Value0
        local.get $paramI32Value1
        local.get $paramSelect0
        select
        drop

        ;; select i64
        local.get $paramI64Value0
        local.get $paramI64Value1
        local.get $paramSelect1
        select
        drop

        ;; select f32
        local.get $paramF32Value0
        local.get $paramF32Value1
        local.get $paramSelect2
        select
        drop

        ;; select f64
        local.get $paramF64Value0
        local.get $paramF64Value1
        local.get $paramSelect3
        select
        drop
    )
)