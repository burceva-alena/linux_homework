#!/bin/bash

for host in google.com cat.ru github.com; do
    echo "Проверяем $host"
    
    ping -c 1 "$host" > /dev/null 2>&1
    
    if [ $? -eq 0 ]; then
        echo "$host - доступен"
    else
        echo "$host - НЕ доступен"
    fi
    echo ""
done
