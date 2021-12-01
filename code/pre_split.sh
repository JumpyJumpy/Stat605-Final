#!/bin/bash
mkdir log error output

split -a 1 -n 20 --numeric-suffixes=1 --additional-suffix=.csv used_cars_data.csv "cars_"
