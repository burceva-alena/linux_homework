#!/bin/bash

read -p "Введи число - получишь звездочки: " number
for ((i = number; i > 0; i--)); do
    stars=""
    for ((j = 1; j <= i; j++)); do
        stars="$stars*"
    done
    echo "$stars"
done
