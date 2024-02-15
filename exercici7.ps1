# Solicitar al usuario el valor de la nota
$nota = Read-Host "Introdueix el valor de la nota (un nombre enter)"

# Verificar si la entrada es un número entero
if ($nota -as [int]) {
    # Determinar la calificación correspondiente utilizando la estructura switch
    switch ($nota) {
        {$_ -in 0..2} { Write-Output "La nota és una D" }
        {$_ -in 3..4} { Write-Output "La nota és una C-" }
        {$_ -in 5..6} { Write-Output "La nota és una C+" }
        {$_ -in 7..8} { Write-Output "La nota és una B" }
        {$_ -in 9, 10} { Write-Output "La nota és una A" }
        default { Write-Output "La nota introduïda no està dins de l'escala vàlida (0-10)" }
    }
} else {
    Write-Output "El valor introduït no és un nombre enter vàlid."
}
