;; graph
;;       0 (block)
;;       |
;;       1 (control)
;;       |
;;    ___+___
;;  /         \
;; 2 (block)   5 (block)
;; |           |
;; 3 (control) 6 (control)
;;
;; 4 (block, unreachable)   7 (block, unreachable)
;;
;; 8 (block, unreachable)
;; |
;; 9 (control, unreachable)
;;
;; 10 (block, unreachable)


(module
    (func $returnUnreachable (param i32) (result i32)
        local.get 0 ;; 0
        (if ;; 1 (label L1)
            (then
                i32.const 0 ;; 2
                return ;; 3
                nop ;; 4
            )
            (else
                i32.const 1 ;; 5
                return ;; 6
                nop ;; 7
            )
        )
        i32.const 2 ;; 8
        return ;; 9
        nop ;; 10
    )
)