#!/bin/bash

sed 's/[[:punct:]]//g' text.txt | tr 'A-Z' 'a-z' > new_text.txt

top_words=$(tr ' ' '\n' < new_text.txt | grep -v '^$' | sort | uniq -c | sort -nr | head -n 5)

echo "ТОП-5 слов:"
echo "$top_words"

echo "Отправка запросов в API"
for line in $(echo "$top_words" | awk '{print $2}'); do
    echo "Слово: $line"
    curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/$line" | head -c 200
    echo ""
done

