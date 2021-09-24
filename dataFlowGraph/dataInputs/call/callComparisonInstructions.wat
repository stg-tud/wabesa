(module
    (func $func1
        ;; comparison i32 (eq)
        call $getI32
        i32.const 0
        i32.eq
        call $readI32

        ;; comparison i32 (eq)
        call $getI64
        i64.const 0
        i64.eq
        call $readI32

        ;; comparison f32 (eq)
        call $getF32
        f32.const 0
        f32.eq
        call $readI32

        ;; comparison f64 (eq)
        call $getF64
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
)