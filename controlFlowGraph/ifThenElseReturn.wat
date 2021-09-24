;; graph
;;        0 (block)
;;        |
;;        1 (control)
;;        |
;;    ____+____
;;  /           \
;; 2 (block)     4 (block)
;; |             |
;; 3 (control)   5 (control)

(module
    (func $if (param i32) (param i32) (param i32) (result i32)
        local.get 0 ;; 0
        (if (result i32) ;; 1
            (then
                local.get 1 ;; 2
                return ;; 3
            )
            (else
                local.get 2 ;; 4
                return ;; 5
            )
        )
    )
)