SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+P


    WinGetTitle, currentURL, A  ; Get the active window's title
    ;MsgBox, 64, URL actuel, L'URL de l'onglet actif est : %currentURL%
    return
}