#!/bin/bash

mkdir -p backup
mkdir -p all_backups

for i in {1..7}; do

    mkdir -p backup/day_$i
    
    echo "Резервная копия за день $i" > backup/day_$i/info.txt
done

for i in {1..7}; do
    
    cp backup/day_$i/info.txt all_backups/info_day_$i.txt
done

echo "Содержимое all_backups:"
ls all_backups
