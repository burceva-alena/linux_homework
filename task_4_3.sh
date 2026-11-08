#!/bin/bash

IFS=$'\n'

disks=$(df -h | awk 'NR>1 {print $1, $5}' | sed 's/%//g; s/dev/device/g')

for line in $disks; do
    echo "$line" | awk '$2 > 80 {print "ВНИМАНИЕ: " $1 " заполнен на " $2 "%"}'
done

