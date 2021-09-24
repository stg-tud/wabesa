;; graph
;;       0 (block)
;;       |
;;       1 (control)
;;       |
;;    ___+___
;;  /         \
;; 2 (block)   3 (block)
;;  \ ___+___ /
;;       |
;;       4

(module
    (func $if (param i32) (param i32) (param i32) (result i32)
        local.get 0 ;; 0
        (if (result i32) ;; 1
            (then
                local.get 1 ;; 2
            )
            (else
                local.get 2 ;; 3
            )
        )
        nop ;; 4
    )
)