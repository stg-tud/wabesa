;; graph
;;                          0 (control)
;;                          |
;;                          1 (block)
;;                          |
;;                          2 (control)
;;                          |
;;                   _______+_______
;;                 /                 \
;;                3 (block)          10 (block)
;;                |                   |
;;                4 (control)         |
;;                |                   |
;;           _____+_____              |
;;         /             \            |
;;        5 (block)       9 (block)   |
;;        |               |           |
;;        6 (control)     |           |
;;        |               |           |
;;    ___+___             |           |
;;  /         \           |           |
;; 7 (block)   8 (block)  |           |
;; |           |          |           |
;; +-----------+----------+-----------+
;;                                    |
;;                                   11 (block)
;;                                    |
;;                                   12 (control)

(module
    (func $br (param i32) (param i32) (param i32) (result i32)
        (block (result i32) ;; 0 (label: L1)
            local.get 0 ;; 1
            (if ;; 2 (label: L2)
                (then
                    local.get 1 ;; 3
                    (if ;; 4 (label: L3)
                        (then
                            local.get 2 ;; 5
                            (if ;; 6 (label: L4)
                                (then
                                    nop ;; 7
                                )
                                (else
                                    nop ;; 8
                                )
                            )
                        )
                        (else
                            nop ;; 9
                        )
                    )
                )
                (else
                    nop ;; 10
                )
            )
            i32.const 1 ;; 11
            return ;; 12
        )
    )
)