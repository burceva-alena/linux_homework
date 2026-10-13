#!/bin/bash

file="$1"
first_symbol=$(head -c 1 "$file")

if [ "$first_symbol" = ">" ]; then
	echo "Это FASTA"
else
	echo "Это не FASTA"
fi

