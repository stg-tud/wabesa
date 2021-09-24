(module
    (func $func1 (param $paramI32 i32)
        ;; if
        local.get $paramI32
        (if (result i32)
            (then i32.const 0)
            (else i32.const 1)
        )
        call $readI32
    )
    (func $readI32 (param i32) nop)
)