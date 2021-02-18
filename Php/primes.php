<?php

$time1 = time();
$primes = [];

for ($i = 0; $i < 15000; $i++) {
    $factors = [];

    for ($j = 1; $j <= $i; $j++) {
        if ($i % $j == 0) {
            array_push($factors, $j);
        }
    }

    if (count($factors) == 2) {
        array_push($primes, $i);
    }
}

var_dump($primes);
$time2 = time();
$performance = $time2 - $time1;
echo "Time taken: $performance s";
