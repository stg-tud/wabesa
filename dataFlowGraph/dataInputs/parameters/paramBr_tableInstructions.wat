(module
    (func $func1 (param $paramI32 i32)
        ;; br_table
        (block
            (block
                (block
                    local.get $paramI32
                    br_table 0 1 2
                )
            )
        )
    )
)