#!/bin/bash

rm -rf output
mkdir output

# group1 
bash ./generate.sh 001 002
bash ./generate.sh 003 004

# group2 
bash ./generate.sh 005 006

# example of mid and high to correct Y coordinate
bash ./generate.sh 001-mid 001-high
mv output/001-001.png output/example-mid-high
