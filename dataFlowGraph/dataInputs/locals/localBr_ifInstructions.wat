(module
    (func $func1 (local $localI32 i32)
        ;; br_if
        (block
            local.get $localI32
            br_if 0
        )
    )
)