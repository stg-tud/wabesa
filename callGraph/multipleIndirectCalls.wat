;; multiple calls
;; -> normal function
;; -> exported function
;; -> imported function
;; -> Call one function multiple times to check
;;    if the call graph contains this call edge only once.
;; Graph
;;          4 (export)
;;          |
;;   _______+_______
;; /           |  |  \
;; .           .  .  .
;; 0 (import)  1  2  3
(module
    (import "imp" "callee1" (func $callee1 (param i32))) ;; funcIdx: 0
    (table 4 funcref)
    (memory $memory0 1)
    (elem (i32.const 0) $callee1 $callee2 $callee3 $callee4)
    (type $typeCallee1 (func (param i32)))
    (type $typeCallee2 (func (param i32) (param i32)))
    (type $typeCallee3 (func (param f32)))
    (type $typeCallee4 (func (param i32) (param i32) (result i32)))
    (func $callee2 (param $value1 i32) (param $value2 i32) ;; funcIdx: 1
        i32.const 0
        local.get 0
        i32.store
    )
    (func $callee3 (param $value f32) ;; funcIdx: 2
        i32.const 1
        local.get 0
        f32.store
    )
    (func $callee4 (param $value i32) (param $value2 i32) (result i32) ;; funcIdx: 3
        local.get 0
        local.get 1
        i32.mul
    )
    (func $caller (param $value i32) (result i32) ;; funcIdx: 4
        local.get 0
        (if
            (then
                i32.const 0
                local.get 0
                call_indirect (type $typeCallee1)

                local.get 0
                i32.const 1
                local.get 0
                call_indirect (type $typeCallee2) ;; call edge to funcIdx 1 should only occur once
            )
            (else
                local.get 0
                i32.const 1
                local.get 0
                call_indirect (type $typeCallee2) ;; call edge to funcIdx 1 should only occur once
            )
        )
        f32.const 3.1415
        i32.const 2
        call_indirect (type $typeCallee3)

        i32.const 0
        i32.const 1
        i32.const 3
        call_indirect (type $typeCallee4)
    )
    (export "caller" (func 4))
)