param(
    [string]$ruta = "C:\Users\Administrador\Documents"  # Parámetro que recibe la ruta a verificar
)

# Verificar si $ruta no está vacío
if ([string]::IsNullOrEmpty($ruta)) {
    Write-Host "La ruta no puede estar vacía."
}
else {
    # Verificar si la ruta existe
    if (Test-Path $ruta) {
        # Verificar si la ruta es un directorio
        if (Test-Path -Path $ruta -PathType Container) {
            Write-Host "La ruta '$ruta' es un directorio."
        }
        # Verificar si la ruta es un archivo regular
        elseif (Test-Path -Path $ruta -PathType Leaf) {
            Write-Host "La ruta '$ruta' es un archivo regular."
        }
        else {
            Write-Host "La ruta '$ruta' no es ni un directorio ni un archivo regular."
        }
    }
    else {
        Write-Host "La ruta '$ruta' no existe."
    }
}
