#!/bin/bash
show_help() {
    echo "Użycie: skrypt.sh [OPCJA]"
    echo "Opcje:"
    echo "  --date            Wyświetla dzisiejszą datę."
    echo "  --logs [liczba]   Tworzy określoną liczbę plików logx.txt (domyślnie 100)."
    echo "  --help            Wyświetla ten komunikat pomocy."
}
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
elif [ "$1" == "--help" ]; then
    show_help
else
    echo "Nieznana opcja: $1"
    show_help
fi
