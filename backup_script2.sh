# Comprovar que es proporcionen tres paràmetres
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directori_origen> <directori_desti> <tipus_compressio>"
    exit 1
fi
directori_origen=$1
directori_desti=$2
tipus_compressio=$3
# Comprovar si el directori d'origen existeix
if [ ! -d "$directori_origen" ]; then
    echo "Error: El directori d'origen no existeix."
    exit 1
fi
# Comprovar si el directori de destí existeix, si no, intentar crear-lo
if [ ! -d "$directori_desti" ]; then
    mkdir -p "$directori_desti"
    if [ $? -ne 0 ]; then
        echo "Error: No es pot crear el directori de destí."
        exit 1
    fi
fi
# Verificar el tipus de compressió
if [ "$tipus_compressio" != "gzip" ] && [ "$tipus_compressio" != "bz2" ]; then
    echo "Error: El tipus de compressió només pot ser 'gzip' o 'bz2'."
    exit 1
fi
# Obtindre la data en format MMDD (mes dia)
data_actual=$(date +"%m%d")
# Comprovar si ja existeix un fitxer amb el mateix nom
backup_nom="backup_$(basename "$directori_origen")_$data_actual"
if [ -e "$directori_desti/$backup_nom.tar.$tipus_compressio" ]; then
    echo "Error: Ja existeix un fitxer amb el mateix nom."
    exit 2
fi
# Crear la còpia de seguretat comprimida amb tar
if [ "$tipus_compressio" == "gzip" ]; then
    tar -czf "$directori_desti/$backup_nom.tar.gz" -C "$directori_origen" .
elif [ "$tipus_compressio" == "bz2" ]; then
    tar -cjf "$directori_desti/$backup_nom.tar.bz2" -C "$directori_origen" .
fi
echo "Còpia de seguretat creada amb èxit: $directori_desti/$backup_nom.tar.$tipus_compressio"
