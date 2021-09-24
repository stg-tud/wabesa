(module
    (func $func1
        ;; test i32 (eqz)
        call $getI32
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        call $getI64
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
)