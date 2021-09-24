(module
    (func $func1
        ;; comparison i32 (eq)
        i32.const 0
        call_indirect (type $returnI32)
        i32.const 0
        i32.eq
        call $readI32

        ;; comparison i32 (eq)
        i32.const 1
        call_indirect (type $returnI64)
        i64.const 0
        i64.eq
        call $readI32

        ;; comparison f32 (eq)
        i32.const 2
        call_indirect (type $returnF32)
        f32.const 0
        f32.eq
        call $readI32

        ;; comparison f64 (eq)
        i32.const 3
        call_indirect (type $returnF64)
        f64.const 0
        f64.eq
        call $readI32
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
    (elem (i32.const 0) $getI32 $getI64 $getF32 $getF64)
    (type $returnI32 (func (result i32)))
    (type $returnI64 (func (result i64)))
    (type $returnF32 (func (result f32)))
    (type $returnF64 (func (result f64)))
)