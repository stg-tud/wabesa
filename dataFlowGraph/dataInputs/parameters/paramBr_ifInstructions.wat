(module
    (func $func1 (param $paramI32 i32)
        ;; br_if
        (block
            local.get $paramI32
            br_if 0
        )
    )
)