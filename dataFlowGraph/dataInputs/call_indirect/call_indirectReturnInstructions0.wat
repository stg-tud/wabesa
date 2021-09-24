(module
    (func $func1 (result i32)
        (block
            (block
                (block
                    i32.const 0
                    call_indirect (type $returnI32)
                    i32.const 0
                    call_indirect (type $returnI32)
                    br_if 0
                    return
                )
            )
        )

        ;; return
        i32.const 0
        call_indirect (type $returnI32)
    )
    (func $getI32 (result i32) i32.const 1)
    (table 1 funcref)
    (elem (i32.const 0) $getI32)
    (type $returnI32 (func (result i32)))
)