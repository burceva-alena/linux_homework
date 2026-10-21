#!/bin/bash

mkdir -p logs

for i in {01..10}; do
    
    echo "Это лог номер $i" > logs/log_$i.txt
done

echo  "Вывод логов"

for i in {01..10}; do
    cat logs/log_$i.txt
done

echo "Удаление чётных логов"

for i in {01..10}; do
   
    if [ $((i % 2)) -eq 0 ]; then
        rm logs/log_$i.txt
        echo "Удален файл log_$i.txt"
    fi
done

echo "Оставшиеся файлы"
ls logs
