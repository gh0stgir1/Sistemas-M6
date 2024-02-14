#!/bin/bash

# Solicitar al usuario el valor de la nota
read -p "Introdueix el valor de la nota (un nombre enter): " nota

# Verificar si la entrada es un número entero
if [[ $nota =~ ^[0-9]+$ ]]; then
    # Determinar la calificación correspondiente utilizando expresiones aritméticas
    if (( nota >= 0 && nota <= 2 )); then
        echo "La nota és una D"
    elif (( nota >= 3 && nota <= 4 )); then
        echo "La nota és una C-"
    elif (( nota >= 5 && nota <= 6 )); then
        echo "La nota és una C+"
    elif (( nota >= 7 && nota <= 8 )); then
        echo "La nota és una B"
    elif (( nota == 9 || nota == 10 )); then
        echo "La nota és una A"
    else
        echo "La nota introduïda no està dins de l'escala vàlida (0-10)"
    fi
else
    echo "El valor introduït no és un nombre enter vàlid."
fi
