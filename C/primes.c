#include<stdio.h>
#include<stdlib.h>
#include<sys/time.h>

unsigned long long getTime() {
	struct timeval tv;

	gettimeofday(&tv, NULL);

	unsigned long long millisecondsSinceEpoch =
    (unsigned long long)(tv.tv_sec) * 1000 +
    (unsigned long long)(tv.tv_usec) / 1000;

	return millisecondsSinceEpoch;
}

int main() {
	unsigned long long start = getTime();

	int *primes = (int*)malloc(1*sizeof(int));
	int primes_length = 0;
	
	for (int i = 0; i < 15000; i++) {
		int factors = 0;

		for (int j = 1; j <= i; j++) {
			if (i % j == 0) {
				factors++;
			}
		}
		
		if (factors == 2) {
			primes[primes_length] = i;
			primes_length++;
			primes = (int*)realloc(primes, (primes_length+1)*sizeof(int));
		}
	}

	for (int i = 0; i < primes_length; i++) {
		printf("%i ", primes[i]);
	}

	free(primes);

	float time = getTime() - start;
	printf("\nCompleted in: %.3fs", time/1000);

    return 0;
}