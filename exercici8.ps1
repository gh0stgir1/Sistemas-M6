# Obtener la lista de directorios en C:\Users
$directorios = Get-ChildItem -Path "C:\Users" -Directory

# Iterar sobre cada directorio y calcular su ocupación de disco
foreach ($directorio in $directorios) {
    # Calcular la ocupación del directorio
    $ocupacion = Get-ChildItem -Path "$($directorio.FullName)" -Recurse | Measure-Object -Property Length -Sum
    
    # Imprimir el nombre del directorio y su ocupación en megabytes
    Write-Host "Directorio: $($directorio.FullName)"
    Write-Host "Ocupación: $($ocupacion.Sum / 1MB) MB"
    Write-Host ""
}
