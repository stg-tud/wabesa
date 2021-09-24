;; graph
;;                           0 (control)
;;                           |
;;                           1 (control)
;;                           |
;;                           2 (control)
;;                           |
;;                           3 (control)
;;                           |
;;                           4 (control)
;;                           |
;;                           5 (block)
;;                           |
;;                           6 (control)
;;                           |
;;                   ________+________
;;                 /                   \
;;                7 (block)            17 (block)
;;                |                     |
;;                8 (control)          18 (control)
;;                |                     |
;;                |                     +-------------+
;;                |                     |             |
;;            ____+____               27 (block)      |
;;          /           \              |              |
;;         9 (block)    15 (block)    28 (control)    |
;;         |             |                            |
;;        10 (control)  16 (control)                  |
;;         |             |                            |
;;         |             +----------------------------+
;;         |             |                            |
;;         |            25 (block)                    |
;;         |             |                            |
;;     ____+____        26 (control)                  |
;;   /           \                                    |
;; 11 (block)    13 (block)                           |
;;  |             |                                   |
;; 12 (control)  14 (control)                         |
;;  |             |                                   |
;;  +-------------+-----------------------------------+
;;  |             |                                   |
;; 21 (block)    23 (block)                           |
;;  |             |                                   |
;; 22 (control)  24 (control)                         |
;;                                                    |
;;                                                   19 (block)
;;                                                    |
;;                                                   20 (control)

(module
    (func $br (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (result i32)
        (block ;; 0 (label: L1)
            (block ;; 1 (label: L2)
                (block ;; 2 (label: L3)
                    (block ;; 3 (label: L4)
                        (loop ;; 4 (label: L5)
                            local.get 0 ;; 5
                            (if ;; 6 (label: L6)
                                (then
                                    local.get 1 ;; 7
                                    (if ;; 8 (label: L7)
                                        (then
                                            local.get 2 ;; 9
                                            (if ;; 10 (label: L8)
                                                (then
                                                    local.get 3 ;; 11
                                                    br_if 4 ;; 12 (jump to L4)
                                                )
                                                (else
                                                    local.get 4 ;; 13
                                                    br_if 5 ;; 14 (jump to L3)
                                                )
                                            )
                                        )
                                        (else
                                            local.get 5 ;; 15
                                            br_if 5 ;; 16 (jump to L2)
                                        )
                                    )
                                )
                                (else
                                    local.get 6 ;; 17
                                    br_if 5 ;; 18 (jump to L1)
                                )
                            )
                            i32.const 4 ;; 19
                            return ;; 20
                        )
                    )
                    i32.const 3 ;; 21
                    return ;; 22
                )
                i32.const 2 ;; 23
                return ;; 24
            )
            i32.const 1 ;; 25
            return ;; 26
        )
        i32.const 0 ;; 27
        return ;; 28
    )
)