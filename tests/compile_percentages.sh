#!/bin/bash

rm -f results_percentage.csv

chudnovsky_orig=0
quicksort_orig=0

while read line
do
    if [[ $line == 'Original'* ]]; then
        while IFS="," read -r c1 c2 c3
        do
            chudnovsky_orig=$c2
            quicksort_orig=$c3
            echo "Chudnovsky Original: $chudnovsky_orig"
            echo "Quicksort Original: $quicksort_orig"
        done < <(echo $line)
        break
    fi
done < results.csv

while read line
do
    if [[ $line == 'Method'* ]]; then
        echo $line >> results_percentage.csv
        continue
    fi

    while IFS="," read -r c1 c2 c3
    do
        chudnovsky=$(printf "%.1f" $(echo "scale=4; ($c2/$chudnovsky_orig)*100" | bc))
        quicksort=$(printf "%.1f" $(echo "scale=4; ($c3/$quicksort_orig)*100" | bc))
        echo "Chudnovsky: $chudnovsky"
        echo "Quicksort: $quicksort"
        echo "$c1,$chudnovsky,$quicksort" >> results_percentage.csv
    done < <(echo $line)
done < results.csv