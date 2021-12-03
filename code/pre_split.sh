#!/bin/bash
mkdir log error output

head -n 1 cars_0.csv >header.csv
split -a 1 -d -n 10  --additional-suffix=.csv used_cars_data.csv "cars_"
