#!/bin/bash

# --- FLOOR 1 ---
mkdir -p house/floor1/kitchen/fridge
mkdir -p house/floor1/living_room
mkdir -p house/floor1/bathroom
mkdir -p house/floor1/hallway

echo "Milk" > house/floor1/kitchen/fridge/milk.txt
echo "Eggs" > house/floor1/kitchen/fridge/eggs.txt
echo "Cheese" > house/floor1/kitchen/fridge/cheese.txt
echo "Vegetables" > house/floor1/kitchen/fridge/vegetables.txt
echo "Meat"  > house/floor1/kitchen/fridge/meat.txt

echo "Sofa"  > house/floor1/living_room/sofa.txt
echo "TV" > house/floor1/living_room/tv.txt
echo "Shower" > house/floor1/bathroom/shower.txt
echo "Mirrorr" > house/floor1/hallway/mirror.txt

# --- FLOOR 2 ---
mkdir -p house/floor2/bedroom
mkdir -p house/floor2/storageroom
mkdir -p house/floor2/office

echo "Bed" > house/floor2/bedroom/bed.txt
echo "Wardrobe" > house/floor2/bedroom/wardrobe.txt
echo "Vacuumcleaner" > house/floor2/storageroom/vacuumcleaner.txt
echo "Bicycle"        > house/floor2/storageroom/bicycle.txt
echo "Desk"        > house/floor2/office/desk.txt
echo "Computer"    > house/floor2/office/computer.txt

echo ""
echo "House built! Structure:"
find house | sort

echo ""
echo "Fridge contents:"
ls -1 house/floor1/kitchen/fridge

echo ""
echo "What's inside each product:"
cat house/floor1/kitchen/fridge/*.txt
