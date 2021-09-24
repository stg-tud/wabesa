;; graph
;; 0 (control)
;; |
;; 1 (control)
;; |
;; 2 (basic block)

(module
    (func $sum (param i32) (param i32) (result i32)
        (block (result i32) ;; 0
            (block (result i32) ;; 1
                local.get 0 ;; 2
                local.get 1 ;; 3
                i32.add ;; 4
            )
        )
    )
)