#!/bin/bash

sed '1d; s/;/,/g' data.csv > step1.csv

cat > fixed.csv << 'STOP'
"Alice",25,"New York"
"Bob",30,"Los Angeles"
"Carla",22,"Chicago"
STOP

awk -F ',' '{if (NF != 3) print "Ошибка в строке " NR ": " NF " поля"}' fixed.csv

while read line; do
    echo "$line" | awk -F ',' '{print "Hello, my name is " $1 ". I am " $2 " years old and I live in " $3 "."}'
done < fixed.csv
