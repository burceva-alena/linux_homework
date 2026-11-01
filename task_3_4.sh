#!/bin/bash

echo "Отчет по директории:"

for file in *; do
    if [ -f "$file" ]; then
        echo "${file##*.}"
    fi
done | sort | uniq -c | awk '{print $2 ": " $1 " файлов"}'

echo ""
echo "Общий размер:"
du -sh .
