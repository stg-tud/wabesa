(module
    (func $func1
        ;; call_indirect i32
        i32.const 4
        call_indirect (type $returnI32)
        i32.const 0
        call_indirect (type $paramI32)

        ;; call_indirect i64
        i32.const 5
        call_indirect (type $returnI64)
        i32.const 1
        call_indirect (type $paramI64)

        ;; call_indirect f32
        i32.const 6
        call_indirect (type $returnF32)
        i32.const 2
        call_indirect (type $paramF32)

        ;; call_indirect f64
        i32.const 7
        call_indirect (type $returnF64)
        i32.const 3
        call_indirect (type $paramF64)
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
    (func $getF32 (result f32) f32.const 1.5)
    (func $getF64 (result f64) f64.const 1.5)
    (table 8 funcref)
    (elem (i32.const 0) $readI32 $readI64 $readF32 $readF64 $getI32 $getI64 $getF32 $getF64)
    (type $returnI32 (func (result i32)))
    (type $returnI64 (func (result i64)))
    (type $returnF32 (func (result f32)))
    (type $returnF64 (func (result f64)))
    (type $paramI32 (func (param i32)))
    (type $paramI64 (func (param i64)))
    (type $paramF32 (func (param f32)))
    (type $paramF64 (func (param f64)))
)