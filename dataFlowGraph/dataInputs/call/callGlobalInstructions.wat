(module
    (func $func1
        ;; global.set i32
        call $getI32
        global.set $globalI32

        ;; global.set i64
        call $getI64
        global.set $globalI64

        ;; global.set f32
        call $getF32
        global.set $globalF32

        ;; global.set f64
        call $getF64
        global.set $globalF64
    )
    (func $getI32 (result i32) i32.const 1)
    (func $getI64 (result i64) i64.const 1)
    (func $getF32 (result f32) f32.const 1.5)
    (func $getF64 (result f64) f64.const 1.5)
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)