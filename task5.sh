#!/bin/bash

file="$1"

if [ ! -f "$file" ]; then
	echo "Error: file '$file' not found"
	exit 1
fi

name=$(basename "$file")

ln -s "$file" "$name"

Echo "Создана ссылка: $name в $file"


