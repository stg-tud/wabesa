(module
    (func $func1
        ;; comparison i32 (eq)
        global.get $globalI32
        i32.const 0
        i32.eq
        call $readI32

        ;; comparison i32 (eq)
        global.get $globalI64
        i64.const 0
        i64.eq
        call $readI32

        ;; comparison f32 (eq)
        global.get $globalF32
        f32.const 0
        f32.eq
        call $readI32

        ;; comparison f64 (eq)
        global.get $globalF64
        f64.const 0
        f64.eq
        call $readI32
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (global $globalI32 i32 i32.const 0)
    (global $globalI64 i64 i64.const 0)
    (global $globalF32 f32 f32.const 0)
    (global $globalF64 f64 f64.const 0)
)