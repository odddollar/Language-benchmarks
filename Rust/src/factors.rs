use std::time::Instant;

fn main() {
    let start = Instant::now();

    const NUM: i64 = 2000000000;
    for i in 1..NUM {
        if NUM % i == 0 {
            println!("{} is a factor of {}", i, NUM);
        }
    }
    let duration = start.elapsed();
    println!("Finished in: {:?}", duration);
}
