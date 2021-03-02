import time

fn main() {
	start := time.new_stopwatch({})

	for i := 1; i <= 50; i++ {
		println("$i ${fib(i)}")
	}

	println("Finished in: ${start.elapsed().seconds()}s")
}

fn fib(n i64) i64 {
	if n <= 1 {
		return n
	} else {
		return fib(n-1) + fib(n-2)
	}
}
