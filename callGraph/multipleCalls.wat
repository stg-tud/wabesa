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
;; 0 (import)  1  2  3
(module
    (import "imp" "callee1" (func $callee1 (param i32))) ;; funcIdx: 0
    (memory $memory0 1)
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
    (func $callee4 (param $value i32) (result i32) ;; funcIdx: 3
        local.get 0
        local.get 0
        i32.mul
    )
    (func $caller (param $value i32) (result i32) ;; funcIdx: 4
        local.get 0
        (if
            (then
                local.get 0
                call 0
                local.get 0
                call 1 ;; call edge to funcIdx 1 should only occur once
            )
            (else
                local.get 0
                call 1 ;; call edge to funcIdx 1 should only occur once
            )
        )
        f32.const 3.1415
        call 2

        i32.const 1
        call 3
    )
    (export "caller" (func 4))
)