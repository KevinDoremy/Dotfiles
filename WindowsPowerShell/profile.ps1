$EmojiIcon = [System.Convert]::toInt32("1F920",16)
$EmojiIcon2 = [System.Convert]::toInt32("1F3AE",16)
Write-Host ''
Write-Host 'Greetings Professor Doremy. '-NoNewline
Write-Host -ForegroundColor Green ([System.Char]::ConvertFromUtf32($EmojiIcon))
Write-Host ''
Write-Host 'Shall we play a game? '-NoNewline
Write-Host -ForegroundColor Green ([System.Char]::ConvertFromUtf32($EmojiIcon2))
Write-Host ''

# function get-GitCommit { & git commit -m $args }
function .. { set-location .. }
function ... { set-location ../.. }
function .... { set-location ../../.. }
function get-code2 { code-insiders $args }
function get-insider { code-insiders $args }
function Clear-Console { Clear-Host }
Set-Alias c Clear-Console

function List-Files { Get-ChildItem -Force }
Set-Alias lss List-Files

function Git-Status { git status }
Set-Alias gs Git-Status

function Git-Diff { git diff }
Set-Alias gd Git-Diff

function Git-Diff-Staged { git diff --staged }
Set-Alias gds Git-Diff-Staged

function Git-Add { Param($file) git add $file }
Set-Alias ga Git-Add

function Git-Add-All { git add . }
Set-Alias gall Git-Add-All

function Git-Add-Patch { git add -p . }
Set-Alias gap Git-Add-Patch


function Git-Pull { git pull }
Set-Alias gpu Git-Pull

function Git-Checkout { Param($branch) git checkout $branch }
Set-Alias gco Git-Checkout

function Git-Checkout-Branch { Param($branch) git checkout -B $branch }
Set-Alias gcob Git-Checkout-Branch

function Git-Checkout-Previous { git checkout - }
Set-Alias gcop Git-Checkout-Previous


function Git-Commit-Amend { Param($message) git commit --amend -m $message }
Set-Alias gca Git-Commit-Amend

function Git-Log {
    git log -20 --color --graph --no-merges --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches
}
Set-Alias glog Git-Log

function Git-Reflog { git reflog }
Set-Alias glogr Git-Reflog

function Git-Shortlog { git shortlog }
Set-Alias glogs Git-Shortlog

function Git-Undo { git reset --soft HEAD }
Set-Alias undo Git-Undo

function Git-Change {
    git reset --soft $(git log -1 --pretty=format:%h origin/master)
}
Set-Alias change Git-Change

function Git-Reset-Soft { Param($commit) git reset --soft $commit }
Set-Alias grs Git-Reset-Soft

function Git-Reset-Hard { Param($commit) git reset --hard $commit }
Set-Alias grh Git-Reset-Hard

function Git-Unstage { git reset }
Set-Alias gus Git-Unstage

function Git-Stash { git stash }
Set-Alias gst Git-Stash

function Git-Stash-Pop { git stash pop }
Set-Alias gsp Git-Stash-Pop

function Git-Stash-List { git stash list }
Set-Alias gsl Git-Stash-List


function gf { git fetch --all }

function gsearch { git rev-list --all | %{ git grep -F $_ } }
function glast { git log -1 HEAD --stat }

function wtb { cd ((git worktree list --porcelain | Select-String "worktree " | Select-Object -First 1).ToString().Split(" ")[1]); & $SHELL }
function wtpr { git worktree add ".worktree/$($args[0])" "$($args[1])"; cd ".worktree/$($args[0])"; code .; change }
function wta { git worktree add -b "$($args[1])" ".worktree/$($args[0])"; cd ".worktree/$($args[0])"; code . }
function wtl { git worktree list }
function wtd { git worktree remove --force "$($args[0])"; Remove-Item -Recurse -Force "$($args[0])" }
function wtp { git worktree prune }

# function get-GitPush { & git push }
# function get-GitPull { & git pull }
# function get-GitAdd { & git add $args }
# function get-undo { git reset --soft HEAD^ }
# function get-gitstatus { git status }
# function get-gitcheckout {git checkout $args }
# function get-gitcheckoutnewBranch { & git checkout -b $args }
# function get-gitlog { git log -10 --color --graph --no-merges --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches }
function get-codeprofile { code-insiders "C:\Users\Kevin\Documents\WindowsPowerShell\profile.ps1" }
function get-notes { code-insiders "C:\dev\My-Notes"}
function get-dev { cd "C:\Dev" ; ls}
function get-dotfile { cd "~/.dotfiles" ; ls ; code .}
function get-reset{ Start-Process -FilePath "wt.exe"; exit}

function make-link ($target, $link) {
    if (Test-Path $link) {
        $userInput = Read-Host -Prompt "L'élément '$link' existe déjà. Voulez-vous le remplacer ? (O/N)"
        if ($userInput -eq "O" -or $userInput -eq "o") {
            Remove-Item -Recurse -Force $link
            New-Item -Path $link -ItemType SymbolicLink -Value $target
        } else {
            Write-Host "Action annulée. Le lien symbolique n'a pas été créé."
        }
    } else {
        New-Item -Path $link -ItemType SymbolicLink -Value $target
    }
}
function get-desktop { cd "C:\Users\Kevin\Desktop" ; ls}
function get-kevin { cd "C:\Users\Kevin" ; ls}
function ccd { param($path) set-location $path  ls }
function get-where { Get-Command $args }
function get-gopen {gh browse}
set-alias desktop "Desktop.ps1"
Set-Alias -Name profile -Value get-codeprofile
Set-Alias -Name note -Value get-notes
Set-Alias -Name dev -Value get-dev
Set-Alias -Name desktop -Value get-desktop
# Set-Alias -Name gs -Value get-gitstatus
# Set-Alias -Name glog -Value get-gitlog
# Set-Alias -Name gco -Value get-gitcheckout
# Set-Alias -Name gcob -Value get-gitcheckoutnewBranch
# New-Alias -Name c -Value Set-GitCommit
# Set-Alias -Name open -Value start
# Set-Alias -Name gpush -Value get-GitPush
# Set-Alias -Name gpull -Value get-GitPull
# Set-Alias -Name ga -Value get-GitAdd

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Import-Module -Name Terminal-Icons
oh-my-posh --init --shell pwsh --config C:\Users\Kevin\Documents\unicorn.omp.json | Invoke-Expression
(& "C:\tools\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression

function Install-FontsFromFolder {
    param (
        [Parameter(Mandatory = $true)]
        [string]$fontsFolder
    )

    Get-ChildItem -Path $fontsFolder -Filter "*.ttf" | ForEach-Object {
        $fontPath = $_.FullName
        $fontName = $_.Name
        $null = Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class Fonts {
    [DllImport("gdi32.dll", EntryPoint = "AddFontResource")]
    public static extern int AddFontResource(string lpszFilename);
}
"@
        [Fonts]::AddFontResource($fontPath)
        Write-Host "Installed font: $fontName"
    }
}

Invoke-Expression (& { (lua C:/Users/Kevin/Documents/WindowsPowerShell/Lua/z.lua --init powershell) -join "`n" })
