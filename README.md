# File Searcher

<p>
    <img src="https://img.shields.io/badge/Powershell-2CA5E0?style=for-the-badge&logo=powershell&logoColor=white" alt="version">
</p>

Le script "File Searcher" est un script PowerShell simple qui vous permet de rechercher des fichiers dans un répertoire spécifique en fonction de leur extension. Vous pouvez également choisir de sauvegarder les résultats dans un fichier texte.

## Développeur:
* [**Sorway**](https://github.com/Sorway)

## Utilisation

1. Exécution du script:
Pour exécuter le script, ouvrez PowerShell et accédez au répertoire où le script est enregistré. Ensuite, tapez la commande suivante :

```powershell
.\FileSearcher.ps1
```

2. Suivez les instructions :
Vous serez invité à entrer le chemin du répertoire que vous souhaitez explorer.
Ensuite, vous devrez entrer l'extension de fichier que vous recherchez (par exemple : .txt).

## Avertissement

Assurez-vous que l'exécution de scripts PowerShell est autorisée sur votre système. Vous pouvez vérifier cela en exécutant la commande suivante dans PowerShell:

```powershell
Get-ExecutionPolicy
```

Si la politique d'exécution est restreinte, vous devrez peut-être la modifier en exécutant la commande suivante (en tant qu'administrateur):

```powershell
Set-ExecutionPolicy RemoteSigned
```

## Licence
Ce script est distribué sous la licence MIT. Consultez le fichier LICENSE pour plus d'informations.
