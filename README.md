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
```
winget export wingetAllPackage.json
```
```
winget import wingetAllPackage.json
```


**Manage application with choco**
choco install utorrent
choco install discord
choco install Docker Desktop
choco install google-calendar-chrome
choco install googledrive
choco install googlechrome
choco install logitech-options
choco install office365business
choco install onedrive
choco install microsoft-teams.install
choco install vscode
choco install miniconda3
choco install oh-my-posh
choco install qemu
choco install popcorntime
choco install screentogif
choco install wsl
choco install winrar
choco install zoom

**Chocolatey v1.1.0**
7zip.commandline 16.02.0.20170209
7zip.portable 22.1
adb 33.0.3
chocolatey 1.1.0
chocolatey-compatibility.extension 1.0.0
chocolatey-core.extension 1.4.0
chocolatey-dotnetfx.extension 1.0.1
chocolatey-font-helpers.extension 0.0.4
chocolatey-misc-helpers.extension 0.0.4
chocolatey-windowsupdate.extension 1.0.4
dotnet-6.0-desktopruntime 6.0.9
dotnet-desktopruntime 6.0.9
DotNet4.5.2 4.5.2.20140902
dotnetfx 4.8.0.20220524
git 2.37.3
git.install 2.37.3
google-drive-file-stream 56.0.11.2022
gradle 7.4.2
KB2533623 2.0.0
KB2919355 1.0.20160915
KB2919442 1.0.20160915
KB2999226 1.0.20181019
KB3033929 1.0.5
KB3035131 1.0.3
KB3063858 1.0.0
kubernetes-cli 1.25.4
maven 3.8.6
nodejs 18.9.0
nodejs-lts 16.14.0
nodejs.install 18.9.0
obs-studio 28.0.1
obs-studio.install 28.0.1
pasteintofile 1.5.0
powertoys 0.62.1
scrcpy 1.24
stretchly 1.11.0
Sudo 1.1.2
vcredist140 14.32.31332
vcredist2015 14.0.24215.20170201
vcredist2017 14.16.27033
virtualbox 6.1.38
vlc 3.0.17.4
vlc.install 3.0.17.4
vscode-insiders 1.72.0.20220916
vscode-insiders.install 1.72.0.20220916
zoomit 6.01
**46 packages installed.**
**🔹  winget list**
Nom                                    ID                                     Version             Disponible     Source
Visual Studio Community 2019           Microsoft.VisualStudio.2019.Community  16.11.13            16.11.21       winget
Smart Microphone Setting               4505Fortemedia.FMAPOControl_4pejv7q2g… 1.0.38.0
Trello                                 45273LiamForsyth.PawsforTrello_7pb5dd… 2.13.8.0
TasksBoard                             4d00adda40e5c6d620611f45b7633652       1.0
Stretchly 1.11.0                       Stretchly.Stretchly                    1.11.0              1.12.0         winget
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
Git                                    Git.Git                                2.37.3              2.38.1         winget
Google Chrome                          Google.Chrome                          106.0.5249.119      107.0.5304.107 winget
IObit Uninstaller 12                   IObitUninstall                         12.1.0.5
IntelliJ IDEA Community Edition 2021.… IntelliJ IDEA Community Edition 2021.… 213.6461.79
Microsoft Edge                         Microsoft.Edge                         107.0.1418.42                      winget
Microsoft Edge Update                  Microsoft Edge Update                  1.3.171.37
Microsoft Edge WebView2 Runtime        Microsoft.EdgeWebView2Runtime          107.0.1418.42                      winget
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
ScreenToGif                            NickeManarin.ScreenToGif               2.37.1                             winget
**    C:/Dev   01:24:50  羽4.773s**
🔹  Get-Package


