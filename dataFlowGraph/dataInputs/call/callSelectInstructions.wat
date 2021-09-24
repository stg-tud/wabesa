(module
    (func $func1
        ;; select i32
        call $getI32_0
        call $getI32_1
        call $getI32_S
        select
        drop

        ;; select i64
        call $getI64_0
        call $getI64_1
        call $getI64_S
        select
        drop

        ;; select f32
        call $getF32_0
        call $getF32_1
        call $getF32_S
        select
        drop

        ;; select f64
        call $getF64_0
        call $getF64_1
        call $getF64_S
        select
        drop
    )
    (func $getI32_0 (result i32) i32.const 1)
    (func $getI64_0 (result i64) i64.const 1)
    (func $getF32_0 (result f32) f32.const 1.5)
    (func $getF64_0 (result f64) f64.const 1.5)
    (func $getI32_1 (result i32) i32.const 1)
    (func $getI64_1 (result i64) i64.const 1)
    (func $getF32_1 (result f32) f32.const 1.5)
    (func $getF64_1 (result f64) f64.const 1.5)
    (func $getI32_S (result i32) i32.const 1)
    (func $getI64_S (result i32) i32.const 1)
    (func $getF32_S (result i32) i32.const 1)
    (func $getF64_S (result i32) i32.const 1)
)