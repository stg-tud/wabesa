;; Entrypoint
;; Export function 0
;; Graph
;; 0 (export)
;; |
;; 1

(module
    (func $caller (param $value i32) (result i32)
        local.get 0
        (if (result i32)
            (then
                local.get 0
                call $callee
            )
            (else
                local.get 0
            )
        )
    )
    (func $callee (param $value i32) (result i32)
        local.get 0
        i32.const 1
        i32.add
    )
    (export "caller" (func 0))
)