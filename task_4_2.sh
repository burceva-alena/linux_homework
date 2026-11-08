 #!/bin/bash

echo "Общая стоимость по категориям"
awk -F ',' 'NR>1 {print $3, $4 * $5}' products.csv | sort -k2 -nr

echo "Удаление товаров с нулевым стоком"
sed '/,0$/d' products.csv > available_products.csv

echo "Товары дороже 100"
while read line; do
    echo "$line" | awk -F ',' '$4 > 100 {print $2}'
done < available_products.csv
