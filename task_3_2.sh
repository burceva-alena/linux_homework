#!/bin/bash

today=$(date +%Y-%m-%d)

for file in *.txt; do
    if [ -f "$file" ]; then
        filename="${file%.*}"
        new_name="${filename}_${today}.txt"
        cp "$file" "$new_name"
    fi
done

echo "Резервные копии созданы!"
ls *.txt
