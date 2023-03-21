SetTitleMatchMode, 2  ; Set title matching mode to "contains"
#IfWinActive, Microsoft Edge ahk_class Chrome_WidgetWin_1
#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^!p::  ; Control+Alt+P

    WinGetTitle, currentURL, A  ; Get the active window's title
    StringRight, checkPDF, currentURL, 4  ; Check the last 4 characters of the title

    if (checkPDF == ".pdf")
    {
        MsgBox, 64, PDF Detected, The active browser tab contains a PDF file.
    }
    else
    {
        MsgBox, 48, No PDF Detected, The active browser tab does not contain a PDF file.
    }
    return
}