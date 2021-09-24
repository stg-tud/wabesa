;; graph
;; 0 (control)
;; |
;; 1 (control)
;; |
;; 2 (control)
;; |
;; 3 (block)
;; |
;; 6 (control)
;; |
;; |    7 (block)
;; |    |
;; |    8 (block)
;; |    |
;; |   10 (block)
;;  \  /
;;   12 (block)

(module
    (func $brUnreachable
        (block ;; 0 (label L1)
            (block ;; 1 (label L2)
                (block ;; 2 (label L3)
                    nop ;; 3
                    nop ;; 4
                    nop ;; 5
                    br 2 ;; 6
                    nop ;; 7
                )
                nop ;; 8
                nop ;; 9
            )
            nop ;; 10
            nop ;; 11
        )
        nop ;; 12
    )
)