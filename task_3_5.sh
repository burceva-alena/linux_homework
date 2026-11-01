#!/bin/bash


read -p "Введи порог оценки: " porog

while read name grade subject; do
    if [ "$grade" -gt "$porog" ]; then
        echo "$name - $subject: $grade"
    fi
done < "$1"


