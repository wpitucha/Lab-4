#!/bin/bash

if [ "$1" == "--date" ]; then
    echo "Dzisiejsza data to: $(date)"
elif [ "$1" == "--logs" ]; then
    if [ -n "$2" ] && [ "$2" -eq "$2" ] 2>/dev/null; then
        num_files=$2
    else
        num_files=100
    fi
    for i in $(seq 1 $num_files); do
        filename="log${i}.txt"
        echo -e "Nazwa pliku: $filename\nNazwa skryptu: $0\nData: $(date)" > $filename
    done
else
    echo "Użycie: skrypt.sh [--date | --logs [liczba]]"
fi
