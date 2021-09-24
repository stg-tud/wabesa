;; graph
;;        0 (control)
;;        |
;;        1 (control)
;;        |
;;        2 (control)
;;        |
;;    ____+____
;;  /           \
;; 3 (block)     6 (block)
;; |             |
;; 5 (control)   9 (block)
;;               |
;;              12 (block)
(module
    (func $func (param i32) (result i32)
        (block ;; 0
            local.get 0 ;; 1
            (if ;; 2
                (then
                    nop ;; 3
                    i32.const 0 ;; 4
                    return ;; 5
                )
                (else
                    nop ;; 6
                    nop ;; 7
                    nop ;; 8
                )
            )
            nop ;; 9
            nop ;; 10
            nop ;; 11
        )
        i32.const 1 ;; 12
    )
)