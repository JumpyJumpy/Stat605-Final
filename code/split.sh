#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo -e "ERROR: need exact 1 argument\n"
    exit 0
fi

cat $1 | {
    col_index=$(cat col_index.txt)
    while read i; do
        n=$(echo $i | cut -d "," -f 12)
        n=${n: -1}
        if [[ $n =~ [0-9] ]]; then
            echo $i | cut -d "," -f ${col_index} >>cars_random_${n}.csv
        fi
    done
}
