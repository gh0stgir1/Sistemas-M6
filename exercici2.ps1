# Obtener la ruta del escritorio del usuario actual
$rutaEscritori = [System.Environment]::GetFolderPath('Desktop')

# Crear el directorio "scripts" en el escritorio
$nouDirectori = Join-Path -Path $rutaEscritori -ChildPath "scripts"
New-Item  -Path "$\Users\Administrador\Documents" -ItemType Directory

# Agregar el directorio "scripts" al PATH del sistema
$Env:PATH += ";$nouDirectori"

# Mostrar el nuevo valor de PATH
Write-Host "El nuevo valor de PATH es: $Env:PATH"

