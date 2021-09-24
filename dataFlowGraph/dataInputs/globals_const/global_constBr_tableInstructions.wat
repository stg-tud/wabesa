(module
    (func $func1
        ;; br_table
        (block
            (block
                (block
                    global.get $globalI32
                    br_table 0 1 2
                )
            )
        )
    )
    (global $globalI32 i32 i32.const 0)
)