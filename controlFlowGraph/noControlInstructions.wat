;; graph
;; 0 (basic block)

(module
    (func $sum (param i32) (param i32) (result i32)
        local.get 0 ;; 0
        local.get 1 ;; 1
        i32.add ;; 2
    )
)