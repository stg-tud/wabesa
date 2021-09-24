(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64)
        ;; test i32 (eqz)
        local.get $paramI32
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        local.get $paramI64
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
)