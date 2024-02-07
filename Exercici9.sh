#Helena Herrera - 7/2/24
#!/bin/bash

# Obtenir la llista de directoris a /home
llista_directoris=$(ls -d /home/*/)

# Iterar pels directoris
for directori in $llista_directoris; do
    # Només mostrar els noms dels directoris, sense la ruta completa
    nom_directori=$(basename "$directori")
    
    # Calcular l'ocupació del disc utilitzant 'du'
    ocupacio=$(du -sh "$directori" | cut -f1)
    
    # Mostrar l'ocupació del disc del directori
    echo "Ocupació del directori /home/$nom_directori: $ocupacio"
done
