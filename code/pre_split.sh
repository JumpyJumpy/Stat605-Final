#!/bin/bash
mkdir log error output
col_index=$(cat col_index.txt)
head -n 1 used_cars_data.csv | cut -d "," -f ${col_index} >header.csv
split -a 1 -d -n 10  --additional-suffix=.csv used_cars_data.csv "cars_"
