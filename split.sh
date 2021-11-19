#!/bin/bash
touch cars{0..9}.txt

cat used_cars_data.csv | { col_index=$(cat col_index.txt);
while read i; do
    n=$(cut -d "," -f 12 i)
    n=$($n:-1)
    cut -d "," -f $col_index i >>cars${n}.txt
    break
done
}
