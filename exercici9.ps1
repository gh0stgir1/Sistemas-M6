param (
    [string[]]$directorios
)

# Verificar si se proporcionaron directorios como argumentos
if ($directorios.Count -eq 0) {
    Write-Host "Error: No se proporcionaron directorios como argumento."
    exit 1
}

# Iterar sobre cada directorio proporcionado como argumento
foreach ($directorio in $directorios) {
    # Verificar si el directorio existe y es un directorio
    if (Test-Path $directorio -PathType Container) {
        # Calcular la ocupación del directorio
        $ocupacion = Get-ChildItem $directorio -Recurse | Measure-Object -Property Length -Sum
        $megabytesOcupados = $ocupacion.Sum / 1MB
        Write-Host "El directorio '$directorio' ocupa aproximadamente $megabytesOcupados MB en disco."
    } else {
        Write-Host "Error: El directorio '$directorio' no existe o no es válido."
    }
}
