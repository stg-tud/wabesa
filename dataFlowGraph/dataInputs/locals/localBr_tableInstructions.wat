(module
    (func $func1 (local $localI32 i32)
        ;; br_table
        (block
            (block
                (block
                    local.get $localI32
                    br_table 0 1 2
                )
            )
        )
    )
)