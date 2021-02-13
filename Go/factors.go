package main

import (
	"fmt"
	"time"
)

func main() {
	start := time.Now()

	num := 2000000000

	for i := 1; i <= num; i++ {
		if num % i == 0 {
			fmt.Printf("%d is a factor of %v\n", i, num)
		}
	}

	fmt.Printf("Finished in: %v", time.Since(start))
}
