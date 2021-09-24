(module
    (func $func1
        ;; br_if
        (block
            call $getI32
            br_if 0
        )
    )
    (func $getI32 (result i32) i32.const 1)
)