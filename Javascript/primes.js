function primes() {
	let start = performance.now();
	
	let primes = [];

	for (let i = 0; i < 15000; i++) {
		let factors = [];

		for (let j = 1; j <= i; j++) {
			if (i % j == 0) {
				factors.push(j);
			}
		}

		if (factors.length == 2) {
			primes.push(i);
		}
	}

	console.log(primes);
		
	console.log(`Time taken: ${(performance.now()-start)/1000}s`);
}
