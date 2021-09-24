(module
    (func $func1
        ;; br_if
        (block
            global.get $globalI32
            br_if 0
        )
    )
    (global $globalI32 i32 i32.const 0)
)