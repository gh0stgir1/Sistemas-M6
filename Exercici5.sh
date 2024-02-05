#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Ús: $0 <nom_del_fitxer>"
    exit 1
fi

nom_del_fitxer=$1

if [ -f "$nom_del_fitxer" ]; then
    echo "$nom_del_fitxer és un fitxer regular."
else
    echo "$nom_del_fitxer no és un fitxer regular."
fi
