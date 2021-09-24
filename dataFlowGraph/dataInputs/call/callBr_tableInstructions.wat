(module
    (func $func1
        ;; br_table
        (block
            (block
                (block
                    call $getI32
                    br_table 0 1 2
                )
            )
        )
    )
    (func $getI32 (result i32) i32.const 1)
)