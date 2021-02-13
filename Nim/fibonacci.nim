import strformat
from times import nil

proc fib(n: int): int =
    if n <= 1:
        return n
    else:
        return fib(n-1) + fib(n-2)

let start = times.cpuTime()

for i in 1..50:
    echo(fmt"{i} {fib(i)}")

echo(fmt"Time taken: {times.cpuTime()-start}s")
