from time import time

start = time()

primes = []

for i in range(0, 15000):
    factors = []

    for j in range(1, i+1):
        if i % j == 0:
            factors.append(j)

    if len(factors) == 2:
        primes.append(i)

print(primes)

print(f"Time taken: {round(time()-start, 3)}s")
