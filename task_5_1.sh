#!/bin/bash

mkdir -p terminal_task/results

awk -F '\t' '$3 == "gene"' data/gencode.v41.basic.annotation.gff3 | grep "gene_type=unprocessed_pseudogene" | awk -F '\t' '{sub(".*gene_name=", "", $9); sub(";.*", "", $9); print $1 "\t" $4 "\t" $5 "\t" $7 "\t" $9}' > terminal_task/results/step1.tsv

> terminal_task/results/result.tsv

while IFS=$'\t' read -r chr start end strand name; do
    if [ "$strand" = "+" ]; then
        new_end=$((start + 1))
        echo -e "$chr\t$start\t$new_end\t$strand\t$name" >> terminal_task/results/result.tsv
    else
        new_start=$end
        new_end=$((end + 1))
        echo -e "$chr\t$new_start\t$new_end\t$strand\t$name" >> terminal_task/results/result.tsv
    fi
done < terminal_task/results/step1.tsv
