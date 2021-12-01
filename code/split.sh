#!/bin/bash

tail +2 used_cars_data.csv | {
    col_index=$(cat col_index.txt)
    while read i; do
        n=$(echo $i | cut -d "," -f 12)
        n=${n: -1}
        if [[ $n =~ [0-9] ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.txt
        fi
    done
}
