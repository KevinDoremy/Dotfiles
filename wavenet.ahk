SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+S

    ; Open the context menu
    Click, Right
    Sleep, 10  ; Wait for 0.1 second

    ; Press 'W'
    Send, w
    Sleep, 10  ; Wait for 0.1 second

    ; Press 'Enter' two times
    Send, {Enter}
    Sleep, 10  ; Wait for 0.1 second
    Send, {Enter}
    return
}
