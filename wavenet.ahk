SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+S

    WinGetTitle, currentURL, A  ; Get the active window's title
    StringRight, checkPDF, currentURL, 4  ; Check the last 4 characters of the title

    if (checkPDF == ".pdf")
    {
        MsgBox, 64, PDF détecté, L'onglet du navigateur actif contient un fichier PDF.
    }
    else
    {
        MsgBox, 48, Aucun PDF détecté, L'onglet du navigateur actif ne contient pas de fichier PDF.
    }
    return
}