(module
    (func $func1
        ;; select i32
        i32.const 0
        call_indirect (type $returnI32)
        i32.const 1
        call_indirect (type $returnI32)
        i32.const 2
        call_indirect (type $returnI32)
        select
        drop

        ;; select i64
        i32.const 3
        call_indirect (type $returnI64)
        i32.const 4
        call_indirect (type $returnI64)
        i32.const 5
        call_indirect (type $returnI32)
        select
        drop

        ;; select f32
        i32.const 6
        call_indirect (type $returnF32)
        i32.const 7
        call_indirect (type $returnF32)
        i32.const 8
        call_indirect (type $returnI32)
        select
        drop

        ;; select f64
        i32.const 9
        call_indirect (type $returnF64)
        i32.const 10
        call_indirect (type $returnF64)
        i32.const 11
        call_indirect (type $returnI32)
        select
        drop
    )
    (func $getI32_0 (result i32) i32.const 1)
    (func $getI32_1 (result i32) i32.const 1)
    (func $select0 (result i32) i32.const 1)
    (func $getI64_0 (result i32) i32.const 1)
    (func $getI64_1 (result i32) i32.const 1)
    (func $select1 (result i32) i32.const 1)
    (func $getF32_0 (result f32) f32.const 1.5)
    (func $getF32_1 (result f32) f32.const 1.5)
    (func $select2 (result i32) i32.const 1)
    (func $getF64_0 (result f64) f64.const 1.5)
    (func $getF64_1 (result f64) f64.const 1.5)
    (func $select3 (result i32) i32.const 1)
    (table 12 funcref)
    (elem (i32.const 0) $getI32_0 $getI32_1 $select0 $getI64_0 $getI64_1 $select1 $getF32_0 $getF32_1 $select2 $getF64_0 $getF64_1 $select3)
    (type $returnI32 (func (result i32)))
    (type $returnI64 (func (result i64)))
    (type $returnF32 (func (result f32)))
    (type $returnF64 (func (result f64)))
)