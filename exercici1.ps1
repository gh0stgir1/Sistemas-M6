# Obtiene todas las variables de entorno definidas en el sistema
$variablesEntorno = [System.Environment]::GetEnvironmentVariables([System.EnvironmentVariableTarget]::Machine)

# Muestra las variables de entorno
foreach ($variable in $variablesEntorno.GetEnumerator()) {
    Write-Host "$($variable.Key) = $($variable.Value)"
}
