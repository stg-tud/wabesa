;; graph
;; 0 (control)
;; |
;; 1 (basic block) <--+
;; |                  |
;; 5 (control)        |
;; +------------------+
;; |
;; 6

(module
    (func $countdown (param i32)
        (loop ;; 0 (label L1)
            local.get 0 ;; 1
            i32.const 1 ;; 2
            i32.sub ;; 3
            local.tee 0 ;; 4
            br_if 0 ;; 5 (jump to L1)
        )
        nop ;; 6
    )
)