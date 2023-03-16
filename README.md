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

## Installation des Applications
Pour installer tous les packages Chocolatey listés dans le fichier chocolatey.config avec une seule commande, suivez ces étapes :

1. Assurez-vous d'avoir cloné le dépôt Dotfiles et que le fichier chocolatey.config se trouve dans le répertoire .dotfiles.
2. Ouvrez PowerShell en tant qu'administrateur.
3. Accédez au répertoire .dotfiles en exécutant la commande suivante :
```powershell
cd $HOME/.dotfiles
```
4. Exécutez la commande suivante pour installer tous les packages listés dans le fichier chocolatey.config 
```powershell
choco install chocolatey.config -y
```
## Bar de tâches
Si vous souhaitez personnaliser les icônes qui sont affichées ou cachées dans la barre des tâches, suivez ces étapes :

1. Faites un clic droit sur un espace vide de la barre des tâches, puis sélectionnez "Paramètres de la barre des tâches"
2. Faites défiler vers le bas jusqu'à la section "Sélectionner les icônes à afficher dans la barre des tâches" ou "Zone de notification".
3. Ici, vous verrez une liste d'icônes avec des boutons bascules. Activez ou désactivez les icônes que vous souhaitez afficher ou cacher dans la barre des tâches.
4. Une fois que vous avez effectué vos modifications, fermez les paramètres, et les icônes de la barre des tâches seront mises à jour en conséquence.
1. Retire cortana, la bar de recherche, l'affichage Ink, Applications active 

## Conclusion
J'espère que vous trouverez mes dotfiles utiles dans votre propre travail de développement. Si vous avez des commentaires ou des suggestions, n'hésitez pas à me contacter
