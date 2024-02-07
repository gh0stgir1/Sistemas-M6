#!/bin/bash

# Demanar la nota a l'usuari
echo "Introdueix la nota (un nombre enter entre 0 i 10): "
read nota

# Comprovar si la nota és vàlida (entre 0 i 10)
if [ $nota -ge 0 ] && [ $nota -le 10 ]; then
    # Assignar la qualificació segons la nota
    if [ $nota -le 2 ]; then
        qualificacio="D"
    elif [ $nota -le 4 ]; then
        qualificacio="C-"
    elif [ $nota -le 6 ]; then
        qualificacio="C+"
    elif [ $nota -le 8 ]; then
        qualificacio="B"
    else
        qualificacio="A"
    fi

    # Mostrar la qualificació corresponent
    echo "La nota $nota correspon a una qualificació de $qualificacio."
else
    # Mostrar un missatge d'error si la nota no és vàlida
    echo "Error: La nota ha de ser un nombre enter entre 0 i 10."
fi


