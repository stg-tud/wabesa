;; graph
;;       0 (block)
;;       |
;;       1 (control)
;;       |
;;    ___+___
;;  /         \
;; 2 (block)   4 (block)
;; |
;; 3 (control)

(module
    (func $ifZero (param i32) (param i32) (result i32)
        local.get 0 ;; 0
        (if ;; 1
            (then)
            (else
                local.get 1 ;; 2
                return ;; 3
            )
        )
        i32.const 0 ;; 4
    )
)