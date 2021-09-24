(module
    (func $func1 (result i32)
        (block
            (block
                (block
                    global.get $globalI32
                    global.get $globalI32
                    br_if 0
                    return
                )
            )
        )

        ;; return
        global.get $globalI32
    )
    (global $globalI32 (mut i32) i32.const 0)
)