use std::time::Instant;

fn main() {
    let start = Instant::now();

    let mut primes = Vec::new();

    for i in 1..15000 {
        let mut factors = Vec::new();
        for j in 1..=i {
            if i % j == 0 {
                factors.push(j);
            }
        }
        if factors.len() == 2 {
            primes.push(i);
        }
    }
    println!("{:?}", primes);

    let duration = start.elapsed();
    println!("Finished in: {:?}", duration);
}
