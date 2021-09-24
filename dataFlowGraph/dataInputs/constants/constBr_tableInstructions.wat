(module
    (func $func1
        ;; br_table
        (block
            (block
                (block
                    i32.const 1
                    br_table 0 1 2
                )
            )
        )
    )
)