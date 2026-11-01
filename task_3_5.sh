#!/bin/bash

while read name grade subject; do
    if [ "$grade" -gt "$2" ]; then
        echo "$name - $subject: $grade"
    fi
done < "$1"


