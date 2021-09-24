(module
    (func $func1
        ;; drop i32
        i32.const 0
        call_indirect (type $returnI32)
        drop

        ;; drop i64
        i32.const 1
        call_indirect (type $returnI64)
        drop

        ;; drop f32
        i32.const 2
        call_indirect (type $returnF32)
        drop

        ;; drop f64
        i32.const 3
        call_indirect (type $returnF64)
        drop
    )
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