(module
    (func $func1 (result i32) (local $localI32_0 i32) (local $localI32_1 i32) (local $localI32_2 i32)
        ;; return
        local.get $localI32_0
        (if (result i32)
            (then
                local.get $localI32_1
                return
            )
            (else
                local.get $localI32_2
                return
            )
        )
    )
)