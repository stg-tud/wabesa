;; Graph
;; 1
;; |
;; 0

(module
    (type $type1 (func (param i32) (result i32)))
    (import "imp" "callee" (func $type1)) ;; funcIdx: 0
    (func $caller (param $value i32) (result i32) ;; funcIdx: 1
        local.get 0
        (if (result i32)
            (then
                local.get 0
                call 0
            )
            (else
                local.get 0
            )
        )
    )
)