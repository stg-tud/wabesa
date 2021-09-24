(module
    (func $func1 (result i32)
        ;; return
        i32.const 0
        call_indirect (type $returnI32)
        (if (result i32)
            (then
                i32.const 1
                call_indirect (type $returnI32)
                return
            )
            (else
                i32.const 2
                call_indirect (type $returnI32)
                return
            )
        )
    )
    (func $getI32_0 (result i32) i32.const 1)
    (func $getI32_1 (result i32) i32.const 1)
    (func $getI32_2 (result i32) i32.const 1)
    (table 3 funcref)
    (elem (i32.const 0) $getI32_0 $getI32_1 $getI32_2)
    (type $returnI32 (func (result i32)))
)