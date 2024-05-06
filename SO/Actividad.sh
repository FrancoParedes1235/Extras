#!/bin/bash
# Programa que permite manejar las utilidades de Postgres
opcion=0
while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "_________________________________________"
    echo "PGUTIL - Programa de Utilidades "
    echo " MENÚ PRINCIPAL "
    echo "_________________________________________"
    echo "1. Instalación"
    echo "2. Desinstalación"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"
    # Leer los datos del usuario - capturar información
    read -p "Ingrese una opción [1-5]: " opcion
    # Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalando....."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalando...."
            sleep 3
            ;;
        3)
            echo -e "\nHaciendo un backup..."
            sleep 3
            ;;
        4)
            echo -e "\nRestaurando..."
            sleep 3
            ;;
        5)
            echo "Salir del Programa"
            exit 0
            ;;
        *)
            echo "Opción incorrecta, vuelva a intentarlo"
            ;;
    esac
done
