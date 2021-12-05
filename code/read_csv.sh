#!/bin/bash
mkdir log error output
col_index=$(cat col_index.txt)
head -n 1 used_cars_data.csv | cut -d "," -f ${col_index} >header.csv

cat used_cars_data.csv | csvquote | cut -d "," -f ${col_index} >car_splited.csv

