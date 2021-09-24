(module
    (func $func1
        ;; drop i32
        call $getI32
        drop

        ;; drop i64
        call $getI64
        drop

        ;; drop f32
        call $getF32
        drop

        ;; drop f64
        call $getF64
        drop
    )
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
    (func $getF32 (result f32) f32.const 1.5)
    (func $getF64 (result f64) f64.const 1.5)
)