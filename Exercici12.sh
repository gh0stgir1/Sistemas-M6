#!/bin/bash

# Comprobar que se proporciona un nombre de archivo
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <fitxer_csv>"
    exit 1
fi

fitxer_csv=$1
usuaris_txt="usuaris.txt"

# Comprobar si el archivo CSV existe
if [ ! -f "$fitxer_csv" ]; then
    echo "Error: El fitxer CSV no existeix."
    exit 1
fi

# Procesar cada línea del archivo CSV
while IFS=',' read -r usuari uo correu; do
    # Mostrar la información por pantalla
    echo "Usuari $usuari que pertany a la UO $uo i correu electrònic $correu"

    # Escribir la información en el archivo usuaris.txt
    echo "Usuari $usuari que pertany a la UO $uo i correu electrònic $correu" >> "$usuaris_txt"
done < "$fitxer_csv"

echo "Informació dels usuaris ha estat guardada a $usuaris_txt"
