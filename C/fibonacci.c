#include<stdio.h>
#include<sys/time.h>

unsigned long long getTime() {
	struct timeval tv;

	gettimeofday(&tv, NULL);

	unsigned long long millisecondsSinceEpoch =
    (unsigned long long)(tv.tv_sec) * 1000 +
    (unsigned long long)(tv.tv_usec) / 1000;

	return millisecondsSinceEpoch;
}

long long fib(int n) {
	if (n <= 1) {
		return n;
	} else {
		return fib(n-1) + fib(n-2);
	}
}

int main() {
	unsigned long long start = getTime();

    for (int i = 1; i <= 50; i++) {
        printf("%d %lli\n", i, fib(i));
    }

	float time = getTime() - start;
	printf("Completed in: %.3fs", time/1000);

    return 0;
}
