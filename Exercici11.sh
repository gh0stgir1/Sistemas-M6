#Helena - 7/2/24
#!/bin/bash

# Mostrar els usuaris que poden iniciar sessió
echo "Usuaris que poden iniciar sessió:"
echo "---------------------------------"
cut -d: -f1 /etc/passwd

# Demanar a l'usuari que introdueixi un usuari
read -p "Introdueix un usuari del llistat per provar l'accés al sistema: " usua>

# Comprovar si l'usuari existeix
if id "$usuari" &>/dev/null; then
    echo "Accés permès. L'usuari $usuari pot iniciar sessió."
else
    echo "L'usuari $usuari no existeix."
fi
