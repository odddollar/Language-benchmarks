import strformat
from times import nil

let start = times.cpuTime()
const num: int = 2000000000

for i in 1..num:
    if num mod i == 0:
        echo(fmt"{i} is a factor of {num}")

echo(fmt"Time taken: {times.cpuTime()-start}s")
