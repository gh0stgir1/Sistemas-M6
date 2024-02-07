!/bin/bash

# Demanar la nota a l'usuari
echo "Introdueix la nota (un nombre enter entre 0 i 10): "
read nota

# Comprovar si la nota és vàlida (entre 0 i 10)
if [ $nota -ge 0 ] && [ $nota -le 10 ]; then
    # Utilitzar estructura case per assignar la qualificació
    case $nota in
        0|1|2)
            qualificacio="D"
            ;;
        3|4)
            qualificacio="C-"
            ;;
        5|6)
            qualificacio="C+"
            ;;
        7|8)
            qualificacio="B"
            ;;
        9|10)
            qualificacio="A"
            ;;
    esac

    # Mostrar la qualificació corresponent
    echo "La nota $nota correspon a una qualificació de $qualificacio."
else
    # Mostrar un missatge d'error si la nota no és vàlida
    echo "Error: La nota ha de ser un nombre enter entre 0 i 10."
fi


