(module
    (func $func1
        ;; select i32
        i32.const 0
        i32.const 1
        i32.const 1
        select
        drop

        ;; select i64
        i64.const 0
        i64.const 1
        i32.const 1
        select
        drop

        ;; select f32
        f32.const 0
        f32.const 1.5
        i32.const 1
        select
        drop

        ;; select f64
        f64.const 0
        f64.const 1.5
        i32.const 1
        select
        drop
    )
)