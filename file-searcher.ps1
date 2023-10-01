# Fonction pour rechercher les fichiers par extension
function Get-FilesByExtension {
    param(
        [string]$folderPath,
        [string]$fileExtension,
        [switch]$saveToFile
    )

    $files = Get-ChildItem -Path $folderPath -Recurse -File | Where-Object { $_.Extension -eq $fileExtension }

    if ($files.Count -gt 0) {
        if ($saveToFile) {
            $outputFile = "FilesWithExtension_$fileExtension.txt"
            $files | Select-Object FullName | Out-File -FilePath $outputFile
            Write-Host "Résultats enregistrés dans $outputFile"
        } else {
            $files | Select-Object FullName
        }
    } else {
        Write-Host "Aucun fichier avec l'extension $fileExtension trouvé dans $folderPath."
    }
}

# Demander à l'utilisateur de fournir le répertoire et l'extension
$folderPath = Read-Host "Entrez le chemin du répertoire à rechercher"
$fileExtension = Read-Host "Entrez l'extension de fichier à rechercher (par exemple : .txt)"

# Appeler la fonction de recherche des fichiers par extension
Get-FilesByExtension -folderPath $folderPath -fileExtension $fileExtension -saveToFile

