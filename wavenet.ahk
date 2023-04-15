SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+S

    WinGetTitle, currentURL, A  ; Get the active window's title

    ; Copy URL to clipboard
    Send, ^l  ; Highlight the address bar
    Send, ^c  ; Copy the URL
    ClipWait, 1  ; Wait for the clipboard to contain text
    MsgBox, 64, URL in Clipboard, The URL in the clipboard

    ; Check if the URL ends with ".pdf"
    if (RegExMatch(clipboard, "\.pdf$"))
    {
        ; Open the contextual menu and press 'S' and 'Enter'
        Click, Right  ; Right click to open the context menu
        Sleep, 100  ; Wait for a short time to allow the menu to open
        Send, s{Enter}  ; Press 'S' and 'Enter'
    }
    else
    {
        Send, ^+s  ; Press Ctrl+Shift+S
    }

    return
}
