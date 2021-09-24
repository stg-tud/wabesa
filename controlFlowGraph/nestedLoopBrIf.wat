;; graph
;; 0 (control)
;; |
;; 1 (control)  <---+
;; |                |
;; 2 (basic block)  |
;; |                |
;; 6 (control)      |
;; +----------------+
;; |
;; 7

(module
    (func $countdown (param i32)
        (loop ;; 0
            (loop ;; 1
                local.get 0 ;; 2
                i32.const 1 ;; 3
                i32.sub ;; 4
                local.tee 0 ;; 5
                br_if 1 ;; 6
            )
            nop ;; 7
        )
    )
)