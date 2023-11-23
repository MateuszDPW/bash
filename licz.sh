#!/bin/bash

#echo "Pierwszy argument: $1"

#suma=$(($1 + $2))

#echo "Suma: $suma"

echo "Liczba parametrów: $#"
if [ $# -ne 1 ]; then
    echo "Podaj dokładnie 2 parametry"
    exit 1
fi

if [ "$1" == "lista" ]; then
    ls -la
fi
