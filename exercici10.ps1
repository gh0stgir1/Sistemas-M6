# Ruta del fitxer CSV
$rutaFitxer = "C:\Users\Administrador\Desktop\usuaris.csv"

# Verificar si el fitxer CSV existeix
if (-not (Test-Path $rutaFitxer -PathType Leaf)) {
    Write-Host "Error: El fitxer CSV '$rutaFitxer' no existeix."
    exit 1
}

# Llegir el fitxer CSV i processar cada línia
Get-Content $rutaFitxer | ForEach-Object {
    # Dividir la línia en camps utilitzant la coma com a delimitador
    $usuari, $unitatOrganitzativa, $email = $_ -split ", "

    # Construir el missatge de sortida
    $missatge = "Usuari $usuari que pertany a la UO $unitatOrganitzativa i correu electrònic $email"

    # Mostrar el missatge per pantalla
    Write-Host $missatge

    # Escriure el missatge en el fitxer usuaris.txt
    Add-Content -Path "usuaris.txt" -Value $missatge
}
