(module
    (func $func1
        ;; binary i32 (add)
        global.get $globalI32
        global.get $globalI32
        i32.add
        call $readI32

        ;; binary i64 (add)
        global.get $globalI64
        global.get $globalI64
        i64.add
        call $readI64

        ;; binary f32 (add)
        global.get $globalF32
        global.get $globalF32
        f32.add
        call $readF32

        ;; binary f64 (add)
        global.get $globalF64
        global.get $globalF64
        f64.add
        call $readF64
    )
    (func $readI32 (param i32) nop)
    (func $readI64 (param i64) nop)
    (func $readF32 (param f32) nop)
    (func $readF64 (param f64) nop)
    (global $globalI32 (mut i32) i32.const 0)
    (global $globalI64 (mut i64) i64.const 0)
    (global $globalF32 (mut f32) f32.const 0)
    (global $globalF64 (mut f64) f64.const 0)
)