(module
    (func $func1
        ;; binary i32 (add)
        call $getI32
        call $getI32
        i32.add
        call $readI32

        ;; binary i64 (add)
        call $getI64
        call $getI64
        i64.add
        call $readI64

        ;; binary f32 (add)
        call $getF32
        call $getF32
        f32.add
        call $readF32

        ;; binary f64 (add)
        call $getF64
        call $getF64
        f64.add
        call $readF64
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