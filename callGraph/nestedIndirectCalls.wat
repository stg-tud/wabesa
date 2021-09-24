;; nested calls (indirect)
;; Graph
;;           9 (start)
;;           |
;;           .
;;           2
;;          / \
;;         .   .
;;         3   4
;;             |
;;    _________+_________
;;  /          |          \
;; .           .           .
;; 0 (import)  5 (export)  6 (export)
;;             |
;;             .
;;             7
;;            / \
;;           .   .
;;           8   1 (import)

(module
    (import "imp" "func0" (func $func0 (param i32))) ;; funcIdx: 0
    (import "imp" "func1" (func $func1 (param i32) (param i32))) ;; funcIdx: 1
    (table 9 funcref)
    (memory $memory0 1)
    (type $typeFunc0 (func (param i32)))
    (type $typeFunc1 (func (param i32) (param i32)))
    (type $typeFunc2 (func (param i32) (param i32) (param i32)))
    (type $typeFunc3 (func (param i32) (param i32) (param i32) (param i32)))
    (type $typeFunc4 (func (param i32) (param i32) (param i32) (param i32) (param i32)))
    (type $typeFunc5 (func (param i32) (param i32) (param i32) (param i32) (param i32) (param i32)))
    (type $typeFunc6 (func (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32)))
    (type $typeFunc7 (func (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32)))
    (type $typeFunc8 (func (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32)))
    (func $func2 (param i32) (param i32) (param i32) ;; funcIdx: 2
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 3
        call_indirect (type $typeFunc3)
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 4
        call_indirect (type $typeFunc4)
    )
    (func $func3 (param i32) (param i32) (param i32) (param i32) ;; funcIdx: 3
        i32.const 0
        local.get 0
        i32.store
    )
    (func $func4 (param i32) (param i32) (param i32) (param i32) (param i32) ;; funcIdx: 4
        local.get 0
        i32.const 0
        call_indirect (type $typeFunc0)
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 5
        call_indirect (type $typeFunc5)
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 6
        call_indirect (type $typeFunc6)
    )
    (func $func5 (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) ;; funcIdx: 5
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 7
        call_indirect (type $typeFunc7)
    )
    (func $func6 (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32);; funcIdx: 6
        i32.const 1
        local.get 0
        i32.store
    )
    (func $func7 (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32);; funcIdx: 7
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        local.get 0
        i32.const 8
        call_indirect (type $typeFunc8)
        local.get 0
        local.get 0
        i32.const 1
        call_indirect (type $typeFunc1)
    )
    (func $func8 (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32) (param i32);; funcIdx: 8
        i32.const 2
        local.get 0
        i32.store
    )
    (func $start ;; funcIdx: 9
        i32.const 1
        i32.const 1
        i32.const 1
        i32.const 2
        call_indirect (type $typeFunc2)
    )
    (elem (i32.const 0) $func0 $func1 $func2 $func3 $func4 $func5 $func6 $func7 $func8)
    (start 9)
    (export "func5" (func 5))
    (export "func6" (func 6))
)