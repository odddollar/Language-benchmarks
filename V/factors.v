import time

fn main() {
	start := time.new_stopwatch({})

    num := 2000000000

	for i := 1; i <= num; i++ {
		if num % i == 0 {
            println("$i is a factor of $num")
		}
	}

	println("Finished in: ${start.elapsed().seconds()}s")
}
