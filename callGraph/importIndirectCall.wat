;; Graph
;; 1
;; |
;; .
;; 0
(module
    (import "imp" "callee" (func $callee (param i32) (result i32))) ;; funcIdx: 0
    (table 1 funcref)
    (elem (i32.const 0) $callee)
    (type $typeCallee (func (param i32) (result i32)))
    (func $caller (param $value i32) (result i32) ;; funcIdx: 1
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