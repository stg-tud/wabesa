;; Entrypoint
;; Export function 1
;; Graph
;; 1 (export)
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
    (type $type0 (func (param i32) (result i32)))
    (func $caller (param $value i32) (result i32)
        local.get 0
        (if (result i32)
            (then
                local.get 0
                i32.const 0
                call_indirect (type $type0)
            )
            (else
                local.get 0
            )
        )
    )

    (export "caller" (func 1))
)