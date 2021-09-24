;; graph
;;                          0 (control)
;;                          |
;;                          1 (control)
;;                          |
;;                          2 (control)
;;  6 (block, unreachable)  |
;;  |                       3 (control)
;;  7 (block, unreachable)  |
;;  |                       4 (block)
;;  8 (block, unreachable)  |
;;  |                       5 (control)
;;  9 (block, unreachable)  |
;;  |  _____________________+_____________________
;;  |/             |   12 (block, unreachable)     \    15 (block, unreachable)
;;  |              |   /                            |   /
;;  |              |  /                             |  /
;;  |              |/                               |/
;; 10 (block)     13 (block)                       16 (block)
;;  |              |                                |
;; 11 (control)   14 (control)                     17 (control)
;;
;; 18 (block, unreachable)

(module
    (func $brTableUnreachable (param i32) (result i32)
        (block ;; 0 (label: L1)
            (block ;; 1 (label: L2)
                (block ;; 2 (label: L3)
                    (block ;; 3 (label: L4)
                        local.get 0 ;; 4
                        (br_table 1 2 3) ;; 5
                        ;; 0 -> jump to L3
                        ;; 1 -> jump to L2
                        ;; 2 (default case) -> jump to L1
                        nop ;; 6
                    )
                    i32.const 0 ;; 7
                    return ;; 8
                    nop ;; 9
                )
                i32.const 1 ;; 10
                return ;; 11
                nop ;; 12
            )
            i32.const 2 ;; 13
            return ;; 14
            nop ;; 15
        )
        i32.const 3 ;; 16
        return ;; 17
        nop ;; 18
    )
)