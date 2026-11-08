#!/bin/bash

sed 's/[{}]//g; s/"//g; s/ //g; s/,/#/g; s/:/=/g' config.json > config.txt

tr '#' '\n' < config.txt > config_lines.txt

awk '{print "CONF_" $0}' config_lines.txt > final_config.txt

IFS=$'\n'
for line in $(cat final_config.txt); do
    export "$line"
    echo "Экспортирована переменная: $line"
done
