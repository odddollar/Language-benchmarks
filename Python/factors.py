from time import time

start = time()

num = 2000000000

for i in range(1, num+1):
    if num % i == 0:
        print(f"{i} is a factor of {num}")

print(f"Time taken: {round(time()-start, 3)}s")
