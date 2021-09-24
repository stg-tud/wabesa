(module
    (func $func1
        ;; call_indirect i32
        global.get $globalI32
        i32.const 0
        call_indirect (type $globalI32)

        ;; call_indirect i64
        global.get $globalI64
        i32.const 1
        call_indirect (type $globalI64)

        ;; call_indirect f32
        global.get $globalF32
        i32.const 2
        call_indirect (type $globalF32)

        ;; call_indirect f64
        global.get $globalF64
        i32.const 3
        call_indirect (type $globalF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (table 4 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64)
    (type $globalI32 (func (param i32)))
    (type $globalI64 (func (param i64)))
    (type $globalF32 (func (param f32)))
    (type $globalF64 (func (param f64)))
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)