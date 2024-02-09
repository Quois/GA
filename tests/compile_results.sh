#!/bin/bash

rm -f results.csv

echo "Method,Chudnovsky,Quicksort" > results.csv
methods=(chudnovsky quicksort)

declare -A results

for i in ${methods[@]}; do
    cd $i
   
    while IFS="," read -r method time; do
        case $method in
            "test_orig")
                method="Original"
                ;;
            "test_cff")
                method="Control Flow Flattening"
                ;;
            "test_indir")
                method="Indirect Branching"
                ;;
            "test_sub_1")
                method="Instruction Substitution (1 pass)"
                ;;
            "test_sub_2")
                method="Instruction Substitution (2 passes)"
                ;;
            "test_bcf")
                method="Bogus Control Flow"
                ;;
        esac
        results[$method]+="$time,"
    done < results.csv

    cd ..
done

for i in "${!results[@]}"; do
    echo "$i,${results[$i]}" >> results.csv
done