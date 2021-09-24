(module
    (func $func1
        ;; call i32
        global.get $globalI32
        call $readI32

        ;; call i64
        global.get $globalI64
        call $readI64

        ;; call f32
        global.get $globalF32
        call $readF32

        ;; call f64
        global.get $globalF64
        call $readF64
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