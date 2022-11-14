# .DotFiles

### Manuel steps

**Use Symlink**
make-link C:\Users\Kevin\.dotfiles\.gitconfig C:\Users\Kevin\.gitconfig
New-Item -ItemType SymbolicLink -Path C:\Users\Kevin\Documents\WindowsPowerShell -Target C:\Users\Kevin\.dotfiles\WindowsPowerShell



### Documentation 

**Symboliclink Command line** 

sudo cmd /c mklink /d  where\you\want\the\simlink real\File\origin
**Symboliclink Powershell**  

New-Item -ItemType SymbolicLink -Path "where\you\want\the\simlink" -Target "real\File\origin"
New-Item -ItemType HardLink -Path "where\you\want\the\simlink" -Target "real\File\origin"
New-Item -ItemType Junction -Path "where\you\want\the\simlink" -Target "real\File\origin"
**Symboliclink Powershell function**  

Need toadd line in profile first 
make-link C:\Users\Kevin\.dotfiles\.gitconfig C:\Users\Kevin\.gitconfig
```powershell 
function make-link ($target, $link) {
    New-Item -Path $link -ItemType SymbolicLink -Value $target
}
```