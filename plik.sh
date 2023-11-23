#!/bin/bash

# if [ "$1" == "plik" ]; then
#     touch "$2"
#     echo "Utworz plik $2"
# elif [ "$1" == "katalog" ]; then
#     mkdir "$2"      #"${2:-"plik.txt"}"
#     echo "Utworz katalog $2."
# else
#     echo "Nie znana akcja."
# fi


# $1 - pierwsza zmienna
# $# - ilosc zmiennych
# $@ - zbior zmiennych (argumentow)

# for arg in "$@"; do
#     echo "Argument: $arg"
# done

for (( i=1; i<=$#; i++ )); do
    echo "Argument $i: $i"
done

