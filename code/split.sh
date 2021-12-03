#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo -e "ERROR: need exact 1 argument\n"
    exit 0
fi

cat $1 | {
    col_index=$(cat col_index.txt)
    while read i; do
        n=$(echo $i | cut -d "," -f 43)
        if [[ $n == "Hyundai" ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi

        if [[ $n == "Chevrolet" ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi

        if [[ $n == "Ford" ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi

        if [[ $n == "Jeep" ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi
        
        if [[ $n == "BMW" ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi
    done
}
