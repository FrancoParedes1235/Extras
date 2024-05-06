#!/bin/bash
anio1='^(00|99)[0-9]{2}$'
read -p 'Ingrese su fecha de nacimiento (formato yyyy): ' anio


mes1='^(0[1-9]|1[0-2])$'
read -p 'Ingrese su fecha de nacimiento (formato MM): ' mes


if (( ($anio % 4 == 0 && $anio % 100 != 0) || $anio % 400 == 0 )); then
    case $mes in
    1|3|5|7|8|10|12)
        echo "Tiene 31 dias."
        ;;
    2)
        echo "Tiene 29 dias."
        ;;
    4|6|9|11)
        echo "Tiene 30 dias."
        ;;
    *)
        # código a ejecutar si no coincide con ningún patrón anterior
        ;;
    esac
else
    case $mes in
    1|3|5|7|8|10|12)
        echo "Tiene 31 dias."
        ;;
    2)
        echo "Tine 28 dias."
        ;;
    4|6|9|11)
        echo "Tiene 30 dias."
        ;;
    *)
        # código a ejecutar si no coincide con ningún patrón anterior
        ;;
    esac
fi
