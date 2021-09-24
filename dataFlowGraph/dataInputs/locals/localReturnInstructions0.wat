(module
    (func $func1 (result i32) (local $localI32 i32)
        (block
            (block
                (block
                    local.get $localI32
                    local.get $localI32
                    br_if 0
                    return
                )
            )
        )

        ;; return
        local.get $localI32
    )
)