import strformat
from times import nil

let start = times.cpuTime()

var primes: seq[int] = @[]

for i in 0..<15000:
    var factors: seq[int] = @[]

    for j in 1..i:
        if i mod j == 0:
            factors.add(j)

    if len(factors) == 2:
        primes.add(i)

echo(primes)

echo(fmt"Time taken: {times.cpuTime()-start}s")
