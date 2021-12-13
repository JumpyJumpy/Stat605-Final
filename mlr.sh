#!/bin/bash

tar -xzf R402.tar.gz

export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R

Rscript mlr_by_brand.R $1
