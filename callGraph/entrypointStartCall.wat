;; Entrypoint
;; - start section
;; - Multiple calls from one function to another function
;;   should only occur once.
;; Graph
;;    4 (start)
;;    |
;;    3 _______
;; /  |         \
;; 0  1 (import) 2

(module
    (import "imp" "callee1" (func (param i32))) ;; funcIdx: 0
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
    (func $caller (param $value i32) ;; funcIdx: 3
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

    )
    (func $start
        i32.const 0
        call 3
    )
    (start 4)
)