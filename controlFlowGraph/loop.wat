;; graph
;; 0 (control)
;; |
;; 1 (basic block)

(module
    (func $sum (param i32) (param i32) (result i32)
        (loop (result i32) ;; 0
            local.get 0 ;; 1
            local.get 1 ;; 2
            i32.add ;; 3
        )
    )
)