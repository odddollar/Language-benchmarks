<?php

$num = 2000000000;
$time1 = time();

for ($i = 1; $i <= $num; $i++) {
    if ($num % $i == 0) {
        echo "$i is a factor of $num" . PHP_EOL;
    }
}
$time2 = time();
$performance = ($time2 - $time1);
echo "Time taken: $performance s";
