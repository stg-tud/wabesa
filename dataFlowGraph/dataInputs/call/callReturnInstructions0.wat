(module
    (func $func1 (result i32)
        (block
            (block
                (block
                    call $getI32
                    call $getI32
                    br_if 0
                    return
                )
            )
        )

        ;; return
        call $getI32
    )
    (func $getI32 (result i32) i32.const 1)
)