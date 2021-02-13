from time import time

def fib(n):
    if n <= 1:
        return n
    else:
        return fib(n-1) + fib(n-2)

start = time()

for i in range(1, 51):
    print(f"{i} {fib(i)}")

print(f"Time taken: {round(time()-start, 3)}s")
