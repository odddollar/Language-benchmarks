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

int main() {
	unsigned long long start = getTime();

    long num = 2000000000;

    for (long i = 1; i < num+1; i++) {
        if (num % i == 0) {
            printf("%li is a factor of %li\n", i, num);
        }
    }

	float time = getTime() - start;
	printf("Completed in: %.3fs", time/1000);

    return 0;
}