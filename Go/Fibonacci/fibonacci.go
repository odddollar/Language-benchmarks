package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()

	for i := 1; i < 50; i++ {
		fmt.Println(i, fib(i))
	}

	fmt.Printf("Finished in: %v", time.Since(start))
}

func fib(n int) int {
	if n <= 1 {
		return n
	} else {
		return fib(n-1) + fib(n-2)
	}
}
