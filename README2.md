# .DotFiles

### Manuel steps

**Use Symlink**
First way
```powershell
make-link C:\Users\Kevin\.dotfiles\.gitconfig C:\Users\Kevin\.gitconfig
```
Second way
```powershell
New-Item -ItemType SymbolicLink -Path C:\Users\Kevin\Documents\WindowsPowerShell -Target C:\Users\Kevin\.dotfiles\WindowsPowerShell
```

**Chocolatey**
install chocolatey
```powershell
Set-ExecutionPolicy AllSigned
```
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Create a file with all the packages you want to install
```powershell
$packageXml = ''
choco list -lo -r | % { $_ -split '\|' | select -first 1 } | % { $packageXml += "`n`t<package id=""$_"" />" }
Set-Content "<?xml version=`"1.0`" encoding=`"utf-8`"?>`n<packages>$packageXml`n</packages>" -Path .\chochoAllPackages.config
```
Install all the packages
```powershell
choco install packages.config -y
```
**WinGet**
```powershell
winget export wingetAllPackage.json
```
```powershell
winget import wingetAllPackage.json
```
```powershell
Get-AppxPackage -AllUsers | Select Name, PackageFullName, InstallLocation | Format-Table -AutoSize
```
```powershell
Get-Package
```
If doesn't work 
```powershell
Import-Module posh-git
```
```powershell
Import-Module oh-my-posh
```
```powershell
Import-Module PSReadLine
```


TODO: Faire l'ajout de Z.lua
* [X] ~~* Faire l'ajout de oh-my-posh avec Chocolatey*~~ [2022-11-17]
TODO: Faire un Simlink des fichiers de 
TODO:configuration pour oh my posh

**Manage application with choco**
choco install discord
choco install popcorntime
choco install zoom
choco install screentogif

choco install utorrent
choco install Docker Desktop
choco install googlechrome
choco install office365business
choco install onedrive
choco install googledrive
choco install vscode
choco install wsl
choco install winrar

choco install google-calendar-chrome
choco install logitech-options
choco install miniconda3
* [X] ~~*choco install oh-my-posh*~~ [2022-11-17]

**Chocolatey v1.1.0**
7zip.commandline 16.02.0.20170209
7zip.portable 22.1
adb 33.0.3
git 2.37.3
git.install 2.37.3
google-drive-file-stream 56.0.11.2022
gradle 7.4.2
kubernetes-cli 1.25.4
maven 3.8.6
nodejs 18.9.0
nodejs-lts 16.14.0
obs-studio 28.0.1
pasteintofile 1.5.0
powertoys 0.62.1
scrcpy 1.24
stretchly 1.11.0
Sudo 1.1.2
virtualbox 6.1.38
vlc 3.0.17.4
vlc.install 3.0.17.4
vscode-insiders 1.72.0.20220916
vscode-insiders.install 1.72.0.20220916
zoomit 6.01
**46 packages installed.**

**Get-InstalledModule**
1.1.0      posh-git                            PSGallery            git
2.2.6      PSReadLine                          PSGallery            Great command line editing in the PowerShell console host
0.10.0     Terminal-Icons                      PSGallery            PowerShell module to add file icons to terminal based on file extension
1.4.7      PackageManagement                   PSGallery            PackageManagement (a.k.a. OneGet) is a new way to discover and install 



**🔹  winget list**
Nom                                    ID                                     Version             Disponible     Source
Visual Studio Community 2019           Microsoft.VisualStudio.2019.Community  16.11.13            16.11.21       winget
Smart Microphone Setting               4505Fortemedia.FMAPOControl_4pejv7q2g… 1.0.38.0
Trello                                 45273LiamForsyth.PawsforTrello_7pb5dd… 2.13.8.0
TasksBoard                             4d00adda40e5c6d620611f45b7633652       1.0
Bluetooth Audio Receiver               55746MarkSmirnov.BluetoothAudioReveic… 1.1.5.0
Amazon Alexa                           57540AMZNMobileLLC.AmazonAlexa_22t9g3… 3.25.1156.0
HP Smart                               AD2F1837.HPPrinterControl_v10z8vjag6k… 140.1.307.0
Centre de contrôle ThunderboltTM       AppUp.ThunderboltControlCenter_8j3eq9… 1.0.36.0
Ubuntu on Windows                      Canonical.Ubuntu                       2004.2022.1.0                      winget
Cisco AnyConnect Secure Mobility Clie… Cisco AnyConnect Secure Mobility Clie… 4.10.04065
Drawboard PDF                          DRAWBOARD.DRAWBOARDPDF_gqbn7fs4pywxm   6.27.2.0
Discord                                Discord.Discord                        1.0.9007                           winget
Docker Desktop                         Docker.DockerDesktop                   4.13.0              4.13.1         winget
Dolby Access                           DolbyLaboratories.DolbyAccess_rz1tebt… 3.15.667.0
Dolby Atmos Speaker System             DolbyLaboratories.DolbyAtmosSpeakerSy… 3.20800.804.0
Dolby Vision                           DolbyLaboratories.DolbyVisionHDR_rz1t… 2.1.5965.0
LogiOptionsPlusExcelAddin              E851B750DE4EBCD11654EC6A1890DA1BA8051… 1.26.5989.0
Cortana                                Microsoft.549981C3F5F10_8wekyb3d8bbwe  4.2204.13303.0
AV1 Video Extension                    Microsoft.AV1VideoExtension_8wekyb3d8… 1.1.52074.0
MSN Météo                              Microsoft.BingWeather_8wekyb3d8bbwe    4.53.43112.0
Installeur d'applications              Microsoft.DesktopAppInstaller_8wekyb3… 1.18.2691.0
Obtenir de l'aide                      Microsoft.GetHelp_8wekyb3d8bbwe        10.2208.2551.0
Astuces Microsoft                      Microsoft.Getstarted_8wekyb3d8bbwe     10.2207.2.0
HEIF Image Extensions                  Microsoft.HEIFImageExtension_8wekyb3d… 1.0.43012.0
Extensions de vidéo HEVC du fabricant… Microsoft.HEVCVideoExtension_8wekyb3d… 2.0.52911.0
Module d'expérience locale français (… Microsoft.LanguageExperiencePackfr-CA… 19041.41.129.0
Extension vidéo MPEG-2                 Microsoft.MPEG2VideoExtension_8wekyb3… 1.0.50901.0
Paint 3D                               Microsoft.MSPaint_8wekyb3d8bbwe        6.2203.1037.0
Visionneuse 3D                         Microsoft.Microsoft3DViewer_8wekyb3d8… 7.2107.7012.0
Microsoft Edge                         Microsoft.MicrosoftEdge.Stable_8wekyb… 107.0.1418.42
Microsoft Solitaire Collection         Microsoft.MicrosoftSolitaireCollectio… 4.14.9130.0
Pense-bête Microsoft                   Microsoft.MicrosoftStickyNotes_8wekyb… 4.5.7.0
Portail de réalité mixte               Microsoft.MixedReality.Portal_8wekyb3… 2000.21051.1282.0
OneNote for Windows 10                 Microsoft.Office.OneNote_8wekyb3d8bbwe 16001.14326.21146.0
Microsoft People                       Microsoft.People_8wekyb3d8bbwe         10.2105.4.0
PowerShell                             Microsoft.PowerShell                   7.3.0.0                            winget
Capture d'écran et croquis             Microsoft.ScreenSketch_8wekyb3d8bbwe   10.2008.2277.0
Skype                                  Microsoft.SkypeApp_kzf8qxf38zg5c       15.89.3403.0
Hôte de l'expérience du Store          Microsoft.StorePurchaseApp_8wekyb3d8b… 12207.44.6.0
Microsoft To Do                        Microsoft.Todos_8wekyb3d8bbwe          2.82.53111.0
VP9 Video Extensions                   Microsoft.VP9VideoExtensions_8wekyb3d… 1.0.52781.0
Microsoft Pay                          Microsoft.Wallet_8wekyb3d8bbwe         2.4.18324.0
Extensions de média web                Microsoft.WebMediaExtensions_8wekyb3d… 1.0.42192.0
Webp Image Extensions                  Microsoft.WebpImageExtension_8wekyb3d… 1.0.52351.0
Microsoft Whiteboard                   Microsoft.Whiteboard_8wekyb3d8bbwe     52.11010.438.0
Photos Microsoft                       Microsoft.Windows.Photos_8wekyb3d8bbwe 2022.30070.26007.0
Horloge Windows                        Microsoft.WindowsAlarms_8wekyb3d8bbwe  11.2209.11.0
Calculatrice Windows                   Microsoft.WindowsCalculator_8wekyb3d8… 10.2103.8.0
Caméra Windows                         Microsoft.WindowsCamera_8wekyb3d8bbwe  2021.105.10.0
Hub de rétroaction                     Microsoft.WindowsFeedbackHub_8wekyb3d… 1.2203.761.0
Cartes Windows                         Microsoft.WindowsMaps_8wekyb3d8bbwe    11.2208.6.0
Enregistreur vocal Windows             Microsoft.WindowsSoundRecorder_8wekyb… 10.2103.28.0
Microsoft Store                        Microsoft.WindowsStore_8wekyb3d8bbwe   22210.1401.6.0
Aperçu du Terminal Windows             Microsoft.WindowsTerminal.Preview      1.16.2641.0                        winget
Windows Package Manager Source (winge… Microsoft.Winget.Source_8wekyb3d8bbwe  2022.1115.535.28
Xbox TCUI                              Microsoft.Xbox.TCUI_8wekyb3d8bbwe      1.24.10001.0
Compagnon de la console Xbox           Microsoft.XboxApp_8wekyb3d8bbwe        48.89.25001.0
Xbox Game Bar Plugin                   Microsoft.XboxGameOverlay_8wekyb3d8bb… 1.54.4001.0
Xbox Game Bar                          Microsoft.XboxGamingOverlay_8wekyb3d8… 5.822.10271.0
Xbox Identity Provider                 Microsoft.XboxIdentityProvider_8wekyb… 12.93.6001.0
Xbox Game Speech Window                Microsoft.XboxSpeechToTextOverlay_8we… 1.21.13002.0
Groove Musique                         Microsoft.ZuneMusic_8wekyb3d8bbwe      10.22031.10091.0
Films et télé                          Microsoft.ZuneVideo_8wekyb3d8bbwe      10.22091.10031.0
Miniconda3 py39_4.12.0 (Python 3.9.12… Miniconda3 py39_4.12.0 (Python 3.9.12… py39_4.12.0
Microsoft 365 Apps for enterprise - e… Microsoft.Office                       16.0.15726.20174    16.0.15726.20… winget
Microsoft 365 Apps for enterprise - f… Microsoft.Office                       16.0.15726.20174    16.0.15726.20… winget
OBS Studio                             OBSProject.OBSStudio                   28.0.1              28.1.2         winget
Oh My Posh version 11.0.1              JanDeDobbeleer.OhMyPosh                11.0.1              12.13.3        winget
Microsoft OneDrive                     Microsoft.OneDrive                     22.225.1026.0001                   winget
Popcorn Time                           PopcornTime.Popcorn-Time               6.2.1.17                           winget
Microsoft Project - en-us              ProjectPro2021Retail - en-us           16.0.15726.20174
QEMU                                   SoftwareFreedomConservancy.QEMU        6.2.94              7.0.93         winget
Realtek Audio Control                  RealtekSemiconductorCorp.RealtekAudio… 1.16.228.0
League of Legends                      Riot Game league_of_legends.live       Unknown
Spotify Music                          SpotifyAB.SpotifyMusic_zpdnekdrzrea0   1.198.691.0
Microsoft Teams                        Microsoft.Teams                        1.5.00.21668        1.5.00.28361   winget
VLC media player                       VLC media player                       3.0.17.4
WinRAR 6.02 (32-bit)                   RARLab.WinRAR                          6.02.0              6.11.0         winget
Zoom                                   Zoom.Zoom                              5.12.9638           5.12.10137     winget
Google Calendar                        c2a8e22b9ea99f89482950ac8b299318       1.0
Courrier et calendrier                 microsoft.windowscommunicationsapps_8… 16005.14326.20970.0
μTorrent                               uTorrent                               3.5.5.46200
Contrôle d’intégrité du PC Windows     {0150BDB3-AFFD-47A1-ADB8-DE06658EB3B2} 3.2.2110.14001
Antidote 11                            {2643823D-D15F-4046-8388-401756A5C921} 11.2.347
Antidote 11 - Module français          {2643823D-D15F-4046-8388-401756A5C922} 11.2.347
Antidote 11 - English module           {2643823D-D15F-4046-8388-401756A5C923} 11.2.347
Antidote - Connectix 11                {2643823D-D15F-4046-8388-401756A5C924} 11.2.347
Java 8 Update 351                      Oracle.JavaRuntimeEnvironment          8.0.3510.10                        winget
TI-Nspire CX Premium Teacher Software  TexasInstruments.TI-Nspire.CXPremiumT… 5.3.2.129                          winget
Oracle VM VirtualBox 6.1.38            Oracle.VirtualBox                      6.1.38                             winget
Windows Software Development Kit - Wi… Microsoft.WindowsSDK                   < 10.0.22000.832    10.0.22621.2   winget
PowerToys (Preview) x64                Microsoft.PowerToys                    0.64.0              0.64.1         winget
Google Drive                           Google.Drive                           65.0.2.0            66.0.3.0       winget
Bonjour                                {6E3610B2-430D-4EB0-81E3-2B57E8B9DE8D} 3.0.0.10
Teams Machine-Wide Installer           Microsoft.Teams                        1.4.0.19572         1.5.00.28361   winget
Logi Options+                          Logitech.OptionsPlus                   1.26.5989           1.28.542       winget
Node.js                                OpenJS.NodeJS                          18.9.0              19.1.0         winget
Windows Subsystem for Linux Update     {8BC9BA1B-F6F3-471D-8773-5283F0C52B84} 5.10.60.1
Assistant de téléchargement            {93154A3C-9BB7-49D7-A571-4EB6373FA602} 6.71.0




**Get-Package**

| Name                            | Version          | Source                           | ProviderName  |
|---------------------------------|------------------|----------------------------------|---------------|
| Oracle VM VirtualBox 6.1.38     | 6.1.38           |                                  | msi           |
| Antidote 11                     | 11.2.347         | C:\Program Files\Druide\Antid... | msi           |

** 🔹  Get-AppxPackage -AllUsers | Select Name, PackageFullName, InstallLocation | Format-Table -AutoSize**
| Name                                         | PackageFullName                                                                         | InstallLocation                                                                                          |
|----------------------------------------------|-----------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
|                                              |                                                                                         |                                                                                                          |
| 21676OptimiliaStudios.ReadAloud              | 21676OptimiliaStudios.ReadAloud_2.1.40.0_x64__k42naep6bwmrc                             | C:\Program Files\WindowsApps\21676OptimiliaStudios.ReadAloud_2.1.40.0_x64__k42naep6bwmrc                 |
| 4505Fortemedia.FMAPOControl                  | 4505Fortemedia.FMAPOControl_1.0.38.0_x64__4pejv7q2gmsnr                                 | C:\Program Files\WindowsApps\4505Fortemedia.FMAPOControl_1.0.38.0_x64__4pejv7q2gmsnr                     |
| 45273LiamForsyth.PawsforTrello               | 45273LiamForsyth.PawsforTrello_2.13.8.0_x64__7pb5ddty8z1pa                              | C:\Program Files\WindowsApps\45273LiamForsyth.PawsforTrello_2.13.8.0_x64__7pb5ddty8z1pa                  |
| 55746MarkSmirnov.BluetoothAudioReveicer      | 55746MarkSmirnov.BluetoothAudioReveicer_1.1.5.0_x64__xwrbx6997tsfc                      | C:\Program Files\WindowsApps\55746MarkSmirnov.BluetoothAudioReveicer_1.1.5.0_x64__xwrbx6997tsfc          |
| 57540AMZNMobileLLC.AmazonAlexa               | 57540AMZNMobileLLC.AmazonAlexa_3.25.1156.0_x64__22t9g3sebte08                           | C:\Program Files\WindowsApps\57540AMZNMobileLLC.AmazonAlexa_3.25.1156.0_x64__22t9g3sebte08               |
| AD2F1837.HPPrinterControl                    | AD2F1837.HPPrinterControl_140.1.307.0_x64__v10z8vjag6ke6                                | C:\Program Files\WindowsApps\AD2F1837.HPPrinterControl_140.1.307.0_x64__v10z8vjag6ke6                    |
| AppUp.IntelGraphicsExperience                | AppUp.IntelGraphicsExperience_1.100.3408.0_x64__8j3eq9eme6ctt                           | C:\Program Files\WindowsApps\AppUp.IntelGraphicsExperience_1.100.3408.0_x64__8j3eq9eme6ctt               |
| AppUp.ThunderboltControlCenter               | AppUp.ThunderboltControlCenter_1.0.36.0_x64__8j3eq9eme6ctt                              | C:\Program Files\WindowsApps\AppUp.ThunderboltControlCenter_1.0.36.0_x64__8j3eq9eme6ctt                  |
| CanonicalGroupLimited.UbuntuonWindows        | CanonicalGroupLimited.UbuntuonWindows_2004.2022.1.0_x64__79rhkp1fndgsc                  | C:\Program Files\WindowsApps\CanonicalGroupLimited.UbuntuonWindows_2004.2022.1.0_x64__79rhkp1fndgsc      |
| DolbyLaboratories.DolbyAccess                | DolbyLaboratories.DolbyAccess_3.15.667.0_x64__rz1tebttyb220                             | C:\Program Files\WindowsApps\DolbyLaboratories.DolbyAccess_3.15.667.0_x64__rz1tebttyb220                 |
| DolbyLaboratories.DolbyAtmosSpeakerSystem    | DolbyLaboratories.DolbyAtmosSpeakerSystem_3.20800.804.0_x64__rz1tebttyb220              | C:\Program Files\WindowsApps\DolbyLaboratories.DolbyAtmosSpeakerSystem_3.20800.804.0_x64__rz1tebttyb220  |
| DolbyLaboratories.DolbyVisionHDR             | DolbyLaboratories.DolbyVisionHDR_2.1.5965.0_x64__rz1tebttyb220                          | C:\Program Files\WindowsApps\DolbyLaboratories.DolbyVisionHDR_2.1.5965.0_x64__rz1tebttyb220              |
| Drawboard.DrawboardPDF                       | DRAWBOARD.DRAWBOARDPDF_6.27.2.0_x64__gqbn7fs4pywxm                                      | C:\Program Files\WindowsApps\DRAWBOARD.DRAWBOARDPDF_6.27.2.0_x64__gqbn7fs4pywxm                          |
| Microsoft.549981C3F5F10                      | Microsoft.549981C3F5F10_4.2204.13303.0_x64__8wekyb3d8bbwe                               | C:\Program Files\WindowsApps\Microsoft.549981C3F5F10_4.2204.13303.0_x64__8wekyb3d8bbwe                   |
| Microsoft.AAD.BrokerPlugin                   | Microsoft.AAD.BrokerPlugin_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy              | C:\Windows\SystemApps\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy                                           |
| Microsoft.AV1VideoExtension                  | Microsoft.AV1VideoExtension_1.1.52074.0_x64__8wekyb3d8bbwe                              | C:\Program Files\WindowsApps\Microsoft.AV1VideoExtension_1.1.52074.0_x64__8wekyb3d8bbwe                  |
| Microsoft.AccountsControl                    | Microsoft.AccountsControl_10.0.19041.1023_neutral__cw5n1h2txyewy                        | C:\Windows\SystemApps\Microsoft.AccountsControl_cw5n1h2txyewy                                            |
| Microsoft.Advertising.Xaml                   | Microsoft.Advertising.Xaml_10.1811.1.0_x64__8wekyb3d8bbwe                               | C:\Program Files\WindowsApps\Microsoft.Advertising.Xaml_10.1811.1.0_x64__8wekyb3d8bbwe                   |
| Microsoft.Advertising.Xaml                   | Microsoft.Advertising.Xaml_10.1811.1.0_x86__8wekyb3d8bbwe                               | C:\Program Files\WindowsApps\Microsoft.Advertising.Xaml_10.1811.1.0_x86__8wekyb3d8bbwe                   |
| Microsoft.AsyncTextService                   | Microsoft.AsyncTextService_10.0.19041.1023_neutral__8wekyb3d8bbwe                       | C:\Windows\SystemApps\Microsoft.AsyncTextService_8wekyb3d8bbwe                                           |
| Microsoft.BingWeather                        | Microsoft.BingWeather_4.53.43112.0_x64__8wekyb3d8bbwe                                   | C:\Program Files\WindowsApps\Microsoft.BingWeather_4.53.43112.0_x64__8wekyb3d8bbwe                       |
| Microsoft.BioEnrollment                      | Microsoft.BioEnrollment_10.0.19041.1023_neutral__cw5n1h2txyewy                          | C:\Windows\SystemApps\Microsoft.BioEnrollment_cw5n1h2txyewy                                              |
| Microsoft.CredDialogHost                     | Microsoft.CredDialogHost_10.0.19041.1023_neutral__cw5n1h2txyewy                         | C:\Windows\SystemApps\microsoft.creddialoghost_cw5n1h2txyewy                                             |
| Microsoft.DesktopAppInstaller                | Microsoft.DesktopAppInstaller_1.18.2691.0_x64__8wekyb3d8bbwe                            | C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller_1.18.2691.0_x64__8wekyb3d8bbwe                |
| Microsoft.ECApp                              | Microsoft.ECApp_10.0.19041.1023_neutral__8wekyb3d8bbwe                                  | C:\Windows\SystemApps\Microsoft.ECApp_8wekyb3d8bbwe                                                      |
| Microsoft.GetHelp                            | Microsoft.GetHelp_10.2208.2551.0_x64__8wekyb3d8bbwe                                     | C:\Program Files\WindowsApps\Microsoft.GetHelp_10.2208.2551.0_x64__8wekyb3d8bbwe                         |
| Microsoft.Getstarted                         | Microsoft.Getstarted_10.2207.2.0_x64__8wekyb3d8bbwe                                     | C:\Program Files\WindowsApps\Microsoft.Getstarted_10.2207.2.0_x64__8wekyb3d8bbwe                         |
| Microsoft.HEIFImageExtension                 | Microsoft.HEIFImageExtension_1.0.43012.0_x64__8wekyb3d8bbwe                             | C:\Program Files\WindowsApps\Microsoft.HEIFImageExtension_1.0.43012.0_x64__8wekyb3d8bbwe                 |
| Microsoft.HEVCVideoExtension                 | Microsoft.HEVCVideoExtension_2.0.52911.0_x64__8wekyb3d8bbwe                             | C:\Program Files\WindowsApps\Microsoft.HEVCVideoExtension_2.0.52911.0_x64__8wekyb3d8bbwe                 |
| Microsoft.LanguageExperiencePackfr-CA        | Microsoft.LanguageExperiencePackfr-CA_19041.41.129.0_neutral__8wekyb3d8bbwe             | C:\Program Files\WindowsApps\Microsoft.LanguageExperiencePackfr-CA_19041.41.129.0_neutral__8wekyb3d8bbwe |
| Microsoft.LockApp                            | Microsoft.LockApp_10.0.19041.1023_neutral__cw5n1h2txyewy                                | C:\Windows\SystemApps\Microsoft.LockApp_cw5n1h2txyewy                                                    |
| Microsoft.MPEG2VideoExtension                | Microsoft.MPEG2VideoExtension_1.0.50901.0_x64__8wekyb3d8bbwe                            | C:\Program Files\WindowsApps\Microsoft.MPEG2VideoExtension_1.0.50901.0_x64__8wekyb3d8bbwe                |
| Microsoft.MSPaint                            | Microsoft.MSPaint_6.2203.1037.0_x64__8wekyb3d8bbwe                                      | C:\Program Files\WindowsApps\Microsoft.MSPaint_6.2203.1037.0_x64__8wekyb3d8bbwe                          |
| Microsoft.Microsoft3DViewer                  | Microsoft.Microsoft3DViewer_7.2107.7012.0_x64__8wekyb3d8bbwe                            | C:\Program Files\WindowsApps\Microsoft.Microsoft3DViewer_7.2107.7012.0_x64__8wekyb3d8bbwe                |
| Microsoft.MicrosoftEdge                      | Microsoft.MicrosoftEdge_44.19041.1266.0_neutral__8wekyb3d8bbwe                          | C:\Windows\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe                                              |
| Microsoft.MicrosoftEdge.Stable               | Microsoft.MicrosoftEdge.Stable_107.0.1418.42_neutral__8wekyb3d8bbwe                     | C:\Program Files\WindowsApps\Microsoft.MicrosoftEdge.Stable_107.0.1418.42_neutral__8wekyb3d8bbwe         |
| Microsoft.MicrosoftEdgeDevToolsClient        | Microsoft.MicrosoftEdgeDevToolsClient_1000.19041.1023.0_neutral_neutral_8wekyb3d8bbwe   | C:\Windows\SystemApps\Microsoft.MicrosoftEdgeDevToolsClient_8wekyb3d8bbwe                                |
| Microsoft.MicrosoftOfficeHub                 | Microsoft.MicrosoftOfficeHub_18.2106.12410.0_x64__8wekyb3d8bbwe                         | C:\Program Files\WindowsApps\Microsoft.MicrosoftOfficeHub_18.2106.12410.0_x64__8wekyb3d8bbwe             |
| Microsoft.MicrosoftSolitaireCollection       | Microsoft.MicrosoftSolitaireCollection_4.14.9130.0_x64__8wekyb3d8bbwe                   | C:\Program Files\WindowsApps\Microsoft.MicrosoftSolitaireCollection_4.14.9130.0_x64__8wekyb3d8bbwe       |
| Microsoft.MicrosoftStickyNotes               | Microsoft.MicrosoftStickyNotes_4.5.7.0_x64__8wekyb3d8bbwe                               | C:\Program Files\WindowsApps\Microsoft.MicrosoftStickyNotes_4.5.7.0_x64__8wekyb3d8bbwe                   |
| Microsoft.Midi.GmDls                         | Microsoft.Midi.GmDls_1.0.1.0_neutral__8wekyb3d8bbwe                                     | C:\Program Files\WindowsApps\Microsoft.Midi.GmDls_1.0.1.0_neutral__8wekyb3d8bbwe                         |
| Microsoft.Office.OneNote                     | Microsoft.Office.OneNote_16001.14326.21146.0_x64__8wekyb3d8bbwe                         | C:\Program Files\WindowsApps\Microsoft.Office.OneNote_16001.14326.21146.0_x64__8wekyb3d8bbwe             |
| Microsoft.People                             | Microsoft.People_10.2105.4.0_x64__8wekyb3d8bbwe                                         | C:\Program Files\WindowsApps\Microsoft.People_10.2105.4.0_x64__8wekyb3d8bbwe                             |
| Microsoft.PowerShell                         | Microsoft.PowerShell_7.3.0.0_x64__8wekyb3d8bbwe                                         | C:\Program Files\WindowsApps\Microsoft.PowerShell_7.3.0.0_x64__8wekyb3d8bbwe                             |
| Microsoft.ScreenSketch                       | Microsoft.ScreenSketch_10.2008.2277.0_x64__8wekyb3d8bbwe                                | C:\Program Files\WindowsApps\Microsoft.ScreenSketch_10.2008.2277.0_x64__8wekyb3d8bbwe                    |
| Microsoft.Services.Store.Engagement          | Microsoft.Services.Store.Engagement_10.0.19011.0_x64__8wekyb3d8bbwe                     | C:\Program Files\WindowsApps\Microsoft.Services.Store.Engagement_10.0.19011.0_x64__8wekyb3d8bbwe         |
| Microsoft.Services.Store.Engagement          | Microsoft.Services.Store.Engagement_10.0.19011.0_x86__8wekyb3d8bbwe                     | C:\Program Files\WindowsApps\Microsoft.Services.Store.Engagement_10.0.19011.0_x86__8wekyb3d8bbwe         |
| Microsoft.SkypeApp                           | Microsoft.SkypeApp_15.90.3407.0_x86__kzf8qxf38zg5c                                      | C:\Program Files\WindowsApps\Microsoft.SkypeApp_15.90.3407.0_x86__kzf8qxf38zg5c                          |
| Microsoft.StorePurchaseApp                   | Microsoft.StorePurchaseApp_12207.44.6.0_x64__8wekyb3d8bbwe                              | C:\Program Files\WindowsApps\Microsoft.StorePurchaseApp_12207.44.6.0_x64__8wekyb3d8bbwe                  |
| Microsoft.Todos                              | Microsoft.Todos_2.83.53132.0_x64__8wekyb3d8bbwe                                         | C:\Program Files\WindowsApps\Microsoft.Todos_2.83.53132.0_x64__8wekyb3d8bbwe                             |
| Microsoft.VP9VideoExtensions                 | Microsoft.VP9VideoExtensions_1.0.52781.0_x64__8wekyb3d8bbwe                             | C:\Program Files\WindowsApps\Microsoft.VP9VideoExtensions_1.0.52781.0_x64__8wekyb3d8bbwe                 |
| Microsoft.Wallet                             | Microsoft.Wallet_2.4.18324.0_x64__8wekyb3d8bbwe                                         | C:\Program Files\WindowsApps\Microsoft.Wallet_2.4.18324.0_x64__8wekyb3d8bbwe                             |
| Microsoft.WebMediaExtensions                 | Microsoft.WebMediaExtensions_1.0.42192.0_x64__8wekyb3d8bbwe                             | C:\Program Files\WindowsApps\Microsoft.WebMediaExtensions_1.0.42192.0_x64__8wekyb3d8bbwe                 |
| Microsoft.WebpImageExtension                 | Microsoft.WebpImageExtension_1.0.52351.0_x64__8wekyb3d8bbwe                             | C:\Program Files\WindowsApps\Microsoft.WebpImageExtension_1.0.52351.0_x64__8wekyb3d8bbwe                 |
| Microsoft.Whiteboard                         | Microsoft.Whiteboard_52.11010.438.0_x64__8wekyb3d8bbwe                                  | C:\Program Files\WindowsApps\Microsoft.Whiteboard_52.11010.438.0_x64__8wekyb3d8bbwe                      |
| Microsoft.Win32WebViewHost                   | Microsoft.Win32WebViewHost_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy                | C:\Windows\SystemApps\Microsoft.Win32WebViewHost_cw5n1h2txyewy                                           |
| Microsoft.Win32WebViewHost                   | Microsoft.Win32WebViewHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy                 | C:\Windows\SystemApps\Microsoft.Win32WebViewHost_cw5n1h2txyewy                                           |
| Microsoft.Windows.Apprep.ChxApp              | Microsoft.Windows.Apprep.ChxApp_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy         | C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy                                      |
| Microsoft.Windows.AssignedAccessLockApp      | Microsoft.Windows.AssignedAccessLockApp_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy | C:\Windows\SystemApps\Microsoft.Windows.AssignedAccessLockApp_cw5n1h2txyewy                              |
| Microsoft.Windows.CallingShellApp            | Microsoft.Windows.CallingShellApp_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy       | C:\Windows\SystemApps\Microsoft.Windows.CallingShellApp_cw5n1h2txyewy                                    |
| Microsoft.Windows.CapturePicker              | Microsoft.Windows.CapturePicker_10.0.19041.1023_neutral__cw5n1h2txyewy                  | C:\Windows\SystemApps\Microsoft.Windows.CapturePicker_cw5n1h2txyewy                                      |
| Microsoft.Windows.CloudExperienceHost        | Microsoft.Windows.CloudExperienceHost_10.0.19041.1266_neutral_neutral_cw5n1h2txyewy     | C:\Windows\SystemApps\Microsoft.Windows.CloudExperienceHost_cw5n1h2txyewy                                |
| Microsoft.Windows.ContentDeliveryManager     | Microsoft.Windows.ContentDeliveryManager_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy  | C:\Windows\SystemApps\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy                             |
| Microsoft.Windows.NarratorQuickStart         | Microsoft.Windows.NarratorQuickStart_10.0.19041.1023_neutral_neutral_8wekyb3d8bbwe      | C:\Windows\SystemApps\microsoft.windows.narratorquickstart_8wekyb3d8bbwe                                 |
| Microsoft.Windows.NarratorQuickStart         | Microsoft.Windows.NarratorQuickStart_10.0.19041.423_neutral_neutral_8wekyb3d8bbwe       | C:\Windows\SystemApps\microsoft.windows.narratorquickstart_8wekyb3d8bbwe                                 |
| Microsoft.Windows.OOBENetworkCaptivePortal   | Microsoft.Windows.OOBENetworkCaptivePortal_10.0.19041.1023_neutral__cw5n1h2txyewy       | C:\Windows\SystemApps\Microsoft.Windows.OOBENetworkCaptivePortal_cw5n1h2txyewy                           |
| Microsoft.Windows.OOBENetworkConnectionFlow  | Microsoft.Windows.OOBENetworkConnectionFlow_10.0.19041.1023_neutral__cw5n1h2txyewy      | C:\Windows\SystemApps\Microsoft.Windows.OOBENetworkConnectionFlow_cw5n1h2txyewy                          |
| Microsoft.Windows.ParentalControls           | Microsoft.Windows.ParentalControls_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy      | C:\Windows\SystemApps\ParentalControls_cw5n1h2txyewy                                                     |
| Microsoft.Windows.PeopleExperienceHost       | Microsoft.Windows.PeopleExperienceHost_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy    | C:\Windows\SystemApps\Microsoft.Windows.PeopleExperienceHost_cw5n1h2txyewy                               |
| Microsoft.Windows.PeopleExperienceHost       | Microsoft.Windows.PeopleExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy     | C:\Windows\SystemApps\Microsoft.Windows.PeopleExperienceHost_cw5n1h2txyewy                               |
| Microsoft.Windows.Photos                     | Microsoft.Windows.Photos_2022.30070.26007.0_x64__8wekyb3d8bbwe                          | C:\Program Files\WindowsApps\Microsoft.Windows.Photos_2022.30070.26007.0_x64__8wekyb3d8bbwe              |
| Microsoft.Windows.PinningConfirmationDialog  | Microsoft.Windows.PinningConfirmationDialog_1000.19041.1023.0_neutral__cw5n1h2txyewy    | C:\Windows\SystemApps\Microsoft.Windows.PinningConfirmationDialog_cw5n1h2txyewy                          |
| Microsoft.Windows.Search                     | Microsoft.Windows.Search_1.14.7.19041_neutral_neutral_cw5n1h2txyewy                     | C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy                                             |
| Microsoft.Windows.SecHealthUI                | Microsoft.Windows.SecHealthUI_10.0.19041.1023_neutral__cw5n1h2txyewy                    | C:\Windows\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy                                        |
| Microsoft.Windows.SecHealthUI                | Microsoft.Windows.SecHealthUI_10.0.19041.1865_neutral__cw5n1h2txyewy                    | C:\Windows\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy                                        |
| Microsoft.Windows.SecureAssessmentBrowser    | Microsoft.Windows.SecureAssessmentBrowser_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy | C:\Windows\SystemApps\Microsoft.Windows.SecureAssessmentBrowser_cw5n1h2txyewy                            |
| Microsoft.Windows.ShellExperienceHost        | Microsoft.Windows.ShellExperienceHost_10.0.19041.1949_neutral_neutral_cw5n1h2txyewy     | C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy                                                  |
| Microsoft.Windows.StartMenuExperienceHost    | Microsoft.Windows.StartMenuExperienceHost_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy | C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy                            |
| Microsoft.Windows.XGpuEjectDialog            | Microsoft.Windows.XGpuEjectDialog_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy         | C:\Windows\SystemApps\Microsoft.Windows.XGpuEjectDialog_cw5n1h2txyewy                                    |
| Microsoft.Windows.XGpuEjectDialog            | Microsoft.Windows.XGpuEjectDialog_10.0.19041.423_neutral_neutral_cw5n1h2txyewy          | C:\Windows\SystemApps\Microsoft.Windows.XGpuEjectDialog_cw5n1h2txyewy                                    |
| Microsoft.WindowsAlarms                      | Microsoft.WindowsAlarms_11.2209.11.0_x64__8wekyb3d8bbwe                                 | C:\Program Files\WindowsApps\Microsoft.WindowsAlarms_11.2209.11.0_x64__8wekyb3d8bbwe                     |
| Microsoft.WindowsCalculator                  | Microsoft.WindowsCalculator_10.2103.8.0_x64__8wekyb3d8bbwe                              | C:\Program Files\WindowsApps\Microsoft.WindowsCalculator_10.2103.8.0_x64__8wekyb3d8bbwe                  |
| Microsoft.WindowsCamera                      | Microsoft.WindowsCamera_2021.105.10.0_x64__8wekyb3d8bbwe                                | C:\Program Files\WindowsApps\Microsoft.WindowsCamera_2021.105.10.0_x64__8wekyb3d8bbwe                    |
| Microsoft.WindowsFeedbackHub                 | Microsoft.WindowsFeedbackHub_1.2203.761.0_x64__8wekyb3d8bbwe                            | C:\Program Files\WindowsApps\Microsoft.WindowsFeedbackHub_1.2203.761.0_x64__8wekyb3d8bbwe                |
| Microsoft.WindowsMaps                        | Microsoft.WindowsMaps_11.2208.6.0_x64__8wekyb3d8bbwe                                    | C:\Program Files\WindowsApps\Microsoft.WindowsMaps_11.2208.6.0_x64__8wekyb3d8bbwe                        |
| Microsoft.WindowsSoundRecorder               | Microsoft.WindowsSoundRecorder_10.2103.28.0_x64__8wekyb3d8bbwe                          | C:\Program Files\WindowsApps\Microsoft.WindowsSoundRecorder_10.2103.28.0_x64__8wekyb3d8bbwe              |
| Microsoft.WindowsStore                       | Microsoft.WindowsStore_22210.1401.6.0_x64__8wekyb3d8bbwe                                | C:\Program Files\WindowsApps\Microsoft.WindowsStore_22210.1401.6.0_x64__8wekyb3d8bbwe                    |
| Microsoft.WindowsTerminalPreview             | Microsoft.WindowsTerminalPreview_1.16.2641.0_x64__8wekyb3d8bbwe                         | C:\Program Files\WindowsApps\Microsoft.WindowsTerminalPreview_1.16.2641.0_x64__8wekyb3d8bbwe             |
| Microsoft.Winget.Source                      | Microsoft.Winget.Source_2022.1115.1322.177_neutral__8wekyb3d8bbwe                       | C:\Program Files\WindowsApps\Microsoft.Winget.Source_2022.1115.1322.177_neutral__8wekyb3d8bbwe           |
| Microsoft.Xbox.TCUI                          | Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe                                     | C:\Program Files\WindowsApps\Microsoft.Xbox.TCUI_1.24.10001.0_x64__8wekyb3d8bbwe                         |
| Microsoft.XboxApp                            | Microsoft.XboxApp_48.89.25001.0_x64__8wekyb3d8bbwe                                      | C:\Program Files\WindowsApps\Microsoft.XboxApp_48.89.25001.0_x64__8wekyb3d8bbwe                          |
| Microsoft.XboxGameCallableUI                 | Microsoft.XboxGameCallableUI_1000.19041.1023.0_neutral_neutral_cw5n1h2txyewy            | C:\Windows\SystemApps\Microsoft.XboxGameCallableUI_cw5n1h2txyewy                                         |
| Microsoft.XboxGameOverlay                    | Microsoft.XboxGameOverlay_1.54.4001.0_x64__8wekyb3d8bbwe                                | C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.54.4001.0_x64__8wekyb3d8bbwe                    |
| Microsoft.XboxGamingOverlay                  | Microsoft.XboxGamingOverlay_5.822.10271.0_x64__8wekyb3d8bbwe                            | C:\Program Files\WindowsApps\Microsoft.XboxGamingOverlay_5.822.10271.0_x64__8wekyb3d8bbwe                |
| Microsoft.XboxIdentityProvider               | Microsoft.XboxIdentityProvider_12.93.6001.0_x64__8wekyb3d8bbwe                          | C:\Program Files\WindowsApps\Microsoft.XboxIdentityProvider_12.93.6001.0_x64__8wekyb3d8bbwe              |
| Microsoft.XboxSpeechToTextOverlay            | Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe                       | C:\Program Files\WindowsApps\Microsoft.XboxSpeechToTextOverlay_1.21.13002.0_x64__8wekyb3d8bbwe           |
| Microsoft.YourPhone                          | Microsoft.YourPhone_1.22082.119.0_x64__8wekyb3d8bbwe                                    | C:\Program Files\WindowsApps\Microsoft.YourPhone_1.22082.119.0_x64__8wekyb3d8bbwe                        |
| Microsoft.ZuneMusic                          | Microsoft.ZuneMusic_10.22031.10091.0_x64__8wekyb3d8bbwe                                 | C:\Program Files\WindowsApps\Microsoft.ZuneMusic_10.22031.10091.0_x64__8wekyb3d8bbwe                     |
| Microsoft.ZuneVideo                          | Microsoft.ZuneVideo_10.22091.10031.0_x64__8wekyb3d8bbwe                                 | C:\Program Files\WindowsApps\Microsoft.ZuneVideo_10.22091.10031.0_x64__8wekyb3d8bbwe                     |
| MicrosoftWindows.Client.CBS                  | MicrosoftWindows.Client.CBS_120.2212.4180.0_x64__cw5n1h2txyewy                          | C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy                                          |
| MicrosoftWindows.Client.CBS                  | MicrosoftWindows.Client.CBS_120.2212.551.0_x64__cw5n1h2txyewy                           | C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy                                          |
| MicrosoftWindows.UndockedDevKit              | MicrosoftWindows.UndockedDevKit_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy           | C:\Windows\SystemApps\MicrosoftWindows.UndockedDevKit_cw5n1h2txyewy                                      |
| MirametrixInc.GlancebyMirametrix             | MirametrixInc.GlancebyMirametrix_9.24.2301.0_x64__17mer8kcn3j54                         | C:\Program Files\WindowsApps\MirametrixInc.GlancebyMirametrix_9.24.2301.0_x64__17mer8kcn3j54             |
| NcsiUwpApp                                   | NcsiUwpApp_1000.19041.1023.0_neutral_neutral_8wekyb3d8bbwe                              | C:\Windows\SystemApps\NcsiUwpApp_8wekyb3d8bbwe                                                           |
| RealtekSemiconductorCorp.RealtekAudioControl | RealtekSemiconductorCorp.RealtekAudioControl_1.16.228.0_x64__dt26b99r8h8gj              | C:\Program Files\WindowsApps\RealtekSemiconductorCorp.RealtekAudioControl_1.16.228.0_x64__dt26b99r8h8gj  |
| SpotifyAB.SpotifyMusic                       | SpotifyAB.SpotifyMusic_1.198.691.0_x86__zpdnekdrzrea0                                   | C:\Program Files\WindowsApps\SpotifyAB.SpotifyMusic_1.198.691.0_x86__zpdnekdrzrea0                       |
| WacomTechnologyCorp.157535B83C264            | WacomTechnologyCorp.157535B83C264_7.7.61.0_neutral__ss941bf8mfs8a                       | C:\Program Files\WindowsApps\WacomTechnologyCorp.157535B83C264_7.7.61.0_neutral__ss941bf8mfs8a           |
| Windows.CBSPreview                           | Windows.CBSPreview_10.0.19041.1023_neutral_neutral_cw5n1h2txyewy                        | C:\Windows\SystemApps\Windows.CBSPreview_cw5n1h2txyewy                                                   |
| Windows.CBSPreview                           | Windows.CBSPreview_10.0.19041.423_neutral_neutral_cw5n1h2txyewy                         | C:\Windows\SystemApps\Windows.CBSPreview_cw5n1h2txyewy                                                   |
| Windows.PrintDialog                          | Windows.PrintDialog_6.2.1.0_neutral_neutral_cw5n1h2txyewy                               | C:\Windows\PrintDialog                                                                                   |

### Documentation   

**Symbo|liclink Comma|nd l|ine**   

```powershell   
sudo cmd /c |mklink /d where\yo u\want\the\simlink real|\File\origin
``` 
**Symboliclink Powershell**     

```powershell 
New-Item -ItemType SymbolicLink -Path "where\you\want\the\simlink" -Target "real\File\origin"
```
```powershell 
New-Item -ItemType HardLink -Path "where\you\want\the\simlink" -Target "real\File\origin"
```
```powershell 
New-Item -ItemType Junction -Path "where\you\want\the\simlink" -Target "real\File\origin"
```


**Symboliclink Powershell function**  

Need toadd line in profile first 
```powershell
make-link C:\Users\Kevin\.dotfiles\.gitconfig C:\Users\Kevin\.gitconfig
```
```powershell 
function make-link ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}
```
