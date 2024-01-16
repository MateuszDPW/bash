#!/bin/bash

AGE=25
echo $AGE

#readonly AGE
AGE=35
echo $AGE

#usuwanie zmiennych
#unset AGE
#echo "empty": AGE


#funkcja
setAGE() {
	echo "Mam lat: $AGE"
}
setAGE

echo "Tu tez mam: $AGE"

#zmienna lokalna
setnewAGE() {
	local AGE=25
	echo "Mam lat $AGE"
}
AGE=40
setnewAGE
echo "Czy tu mam tez tyle lat?: $AGE"


#tablice
tablica[1]=222
tablica[0]=1111

echo ${tablica[0]}

tab=(1 2 3)
tablica=("sss" "aaa" "zzz")
${tab[index]}

echo ${tab[2]}

#petla
for i in "${tab[@]}"
do
	echo "$i"
done

#ostatnia wartosc
echo "Ostatnia wartosc: ${tab[-1]}"

#usuwanie warotsci z tablicy

echo ${tablica[*]}
unset tablica[-1]
echo ${tablica[*]}

tablica[3]="xxx"

echo ${tablica[*]}

echo ${!tablica[*]}

#lista kluczy

echo ${tablica[!]}

for i in "${!tablica[@]}"
do
	echo "$i" "${tablica[$i]}"
done

#utworzenie tablicy indeksacyjnej
delcare -a tablica
tablica[1]="SsS"


#utworzenie tablicy asocjacyjnej
declare -A rok
rok["jeden"]="pierwszy"
rok["dwa"]="drugi"
echo ${rok[*]}


text1="aaa"
text2="bbb"

echo "$text1 $text2"
echo $text1 $text2

$text1 = "${text1} ccc"
echo $text1

text1+="fff"
echo $text1

if echo "$text1" | grep -q "ccc"; then
echo "ccc wystepuje w stringu"
fi

katalog=kuba

if [ -d "$katalog" ]; then
    echo "Katalog istnieje"
else
    echo "Katalog nie istnieje"
    mkdir "$katalog"
fi

[ -d "$katalog" ] && echo "Katalog istnieje" || echo "Katalog nie istnieje"

#czy plik istnieje -e

x=10
y=20

if (( x==y )); then
    echo "te wartosci sa rowne"
else
    echo "te wartosci nie sa rowne"
fi

if [ "$x" -eq "$y" ]; then
    echo "wartosci sa rowne"
else
    echo "te wartosci nie sa rowne"
fi

