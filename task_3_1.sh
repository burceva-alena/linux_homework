#!/bin/bash

#создаем переменную и отрезаем любые символы до точки, чтобы проверить расширение
file="$1"
extension="${file##*.}"

#проверяем расширение
if [ "$extension" = "csv" ]; then
    separator=","
elif [ "$extension" = "tsv" ]; then
    separator=$'\t'
else
    echo "Ошибка: поддерживаются только форматы .csv и .tsv"
    exit 1
fi

echo "Проверяем файл формата $extension..."

#создаем предполагаемое колво столбцов и нумерацию строк
expected_cols=0
line_num=0

while read  line; do
    line_num=$((line_num+1)) #+1 это шаг чтоб читал дальше, а не стоял на месет 
    
#подсчет столбцов
    cols=$(echo "$line" | awk -F "$separator" '{print NF}') 
    
    if [ $line_num -eq 1 ]; then
        expected_cols=$cols  #это предполаагемое колво столбоцов 
    else
        if [ "$cols" -ne "$expected_cols" ]; then
            echo "Ошибка: в строке $line_num столбцов $cols, а ожидалось $expected_cols"
            exit 1
        fi
    fi
done < "$file"

echo "Сделано.  Все строки содержат по $expected_cols столбцов."
    
