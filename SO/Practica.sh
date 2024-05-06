# ! /bin/bash
# Programa que permite manejar las utilidades de Postres
opcion=0
while :
do
    # Limpiar la pantalla
    clear
    # Desplegar el menú de opciones
    echo "_________________________________________"
    echo " MENÚ PRINCIPAL "
    echo "_________________________________________"
    echo "1. Mostrar procesos actuales"
    echo "2. Comprobar el espacio en disco"
    echo "3. Ver la memoria RAM disponible"
    echo "4. Ver informacion de Red"
    echo "5. Ver Variables de entorno Configuradas"
    echo "6. Mostrar la interfaz de red"
    echo "7. Ver el historial de comandos ejecutados anteriormente"
    echo "8. Salir"
    # Leer los datos del usuario - capturar información
    read -p "Ingrese una opción [1-8]:" opcion
    # Validar la opción ingresada
    case $opcion in
        1)
            ps aux
            ;;
        2)
            df -h
            ;;
        3)
            free -m
            ;;
        4)
            ip addr show
            ;;
        5)
            printenv
            ;;
        6)
            ip link show
            ;;
        7)
            history
            ;;
        8)
            echo "Salir del Programa"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, ingrese una opción válida [1-8]."
            sleep 2
            ;;
    esac
done
