#Helena - 7/2/24
#!/bin/bash
if grep -q "^messi:" /etc/passwd; then
    echo "L'usuari 'messi' existeix al sistema."
else
    echo "L'usuari 'messi' no existeix al sistema."
fi



