;; graph
;; 0 (control)
;; |
;; 1 (control)
;; |
;; 2 (block) <--------+
;; |                  |
;; 6 (control)        |
;; +------------------+
;; |
;; 7 (block)

(module
    (func $loopBrTable (param i32)
        (block ;; 0 (label L1)
            (loop ;; 1 (label L2)
                local.get 0 ;; 2
                i32.const 1 ;; 3
                i32.sub ;; 4
                local.tee 0 ;; 5
                (br_table 1 0 0) ;; 6
                ;; 0 -> jump to L1
                ;; 1 -> jump to L2
                ;; 2 (default case) -> jump to L2
            )
        )
        nop ;; 7
    )
)