| Name                            | Version          | Source                           | ProviderName  |
|---------------------------------|------------------|----------------------------------|---------------|
| hp - Printer - 4/16/2019 12...  |                  |                                  | msu           |
| Windows Subsystem for Linux...  |                  |                                  | msu           |
| Texas Instruments - Extensi...  |                  |                                  | msu           |
| Security Intelligence Updat...  |                  |                                  | msu           |
| Realtek Semiconductor Corp....  |                  |                                  | msu           |
| Realtek Semiconductor Corp....  |                  |                                  | msu           |
| Realtek - Net - 10.50.211.2022  |                  |                                  | msu           |
| Logitech - HIDClass - 1.10....  |                  |                                  | msu           |
| Logitech - HIDClass - 1.10....  |                  |                                  | msu           |
| Logitech - HIDClass - 1.10....  |                  |                                  | msu           |
| Fortemedia - SoftwareCompon...  |                  |                                  | msu           |
| Fortemedia - Extension - 9....  |                  |                                  | msu           |
| Fortemedia - Extension - 1....  |                  |                                  | msu           |
| Elevoc Technology Co.,Ltd -...  |                  |                                  | msu           |
| Dolby - Extension - 5.1007....  |                  |                                  | msu           |
| Dell Inc. - Monitor - 3/27/...  |                  |                                  | msu           |
| Apple, Inc. - USBDevice - 4...  |                  |                                  | msu           |
| 9WZDNCRFHWD2-Microsoft.Micr...  |                  |                                  | msu           |
| 9PLK42WD0RC0-Microsoft.Phot...  |                  |                                  | msu           |
| 2022-08 Préversion de la mi...  |                  |                                  | msu           |
| 2021-09 Préversion de la mi...  |                  |                                  | msu           |
| vs_minshellmsires               | 16.10.31303      |                                  | msi           |
| vs_minshellmsi                  | 16.11.31503      |                                  | msi           |
| vs_filehandler_x86              | 16.11.31503      |                                  | msi           |
| vs_filehandler_amd64            | 16.11.31503      |                                  | msi           |
| vs_FileTracker_Singleton        | 16.10.31303      |                                  | msi           |
| vcpp_crt.redist.clickonce       | 14.29.30139      |                                  | msi           |
| Windows Team Extension SDK ...  | 10.1.19041.685   |                                  | msi           |
| Windows Team Extension SDK      | 10.1.19041.685   |                                  | msi           |
| Windows Swift SDK for x86_64    | 0.0.0.0          |                                  | msi           |
| Windows Swift Runtime for x...  | 0.0.0.0          |                                  | msi           |
| Windows Subsystem for Linux...  | 5.10.60.1        |                                  | msi           |
| Windows Mobile Extension SDK    | 10.1.19041.685   |                                  | msi           |
| Windows Mobile Extension SD...  | 10.1.19041.685   |                                  | msi           |
| Windows IoT Extension SDK C...  | 10.1.19041.685   |                                  | msi           |
| Windows IoT Extension SDK       | 10.1.19041.685   |                                  | msi           |
| Windows Desktop Extension SDK   | 10.1.19041.685   |                                  | msi           |
| Windows Desktop Extension S...  | 10.1.19041.685   |                                  | msi           |
| Windows App Certification K...  | 10.1.19041.685   |                                  | msi           |
| Windows App Certification K...  | 10.1.19041.685   |                                  | msi           |
| Windows App Certification K...  | 10.1.19041.685   |                                  | msi           |
| WinAppDeploy                    | 10.1.19041.685   |                                  | msi           |
| Universal General MIDI DLS ...  | 10.1.19041.685   |                                  | msi           |
| Universal CRT Tools x86         | 10.1.19041.685   |                                  | msi           |
| Universal CRT Tools x64         | 10.1.19041.685   |                                  | msi           |
| Universal CRT Redistributable   | 10.1.19041.685   |                                  | msi           |
| Universal CRT Headers Libra...  | 10.1.19041.685   |                                  | msi           |
| Universal CRT Extension SDK     | 10.1.19041.685   |                                  | msi           |
| Toolchain                       | 0.0.0.0          |                                  | msi           |
| Teams Machine-Wide Installer    | 1.4.0.19572      |                                  | msi           |
| ScreenToGif                     | 2.37.1           |                                  | msi           |
| SDK ARM Redistributables        | 10.1.19041.685   |                                  | msi           |
| SDK ARM Additions               | 10.1.19041.685   |                                  | msi           |
| Python 3.11.0a5 pip Bootstr...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Utility Scr...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Test Suite ...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Tcl/Tk Supp...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Standard Li...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Executables...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Documentati...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Development...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Core Interp...  | 3.11.105.0       |                                  | msi           |
| Python 3.11.0a5 Add to Path...  | 3.11.105.0       |                                  | msi           |
| Oracle VM VirtualBox 6.1.38     | 6.1.38           |                                  | msi           |
| Node.js                         | 18.9.0           |                                  | msi           |
| MSI Development Tools           | 10.1.19041.685   |                                  | msi           |
| Kits Configuration Installer    | 10.1.19041.685   |                                  | msi           |
| Java Auto Updater               | 2.8.351.10       |                                  | msi           |
| ICU                             | 67.1             |                                  | msi           |
| Developer Tools                 | 0.0.0.0          |                                  | msi           |
| Contrôle d’intégrité du PC ... | 3.2.2110.14001   |                                  | msi           |
| Application Verifier x64 Ex...  | 10.1.19041.685   |                                  | msi           |
| Bonjour                         | 3.0.0.10         | C:\Program Files (x86)\Bonjour\  | msi           |
| Cisco AnyConnect Secure Mob...  | 4.10.4065        | C:\Program Files (x86)\Cisco\... | msi           |
| Assistant de téléchargement     | 6.71.0           | C:\Program Files (x86)\Druide... | msi           |
| Java 8 Update 351               | 8.0.3510.10      | C:\Program Files (x86)\Java\j... | msi           |
| Antidote 11 - Module français   | 11.2.347         | C:\Program Files\Druide\Antid... | msi           |
| Antidote 11 - English module    | 11.2.347         | C:\Program Files\Druide\Antid... | msi           |
| Antidote 11                     | 11.2.347         | C:\Program Files\Druide\Antid... | msi           |
| Antidote - Connectix 11         | 11.2.347         | C:\Program Files\Druide\Conne... | msi           |
| NordVPN network TUN             | 1.0.1            | C:\Program Files\NordVPN netw... | msi           |
| PowerToys (Preview)             | 0.64.0           | C:\Program Files\PowerToys\      | msi           |
| TI-Nspire CX Premium Teache...  | 5.3.2.129        | C:\Program Files\TI Education\   | msi           |
| Pandoc 2.19.2                   | 2.19.2           | C:\Users\Kevin\AppData\Local\... | msi           |
| µTorrent                        | 3.5.5.46200      |                                  | Programs      |
| Zoom                            | 5.12.3 (9638)    |                                  | Programs      |
| Windows Software Developmen...  | 10.1.19041.685   |                                  | Programs      |
| WinRAR 6.02 (32-bit)            | 6.02.0           |                                  | Programs      |
| Visual Studio Community 2019    | 16.11.13         |                                  | Programs      |
| VLC media player                | 3.0.17.4         |                                  | Programs      |
| TasksBoard                      | 1.0              |                                  | Programs      |
| Stretchly 1.11.0                | 1.11.0           |                                  | Programs      |
| QEMU                            | 6.2.94           |                                  | Programs      |
| PowerToys (Preview) x64         | 0.64.0           |                                  | Programs      |
| Popcorn Time                    | 6.2.1.17         |                                  | Programs      |
| Oh My Posh version 11.0.1       | 11.0.1           |                                  | Programs      |
| OBS Studio                      | 28.0.1           |                                  | Programs      |
| Miniconda3 py39_4.12.0 (Pyt...  | py39_4.12.0      |                                  | Programs      |
| Microsoft Teams                 | 1.5.00.21668     |                                  | Programs      |
| Microsoft Project - en-us       | 16.0.15726.20174 |                                  | Programs      |
| Microsoft OneDrive              | 22.225.1026.0001 |                                  | Programs      |
| Microsoft Edge WebView2 Run...  | 107.0.1418.42    |                                  | Programs      |
| Microsoft Edge Update           | 1.3.171.37       |                                  | Programs      |
| Microsoft Edge                  | 107.0.1418.42    |                                  | Programs      |
| Microsoft 365 Apps for ente...  | 16.0.15726.20174 |                                  | Programs      |
| Microsoft 365 Apps for ente...  | 16.0.15726.20174 |                                  | Programs      |
| LogiOptionsPlusExcelAddin       | 1.26.5989.0      |                                  | Programs      |
| Logi Options+                   | 1.26.5989        |                                  | Programs      |
| League of Legends               |                  |                                  | Programs      |
| IntelliJ IDEA Community Edi...  | 213.6461.79      |                                  | Programs      |
| IObit Uninstaller 12            | 12.1.0.5         |                                  | Programs      |
| Google Chrome                   | 106.0.5249.119   |                                  | Programs      |
| Google Drive                    | 65.0.2.0         |                                  | Programs      |
| Google Calendar                 | 1.0              |                                  | Programs      |
| Git                             | 2.37.3           |                                  | Programs      |
| Docker Desktop                  | 4.13.0           |                                  | Programs      |
| Discord                         | 1.0.9007         |                                  | Programs      |
| Cisco AnyConnect Secure Mob...  | 4.10.04065       |                                  | Programs      |
| posh-git                        | 1.1.0            | https://www.powershellgallery... | PowerShellGet |
| Terminal-Icons                  | 0.10.0           | https://www.powershellgallery... | PowerShellGet |
| PackageManagement               | 1.4.7            | https://www.powershellgallery... | PowerShellGet |
| PSReadLine                      | 2.2.6            | https://www.powershellgallery... | PowerShellGet |


### Documentation   

**Symbo|liclink Command l|ine**   

```powershell   
sudo cmd /c |mklink /d where\yo u\want\the\simlink real\File\origin
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