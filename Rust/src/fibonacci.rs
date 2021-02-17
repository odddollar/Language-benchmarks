use std::time::Instant;

fn main() {
    let start = Instant::now();
    for i in 1..=50 {
        println!("{} {}", i, fib(i))
    }
    let duration = start.elapsed();
    println!("Finished in: {:?}", duration);
}

fn fib(n: u64) -> u64 {
    match n {
        0 => 0,
        1 => 1,
        _ => fib(n - 1) + fib(n - 2),
    }
}
