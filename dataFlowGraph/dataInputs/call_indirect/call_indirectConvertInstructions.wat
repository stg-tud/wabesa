(module
    (func $func1
        ;; convert to f32
        i32.const 0
        call_indirect (type $returnI32)
        f32.convert_i32_s
        call $readF32

        ;; convert to f64
        i32.const 1
        call_indirect (type $returnI64)
        f64.convert_i64_s
        call $readF64

        ;; convert to i32
        i32.const 2
        call_indirect (type $returnF32)
        i32.trunc_f32_s
        call $readI32

        ;; convert to i64
        i32.const 3
        call_indirect (type $returnF64)
        i64.trunc_f64_s
        call $readI64
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