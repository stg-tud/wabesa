(module
    (func $func1
        ;; test i32 (eqz)
        global.get $globalI32
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        global.get $globalI64
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (global $globalI32 i32 i32.const 0)
    (global $globalI64 i64 i64.const 0)
)