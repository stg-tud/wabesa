(module
    (func $func1 (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)
        ;; call_indirect i32
        local.get $localI32
        i32.const 0
        call_indirect (type $localI32)

        ;; call_indirect i64
        local.get $localI64
        i32.const 1
        call_indirect (type $localI64)

        ;; call_indirect f32
        local.get $localF32
        i32.const 2
        call_indirect (type $localF32)

        ;; call_indirect f64
        local.get $localF64
        i32.const 3
        call_indirect (type $localF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (table 4 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64)
    (type $localI32 (func (param i32)))
    (type $localI64 (func (param i64)))
    (type $localF32 (func (param f32)))
    (type $localF64 (func (param f64)))
)