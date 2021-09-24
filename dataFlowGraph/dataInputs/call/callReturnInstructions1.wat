(module
    (func $func1 (result i32)
        ;; return
        call $getI32_0
        (if (result i32)
            (then
                call $getI32_1
                return
            )
            (else
                call $getI32_2
                return
            )
        )
    )
    (func $getI32_0 (result i32) i32.const 1)
    (func $getI32_1 (result i32) i32.const 1)
    (func $getI32_2 (result i32) i32.const 1)
)