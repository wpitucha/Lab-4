#!/bin/bash

if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
elif [ "$1" == "--logs" ]; then
    for i in {1..100}; do
        filename="log${i}.txt"
        echo -e "Nazwa pliku: $filename\nNazwa skryptu: $0\nData: $(date)" > $filename
    done
else
    echo "Użycie: skrypt.sh [--date | --logs]"
fi
