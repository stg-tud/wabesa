;; graph
;;                     0 (control)
;;                     |
;;                     1 (control)
;;                     |
;;                     2 (control)
;;                     |
;;                     3 (control)
;;                     |
;;                     4 (block)
;;                     |
;;                     5 (control)
;;                     |
;;    _________________+_________________
;;  /           |             |           \
;; 6 (block)    8 (block)    10 (block)    12 (block)
;; |            |             |             |
;; 7 (control)  9 (control)  11 (control)  13 (control)

(module
    (func $brTable (param i32) (result i32)
        (block ;; 0 (label: L1)
            (block ;; 1 (label: L2)
                (block ;; 2 (label: L3)
                    (block ;; 3 (label: L4)
                        local.get 0 ;; 4
                        (br_table 0 0 1 1 1 2 2 2 2 3 3 3 3 3) ;; 5
                        ;; 0 -> jump to L4
                        ;; 1 -> jump to L4
                        ;; 2 -> jump to L3
                        ;; 3 -> jump to L3
                        ;; 4 -> jump to L3
                        ;; 5 -> jump to L2
                        ;; 6 -> jump to L2
                        ;; 7 -> jump to L2
                        ;; 8 -> jump to L2
                        ;; 9 -> jump to L1
                        ;; 10 -> jump to L1
                        ;; 11 -> jump to L1
                        ;; 12 -> jump to L1
                        ;; 13 (default case) -> jump to L1
                    )
                    i32.const 0 ;; 6
                    return ;; 7
                )
                i32.const 1 ;; 8
                return ;; 9
            )
            i32.const 2 ;; 10
            return ;; 11
        )
        i32.const 3 ;; 12
        return ;; 13
    )
)