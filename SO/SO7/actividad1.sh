#!/bin/bash
declare -a arreglos

for i in {1..5}; do
    echo "Ingrese el nombre $i"
    read nombre
    arreglos+="($nombre)"
done

echo "${arreglos[@]}"

for elem in "${arreglos[@]}"; do
    echo "$elem"
done

echo "El número de elementos del arreglo es: ${#arreglos[@]}"

echo "Ingrese el índice del elemento a borrar"
read borrar
unset arreglos[$borrar]

echo "${arreglos[@]}"
echo "El número de elementos del arreglo es: ${#arreglos[@]}"
