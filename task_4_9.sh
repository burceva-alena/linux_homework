#!/bin/bash

touch document1.txt document2.txt document3.txt document4.txt document5.txt
mkdir -p renamed

files=$(ls document*.txt)  

while [ -n "$files" ]; do             
    current_file=$(echo "$files" | awk '{print $1}')
    new_name="${current_file/document/file}"
    mv "$current_file" "renamed/$new_name"
    files=$(echo "$files" | cut -d' ' -f2-)                         
done

ls renamed
