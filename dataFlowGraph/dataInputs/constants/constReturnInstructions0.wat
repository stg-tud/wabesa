(module
    (func $func1 (result i32)
        (block
            (block
                (block
                    i32.const 1
                    i32.const 1
                    br_if 0
                    return
                )
            )
        )

        ;; return
        i32.const 1
    )
)