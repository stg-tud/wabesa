(module
    (func $func1 (param $paramI32 i32) (param $paramI64 i64) (param $paramF32 f32) (param $paramF64 f64)
                    (local $localI32 i32) (local $localI64 i64) (local $localF32 f32) (local $localF64 f64)

        ;; local.set i32
        i32.const 0
        call_indirect (type $returnI32)
        local.set $localI32

        ;; local.set i64
        i32.const 1
        call_indirect (type $returnI64)
        local.set $localI64

        ;; local.set f32
        i32.const 2
        call_indirect (type $returnF32)
        local.set $localF32

        ;; local.set f64
        i32.const 3
        call_indirect (type $returnF64)
        local.set $localF64

        ;; local.tee i32
        i32.const 0
        call_indirect (type $returnI32)
        local.tee $localI32
        drop

        ;; local.tee i64
        i32.const 1
        call_indirect (type $returnI64)
        local.tee $localI64
        drop

        ;; local.tee f32
        i32.const 2
        call_indirect (type $returnF32)
        local.tee $localF32
        drop

        ;; local.tee f64
        i32.const 3
        call_indirect (type $returnF64)
        local.tee $localF64
        drop

        ;; local.set parameter i32
        i32.const 0
        call_indirect (type $returnI32)
        local.set $paramI32

        ;; local.set parameter i64
        i32.const 1
        call_indirect (type $returnI64)
        local.set $paramI64

        ;; local.set parameter f32
        i32.const 2
        call_indirect (type $returnF32)
        local.set $paramF32

        ;; local.set parameter f64
        i32.const 3
        call_indirect (type $returnF64)
        local.set $paramF64
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