param (
    [string]$directoriOrigen = "C:\Users\Administrador\Documents",
    [string]$directoriDesti = "C:\Users\Administrador\Documents"
)

# Comprovar si el directori d'origen existeix
if (-not (Test-Path $directoriOrigen -PathType Container)) {
    Write-Host "Error: El directori d'origen '$directoriOrigen' no existeix."
    exit 2
}

# Obtindre el nom del directori d'origen
$nomDirectori = (Get-Item $directoriOrigen).Name

# Crear el nom de l'arxiu de còpia de seguretat
$data = Get-Date -Format "yyyyMMdd"
$nomArxiu = "backup_documents${data}.zip"

# Comprovar si ja existeix un arxiu amb el mateix nom en el directori de destí
if (Test-Path (Join-Path $directoriDesti $nomArxiu)) {
    Write-Host "Error: Ja existeix un arxiu de còpia de seguretat amb el mateix nom en el directori de destí."
    exit 3
}

# Crear la còpia de seguretat comprimint el contingut del directori d'origen
Write-Host "Creant còpia de seguretat..."
Compress-Archive -Path $directoriOrigen -DestinationPath (Join-Path $directoriDesti $nomArxiu)

Write-Host "Còpia de seguretat creada correctament a '$directoriDesti\$nomArxiu'."
