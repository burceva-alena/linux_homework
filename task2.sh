#!/bin/bash

file="$1"
old_ext="$2"
new_ext="$3"

if [ "$2" != "txt" ] && [ "$2" != "pdf" ] && [ "$2" != "doc" ]; then 
	echo "Error: unsupported format '$2'"
	echo "Supported formats: txt, pdf, doc"
	exit 1
fi

if [ "$3" != "txt" ] && [ "$3" != "pdf" ] && [ "$3" != "doc" ]; then
        echo "Error: unsupported format '$3'"
        echo "Supported formats: txt, pdf, doc"
        exit 1
fi

base="${file%.*}"

new_file="${base}.${new_ext}"

mv "$file" "$new_file"
echo "Renamed: $file -> $new_file"


