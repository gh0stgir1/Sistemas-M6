# Solicitar al usuario el valor de la nota
$nota = Read-Host "Introduce el valor de la nota (un número entero):"

# Convertir la nota a un número entero si es posible
if ($nota -as [int]) {
    $nota = [int]$nota

    # Determinar la calificación correspondiente
    if ($nota -ge 0 -and $nota -le 2) {
        Write-Host "La nota es una D"
    }
    elseif ($nota -ge 3 -and $nota -le 4) {
        Write-Host "La nota es una C-"
    }
    elseif ($nota -ge 5 -and $nota -le 6) {
        Write-Host "La nota es una C+"
    }
    elseif ($nota -ge 7 -and $nota -le 8) {
        Write-Host "La nota es una B"
    }
    elseif ($nota -ge 9 -and $nota -le 10) {
        Write-Host "La nota es una A"
    }
    else {
        Write-Host "La nota introducida no está en el rango válido (0-10)"
    }
}
else {
    Write-Host "El valor introducido no es un número entero válido."
}
