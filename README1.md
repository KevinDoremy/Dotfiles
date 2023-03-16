# .DotFiles
## Introduction
Bienvenue dans mon dépôt de dotfiles. Ces fichiers de configuration sont utilisés pour personnaliser mes outils de développement, tels que mon shell, mes éditeurs de texte et d'autres programmes que j'utilise régulièrement. Vous pouvez utiliser ces fichiers pour configurer vos propres outils de la même manière.

## Prérequis
* PowerShell (version 5.1 ou plus récente)
* Accès à Internet
## Installation
1. Ouvrez PowerShell en tant qu'administrateur.
1. Copiez et collez la commande suivante dans la fenêtre de PowerShell et appuyez sur Entrée :
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) ; SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" ; refreshenv ; choco install git -y; git clone https://github.com/KevinDoremy/Dotfiles.git $HOME/.dotfiles 
```
Cette commande effectue les étapes suivantes :

* Configure PowerShell pour autoriser l'exécution de scripts
* Télécharge et installe Chocolatey, un gestionnaire de paquets pour Windows
* Utilise Chocolatey pour installer Git
* Clone le dépôt Dotfiles depuis GitHub dans le répertoire ~/.dotfiles de votre utilisateur
## Utilisation
Une fois que vous avez installé les Dotfiles, vous pouvez les utiliser comme suit :

1. Ouvrez un terminal PowerShell.
2. Accédez au répertoire contenant les Dotfiles :
```powershell
cd ~/.dotfiles
```
3. Utilisez la commande appropriée pour lier les fichiers de configuration souhaités à leur emplacement dans votre système. Par exemple :
```powershell
make-link ~/.dotfiles/.gitconfig ~/.gitconfig
```
Le script d'installation vous guidera tout au long du processus d'installation. Il créera des liens symboliques pour tous les fichiers de configuration contenus dans le dépôt, en remplaçant tout fichier de configuration existant avec une sauvegarde.
C'est tout! Maintenant, tous vos outils de développement devraient être configurés avec mes dotfiles.

## Conclusion
J'espère que vous trouverez mes dotfiles utiles dans votre propre travail de développement. Si vous avez des commentaires ou des suggestions, n'hésitez pas à me contacter
