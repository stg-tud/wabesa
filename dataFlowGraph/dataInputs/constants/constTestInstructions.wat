(module
    (func $func1
        ;; test i32 (eqz)
        i32.const 1
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        i64.const 1
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
)