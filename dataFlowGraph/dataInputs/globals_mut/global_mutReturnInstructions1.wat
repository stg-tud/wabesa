(module
    (func $func1 (result i32)
        ;; return
        global.get $globalI32_0
        (if (result i32)
            (then
                global.get $globalI32_1
                return
            )
            (else
                global.get $globalI32_2
                return
            )
        )
    )
    (global $globalI32_0 (mut i32) i32.const 0)
    (global $globalI32_1 (mut i32) i32.const 0)
    (global $globalI32_2 (mut i32) i32.const 0)
)