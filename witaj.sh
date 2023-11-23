#!/bin/bash
echo "Witaj świecie"

nazwa=Jan

echo "Witaj, $nazwa"

a=12
b=12


if [ $a == $b ]; then
    echo "Równe"
else
    echo "różne"
fi

for i in {1..5}; do
    echo "Number: $i"
done

i=1
while [ $i -le 5 ]; do
    echo "Licz: $i"
    ((i++))
done

powitanie() {
    echo "Witaj, $1"
}

powitanie $1


if [ -f "Jan.txt" ]; then
    echo "Plik istnieje"
fi


echo "Nazwa hosta: $(hostname)"
echo "Informacja o użytkowniku: $(whoami)"

for i in {1..5}; do
    mkdir "katalog_$i"
    echo "Number: $i"
done