#!/bin/bash

# Comprobar que se proporcionan dos parámetros
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directori_origen> <directori_desti>"
    exit 1
fi

directori_origen=$1
directori_desti=$2

# Comprobar si el directorio de origen existe
if [ ! -d "$directori_origen" ]; then
    echo "Error: El directori d'origen no existeix."
    exit 1
fi

# Comprobar si el directorio de destino existe, si no, intentar crearlo
if [ ! -d "$directori_desti" ]; then
    mkdir -p "$directori_desti"
    if [ $? -ne 0 ]; then
        echo "Error: No es pot crear el directori de destí."
        exit 1
    fi
fi

# Obtener la fecha en formato YYYYMMDD
data_actual=$(date +"%Y%m%d")

# Comprobar si ya existe un archivo con el mismo nombre
backup_nom="backup_$(basename "$directori_origen")_$data_actual.tar.gz"
if [ -e "$directori_desti/$backup_nom" ]; then
    echo "Error: Ja existeix un fitxer amb el mateix nom."
    exit 2
fi

# Crear la copia de seguridad comprimida con tar
tar -czf "$directori_desti/$backup_nom" -C "$directori_origen" .

echo "Còpia de seguretat creada amb èxit: $directori_desti/$backup_nom"

