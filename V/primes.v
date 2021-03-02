import time

fn main() {
	start := time.new_stopwatch({})

    mut primes := []int{}
    
    for i := 0; i < 15000; i++ {
        mut factors := []int{}
        
        for j := 1; j <= i; j++ {
            if i % j == 0 {
                factors << j
            }
        }
        
        if factors.len == 2 {
            primes << i
        }
    }
    
    println(primes)

	println("Finished in: ${start.elapsed().seconds()}s")
}
