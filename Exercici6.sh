#!/bin/bash

# Verificar si s'ha proporcionat l'argument
if [ $# -ne 1 ]; then
    echo "Ús: $0 <directori>"
    exit 1
fi

# Comprovar si l'argument és un directori
if [ -d "$1" ]; then
    echo "El contingut del directori $1 és:"
    ls "$1"
else
    echo "$1 no és un directori."
fi
