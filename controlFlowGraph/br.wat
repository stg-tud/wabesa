;; graph
;;                      0 (control)
;;                      |
;;                      1 (control)
;;                      |
;;                      2 (control)
;;                      |
;;                      3 (control)
;;                      |
;;                      4 (control)
;;                      |
;;                      5 (block)
;;                      |
;;                      6 (control)
;;                      |
;;                  ____+____
;;                /           \
;;               7 (block)    14 (control)
;;               |             |
;;               8            21 (block)
;;               |             |
;;            ___+___         22 (control)
;;          /         \
;;         9 (block)   13 (control)
;;         |            |
;;        10           19 (block)
;;         |            |
;;     ____+____       20 (control)
;;   /           \
;; 11 (control)  12 (control)
;;  |             |
;; 15 (block)    17 (block)
;;  |             |
;; 16 (control)  18 (control)

(module
    (func $br (param i32) (param i32) (param i32) (result i32)
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
                                                    br 4 ;; 11 (jump to L4)
                                                )
                                                (else
                                                    br 5 ;; 12 (jump to L3)
                                                )
                                            )
                                        )
                                        (else
                                            br 5 ;; 13 (jump to L2)
                                        )
                                    )
                                )
                                (else
                                    br 5 ;; 14 (jump to L1)
                                )
                            )
                        )
                    )
                    i32.const 3 ;; 15
                    return ;; 16
                )
                i32.const 2 ;; 17
                return ;; 18
            )
            i32.const 1 ;; 19
            return ;; 20
        )
        i32.const 0 ;; 21
        return ;; 22
    )
)