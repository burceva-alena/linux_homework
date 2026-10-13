#!/bin/bash

file="$1"
organisms="$2"

if [ ! -f "$file" ]; then 
	echo "Error: file "$file" not found"
	exit 1
fi

if [ "$organisms" != "human" ] && [ "$organisms" != "mouse" ] && [ "$organisms" != "rat" ] && [ "$organisms" != "fly" ]; then
	echo "Error: unsupported organism '$organism'"
	echo "Supported: human, mouse, rat, fly"
	exit 1
fi

echo "Обработка $file"


