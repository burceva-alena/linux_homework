#!/bin/bash 

file="$1"

if [ -d "$file" ]; then
    echo "Это папка"
elif [ -f "$file" ]; then
    echo "Это файл"
fi

if [ ! -e "$file" ]; then
    echo "Error: '$file' not found"
    exit 1
fi

if [ -d "$file" ]; then
    ls "$file"
else
    ls -l "$file"
    wc -l "$file"
fi
