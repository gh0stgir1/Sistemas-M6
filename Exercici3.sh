#!/bin/bash

# Comprobar que se proporcionan tres parámetros
if [ "$#" -ne 3 ]; then
    echo "Numero incorrecte de paràmetres. Siusplau, proporciona tres paràmetres"
    exit 1
fi

# Asignar els parametres a variables
parametro1=$1
parametro2=$2
parametro3=$3

# Mostrar la linea de sortida
echo "Nom de l’script: ./exercici3.sh"
echo "Valor del primer paràmetre de l’script: $parametro1"
echo "Valor del segon paràmetre de l’script: $parametro2"
echo "Valor del tercer paràmetre de l’script: $parametro3"
