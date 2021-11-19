#!/bin/bash
touch cars{0..9}.txt

tail +2 used_cars_data.csv | {
col_index=$(cat col_index.txt)
while read i; do
    n=$(echo $i | cut -d "," -f 12)
    n=${n: -1}
    echo $n
    echo $i | cut -d "," -f $col_index >>cars${n}.txt
done
}
