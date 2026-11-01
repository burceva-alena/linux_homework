#!/bin/bash

cat "$1" | tr -s ' ' '\n' | sort | uniq -c | sort -nr | head -n 10
