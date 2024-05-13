#!/bin/bash
declare -a arreglos

for i in {1..5}; do
    echo "Ingrese el nombre $i"
    read nombre
    arreglos+="($nombre)"
done

echo "${arreglos[@]}"

for i in "${arreglos[@]}"; do
    echo "${arreglos[i]}"
    #echo "$i"
done

echo "El número de elementosdel arreglo es: (Obtén el número de elementos del arreglo): ${#arreglos[@]}"

echo "Ingreso el numero de arreglo a borrar"
read borrar
unset arreglos[$borrar]

echo "${arreglo[@]}"
echo "${#arreglo[@]}"-
