(module
    (func $func1
        ;; call_indirect i32
        call $getI32
        i32.const 0
        call_indirect (type $localI32)

        ;; call_indirect i64
        call $getI64
        i32.const 1
        call_indirect (type $localI64)

        ;; call_indirect f32
        call $getF32
        i32.const 2
        call_indirect (type $localF32)

        ;; call_indirect f64
        call $getF64
        i32.const 3
        call_indirect (type $localF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
    (func $getF32 (result f32) f32.const 1.5)
    (func $getF64 (result f64) f64.const 1.5)
    (table 4 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64)
    (type $localI32 (func (param i32)))
    (type $localI64 (func (param i64)))
    (type $localF32 (func (param f32)))
    (type $localF64 (func (param f64)))
)