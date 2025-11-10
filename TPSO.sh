#!/bin/bash


# Definición de colores
ROJO='\e[31m'
VERDE='\e[32m'
AMARILLO='\e[33m'
AZUL='\e[34m'
MAGENTA='\e[35m'
CIAN='\e[36m'
RESET='\e[0m'

#Menu opciones
while true; do
    echo -e "Elija una opcion${RESET}"
    echo "1.Generar un informe con el uso actual de la CPU, memoria y disco, y guardarlo en un archivo log."
    echo "2.Eliminar archivos temporales, caché del sistema y de navegadores para liberar espacio en disco."
    echo "3.Verificar e instalar actualizaciones del sistema de forma automática, registrando los cambios."
    echo -e "${ROJO}4.Salir.${RESET}"
    read opcion

    case $opcion in
        1) generarInforme;;
        2) eliminarTemporales;;
        3) actualizaciones;;
        4) echo "Saliendo..."; sleep 1; clear; exit 0;;
        *) clear; echo -e "${ROJO}Opcion incorrecta!, vuelva a ingresar otra opcion${RESET}";;
    esac
done 
