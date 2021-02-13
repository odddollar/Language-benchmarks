function fibonacci() {
	let start = performance.now();

	for (let i = 1; i <= 50; i++) {
		console.log(`${i} ${fib(i)}`);
	}
		
	console.log(`Time taken: ${(performance.now()-start)/1000}s`);
}

function fib(n) {
	if (n <= 1) {
		return n;
	} else {
		return fib(n-1) + fib(n-2);
	}
}
