#Helena - 7/2/24
#!/bin/bash

# Comprova si s'ha proporcionat almenys un directori com a argument
if [ $# -eq 0 ]; then
    echo "Ús: $0 directori1 [directori2 directori3 ...]"
    exit 1
fi

# Itera pels directoris proporcionats com a arguments
for directori in "$@"; do
    # Comprova si el directori existeix
    if [ ! -d "$directori" ]; then
        echo "Error: El directori \"$directori\" no existeix o no és un directo>
        continue
    fi
    
    # Calcula l'ocupació del disc utilitzant 'du'
    ocupacio=$(du -sh "$directori" | cut -f1)
    
    # Mostra l'ocupació del disc del directori
    echo "Ocupació del directori $directori: $ocupacio"
done
