(module
    (func $func1 (param $paramI32 i32) (result i32)
        (block
            (block
                (block
                    local.get $paramI32
                    local.get $paramI32
                    br_if 0
                    return
                )
            )
        )

        ;; return
        local.get $paramI32
    )
)