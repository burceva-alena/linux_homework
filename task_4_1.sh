#!/bin/bash

awk '{print $1, $9}' access.log > status_codes.txt

sed 's/404/CLIENT_ERROR/' access.log > errors.log

unique_ips=$(awk '{print $1}' status_codes.txt | sort | uniq)

for ip in $unique_ips; do
    count=$(grep -c "$ip" status_codes.txt)
    echo "IP $ip сделал $count запросов"
done
