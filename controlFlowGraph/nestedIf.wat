;; graph
;;                                                     0 (block)
;;                                                     |
;;                                                     1 (control)
;;                                                     |
;;                         ____________________________+____________________________
;;                       /                                                           \
;;                     17 (block)                                                     2 (block)
;;                      |                                                             |
;;                     18 (control)                                                   3 (control)
;;                      |                                                             |
;;           ___________+___________                                             _____+_____
;;         /                         \                                         /            \
;;       29 (block)                  19 (block)                              10 (block)      4 (block)
;;        |                           |                                       |              |
;;       30 (control)                20 (control)                            11 (control)    5 (control)
;;        |                           |                                     /  \            / \
;;     ___+___                    ____+____                                |   12 (block)  |  6 (block)
;;   /         \                /           \                               \  /            \ /
;; 34 (block)  31 (block)     25 (block)    21 (block)                       15 (block)      9 (block)
;;  \          /               |             |                                \             /
;;   ----+----                28 (control)  24 (control)                        -----+-----
;;       |                                                                           |
;;      37 (block)                                                                   |
;;       |                                                                           |
;;        \                                                                          |
;;         38                                                                       16 (block)
;;          \                                                                       /
;;            ----------------------------------+----------------------------------
;;                                              |
;;                                             39
(module
    (func $if (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32)
        local.get 0 ;; 0
        (if ;; 1
            (then
                local.get 1 ;; 2
                (if ;; 3
                    (then
                        local.get 2 ;; 4
                        (if ;; 5
                            (then
                                nop ;; 6
                                nop ;; 7
                                nop ;; 8
                            )
                            (else)
                        )
                        nop ;; 9
                    )
                    (else
                        local.get 3 ;; 10
                        (if ;; 11
                            (then)
                            (else
                                nop ;; 12
                                nop ;; 13
                                nop ;; 14
                            )
                        )
                        nop ;; 15
                    )
                )
                nop ;; 16
            )
            (else
                local.get 4 ;; 17
                (if ;; 18
                    (then
                        local.get 5 ;; 19
                        (if ;; 20
                            (then
                                nop ;; 21
                                nop ;; 22
                                nop ;; 23
                                return ;; 24
                            )
                            (else
                                nop ;; 25
                                nop ;; 26
                                nop ;; 27
                                return ;; 28
                            )
                        )
                    )
                    (else
                        local.get 6 ;; 29
                        (if ;; 30
                            (then
                                nop ;; 31
                                nop ;; 32
                                nop ;; 33
                            )
                            (else
                                nop ;; 34
                                nop ;; 35
                                nop ;; 36
                            )
                        )
                        nop ;; 37
                    )
                )
                nop ;; 38
            )
        )
        nop ;; 39
    )
)