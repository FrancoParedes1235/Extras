#!/bin/bash
echo "Ingrese el número de alumnos del salón:"
read num_alumnos

declare -a notas

for (( i=1; i<=$num_alumnos; i++ ))
do
    echo "Ingrese la nota del alumno $i:"
    read nota
    notas+=($nota)
done

suma=0
for nota in "${notas[@]}"
do
    suma=$((suma + nota))
done
promedio=$(echo "scale=2; $suma / $num_alumnos" | bc)
echo "El promedio del salón es: $promedio"
