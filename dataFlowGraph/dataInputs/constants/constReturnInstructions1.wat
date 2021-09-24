(module
    (func $func1 (result i32)
        ;; return
        i32.const 1
        (if (result i32)
            (then
                i32.const 1
                return
            )
            (else
                i32.const 1
                return
            )
        )
    )
)