<?php

function fib($n) {
    if ($n <= 1) {
        return $n;
    } else {
        return fib($n - 1) + fib($n - 2);
    }
}

$time1 = time();
for ($i = 1; $i <= 50; $i++) {
    echo "$i " . fib($i) . PHP_EOL;
}
$time2 = time();
$performance = $time2 - $time1;
echo "Time taken : $performance";

