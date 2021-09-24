(module
    (func $func1
        ;; test i32 (eqz)
        i32.const 0
        call_indirect (type $returnI32)
        i32.eqz
        call $readI32

        ;; test i64 (eqz)
        i32.const 1
        call_indirect (type $returnI64)
        i64.eqz
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
    (table 2 funcref)
    (elem (i32.const 0) $getI32 $getI64)
    (type $returnI32 (func (result i32)))
    (type $returnI64 (func (result i64)))
)