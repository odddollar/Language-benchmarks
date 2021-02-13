function factors() {
	let start = performance.now();

	const num = 2000000000;
	
	for (var i = 1; i <= num; i++) {
		if (num % i == 0) {
			console.log(`${i} is a factor of ${num}`);
		}
	}
	
	console.log(`Time taken: ${(performance.now()-start)/1000}s`);
}
