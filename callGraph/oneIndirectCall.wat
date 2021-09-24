;; Graph
;; 1
;; |
;; .
;; 0

(module
    (table 1 funcref)
    (func $callee (param $value i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (elem (i32.const 0) $callee)
    (type $typeCallee (func (param i32) (result i32)))
    (func $caller (param $value i32) (result i32)
        local.get 0
        (if (result i32)
            (then
                local.get 0
                i32.const 0
                call_indirect (type $typeCallee)
            )
            (else
                local.get 0
            )
        )
    )

)