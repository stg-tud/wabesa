(module
    (func $func1

        ;; unary i32 (clz)
        call $getI32
        i32.clz
        call $readI32

        ;; unary i64 (clz)
        call $getI64
        i64.clz
        call $readI64

        ;; unary f32 (abs)
        call $getF32
        f32.abs
        call $readF32

        ;; unary f64 (abs)
        call $getF64
        f64.abs
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