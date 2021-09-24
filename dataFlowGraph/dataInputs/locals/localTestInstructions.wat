(module
    (func $func1 (local $localI32 i32) (local $localI64 i64)
        ;; test i32 (eqz)
        local.get $localI32
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        local.get $localI64
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
)