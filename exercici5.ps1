param(
    [string]$ruta  # Parámetro que recibe la ruta a verificar
)

# Verificar si se proporcionó un argumento
if ([string]::IsNullOrEmpty($ruta)) {
    Write-Host "Error: Se espera un parámetro que sea una ruta a verificar."
}
else {
    # Verificar si la ruta existe
    if (Test-Path $ruta) {
        # Verificar si la ruta es un directorio
        if (Test-Path -Path $ruta -PathType Container) {
            Write-Host "El contenido del directorio $ruta es:"

            # Listar el contenido del directorio
            Get-ChildItem -Path $ruta | ForEach-Object {
                Write-Host $_.Name
            }
        }
        else {
            Write-Host "El argumento proporcionado no es un directorio."
        }
    }
    else {
        Write-Host "La ruta '$ruta' no existe."
    }
}
