(module
    (func $func1
        ;; if
        i32.const 0
        call_indirect (type $returnI32)
        (if (result i32)
            (then i32.const 0)
            (else i32.const 1)
        )
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $getI32 (result i32) i32.const 1)
    (table 1 funcref)
    (elem (i32.const 0) $getI32)
    (type $returnI32 (func (result i32)))
)