;; Graph
;; empty
(module
    (table 6 funcref)
    (func $callee0 (param $value i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (func $callee1 (param $value i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (func $callee2 (param $value i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (func $callee3 (param $value1 i32) (param $value2 i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (func $callee4 (param $value1 i32) (param $value2 i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (func $callee5 (param $value1 i32) (param $value2 i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (elem (i32.const 0) $callee3 $callee4 $callee5)
    (type $typeCallee (func (param i32) (param i32) (result i32)))
    (type $typeCalleeIndirect (func (param i32) (result i32)))
    (func $caller (param $value i32) (result i32)
        local.get 0
        (if (result i32)
            (then
                i32.const 0
                local.get 0
                call_indirect (type $typeCalleeIndirect)
            )
            (else
                local.get 0
            )
        )
    )

)