(module
    (func $func1 (param $paramI32_0 i32) (param $paramI32_1 i32) (param $paramI32_2 i32) (result i32)
        ;; return
        local.get $paramI32_0
        (if (result i32)
            (then
                local.get $paramI32_1
                return
            )
            (else
                local.get $paramI32_2
                return
            )
        )
    )
)