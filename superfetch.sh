#!/bin/bash

echo "Loops through subfolders and does git fetch in each"

read -n 1 -s -r -p "Press any key to continue"

echo ""

for d in */ ; do
    echo "Working with $d..."
    cd ./$d
    git fetch --all --prune || true
    cd ..
done
