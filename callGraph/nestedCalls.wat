;; nested calls
;; Graph
;;           9 (start)
;;           |
;;           2
;;          / \
;;         3   4
;;             |
;;    _________+_________
;;  /          |          \
;; 0 (import)  5 (export)  6 (export)
;;             |
;;             7
;;            / \
;;           8   1 (import)

(module
    (import "imp" "func0" (func $func0 (param i32))) ;; funcIdx: 0
    (import "imp" "func1" (func $func1 (param i32))) ;; funcIdx: 1
    (memory $memory0 1)
    (func $func2 (param i32) ;; funcIdx: 2
        local.get 0
        call 3
        local.get 0
        call 4
    )
    (func $func3 (param i32) ;; funcIdx: 3
        i32.const 0
        local.get 0
        i32.store
    )
    (func $func4 (param i32) ;; funcIdx: 4
        local.get 0
        call 0
        local.get 0
        call 5
        local.get 0
        call 6
    )
    (func $func5 (param i32) ;; funcIdx: 5
        local.get 0
        call 7
    )
    (func $func6 (param i32) ;; funcIdx: 6
        i32.const 1
        local.get 0
        i32.store
    )
    (func $func7 (param i32) ;; funcIdx: 7
        local.get 0
        call 8
        local.get 0
        call 1
    )
    (func $func8 (param i32) ;; funcIdx: 8
        i32.const 2
        local.get 0
        i32.store
    )
    (func $start ;; funcIdx: 9
        i32.const 1
        call 2
    )
    (start 9)
    (export "func5" (func 5))
    (export "func6" (func 6))
)