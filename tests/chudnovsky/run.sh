#!/bin/bash

rm -f res.*
rm -f results.csv

for file in test_*; do
    echo "Running $file"
    for i in {1..10}; do
        /usr/bin/time -f '%e' -o res.$file -a ./$file 1000000 > /dev/null
    done

    time=$(awk '{ total += $1; count++ } END { printf "%.3f", total/count }' res.$file)
    echo "Average time: $time"

    echo "$file,$time" >> results.csv
    rm res.$file
done