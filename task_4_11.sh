#!/bin/bash

mkdir -p images documents scripts archives

for file in *; do
    if [ -d "$file" ]; then
        continue
    fi

    if [[ "$file" == *.tar.gz ]]; then
        mv "$file" archives/
    elif [[ "$file" == *.jpg || "$file" == *.png ]]; then
        mv "$file" images/
    elif [[ "$file" == *.txt || "$file" == *.pdf ]]; then
        mv "$file" documents/
    elif [[ "$file" == *.sh ]]; then
        mv "$file" scripts/
    fi
done

echo "Done"
ls -R
