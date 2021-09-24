(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
        ;; call_indirect i32
        local.get $paramI32
        i32.const 0
        call_indirect (type $paramI32)

        ;; call_indirect i64
        local.get $paramI64
        i32.const 1
        call_indirect (type $paramI64)

        ;; call_indirect f32
        local.get $paramF32
        i32.const 2
        call_indirect (type $paramF32)

        ;; call_indirect f64
        local.get $paramF64
        i32.const 3
        call_indirect (type $paramF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (table 4 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64)
    (type $paramI32 (func (param i32)))
    (type $paramI64 (func (param i64)))
    (type $paramF32 (func (param f32)))
    (type $paramF64 (func (param f64)))
)