;; Entrypoint
;; - start section
;; - Multiple calls from one function to another function
;;   should only occur once.
;; Graph
;;             4 (start)
;;             |
;;   _________ 3
;; /           |  \
;; .           .  .
;; 0 (import)  1  2

(module
    (type $typeI32 (func (param i32)))
    (type $typeF32 (func (param f32)))
    (import "imp" "callee1" (func $callee1 (param i32))) ;; funcIdx: 0
    (table 3 funcref)
    (memory $memory0 1)
    (elem (i32.const 0) $callee1 $callee2 $callee3)
    (func $callee2 (param $value i32) ;; funcIdx: 1
        i32.const 0
        local.get 0
        i32.store
    )
    (func $callee3 (param $value f32) ;; funcIdx: 2
        i32.const 1
        local.get 0
        f32.store
    )
    (func $caller (param $value i32) ;; funcIdx: 3
        local.get 0
        (if
            (then
                local.get 0
                i32.const 0
                call_indirect (type $typeI32)

                i32.const 1
                i32.const 1
                call_indirect (type $typeI32) ;; call edge to funcIdx 1 should only occur once
            )
            (else
                local.get 0
                i32.const 1
                call_indirect (type $typeI32) ;; call edge to funcIdx 1 should only occur once
            )
        )
        f32.const 3.1415
        i32.const 2
        call_indirect (type $typeF32)
    )
    (func $start ;; funcIdx: 4
        i32.const 1
        call 3
    )
    (start 4)
)