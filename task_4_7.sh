#!/bin/bash

mkdir -p my_project/src/{images,scripts,data}
mkdir -p my_project/docs/{images,scripts,data}
mkdir -p my_project/tests/{images,scripts,data}
mkdir -p my_project/build/{images,scripts,data}

touch my_project/README.md

for dir in $(find my_project -type d); do
    echo "Создана директория: $dir"
done
