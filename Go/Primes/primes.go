package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()

	var primes []int

	for i := 0; i < 15000; i++ {
		var factors []int

		for j := 1; j <= i; j++ {
			if i%j == 0 {
				factors = append(factors, j)
			}
		}

		if len(factors) == 2 {
			primes = append(primes, i)
		}
	}

	fmt.Println(primes)

	fmt.Printf("Finished in: %v", time.Since(start))
}
