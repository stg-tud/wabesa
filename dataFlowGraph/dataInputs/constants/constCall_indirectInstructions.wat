(module
    (func $func1
        ;; call_indirect i32
        i32.const 1
        i32.const 0
        call_indirect (type $typeI32)

        ;; call_indirect i64
        i64.const 1
        i32.const 1
        call_indirect (type $typeI64)

        ;; call_indirect f32
        f32.const 1.5
        i32.const 2
        call_indirect (type $typeF32)

        ;; call_indirect f64
        f64.const 1.5
        i32.const 3
        call_indirect (type $typeF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (table 4 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64)
    (type $typeI32 (func (param i32)))
    (type $typeI64 (func (param i64)))
    (type $typeF32 (func (param f32)))
    (type $typeF64 (func (param f64)))
)