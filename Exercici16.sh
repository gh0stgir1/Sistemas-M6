#Helena - 7/2/24
#!/bin/bash

# Definir el servidor LDAP i la base de dades
LDAP_SERVER="ldap://example.com"
BASE_DN="dc=example,dc=com"

# Realitzar una cerca amb ldapsearch per obtenir els DN de tots els usuaris
ldapsearch -x -H "$LDAP_SERVER" -b "$BASE_DN" "(objectClass=posixAccount)" dn >>

# Comprovar si la cerca va tenir èxit
if [ $? -eq 0 ]; then
    echo "S'han trobat i guardat els DN dels usuaris amb èxit en el fitxer usua>
else
    echo "S'ha produït un error en la cerca dels DN dels usuaris."
fi

