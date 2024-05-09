#!/bin/bash
declare -a arreglos

for i in {1..5}; do
    echo "Ingrese el nombre $i"
    read nombre
    arreglos+="($nombre)"
done
for i in "${arreglos[@]}"; do
    echo "${arreglos[i]}"
    #echo "$i"
done

