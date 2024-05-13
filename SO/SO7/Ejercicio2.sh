#!/bin/bash

echo "Ingrese el número de días a registrar:"
read num_dias

declare -a temperatura

for (( i=1; i<=$num_dias; i++ ))
do
    echo "Ingrese la temperatura del día $i:"
    read temp
    temperatura+=($temp)
done

suma=0
for temp in "${temperatura[@]}"
do
    suma=$((suma + temp))
done

promedio=$(echo "scale=2; $suma / $num_dias" | bc)

temp_minima=${temperatura[0]}
temp_maxima=${temperatura[0]}

for temp in "${temperatura[@]}"
do
    if (( temp < temp_minima ))
    then
        temp_minima=$temp
    fi

    if (( temp > temp_maxima ))
    then
        temp_maxima=$temp
    fi
done

echo "La temperatura mínima es: $temp_minima"
echo "La temperatura máxima es: $temp_maxima"
echo "La temperatura media es: $promedio"


