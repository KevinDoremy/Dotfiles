SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+S

    ; Open the context menu
    Send, {AppsKey}  ; Alternatively, use Send, +{F10} for Shift + F10
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

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+x::  ; Ctrl+Shift+x

    ; Open the context menu
    Send, {AppsKey}  ; Alternatively, use Send, +{F10} for Shift + F10
    Sleep, 10  ; Wait for 0.1 second

    ; Press 'x'
    Send, x
    Sleep, 10  ; Wait for 0.1 second

    ; Press 'Enter' two times
    Send, {Enter}
    Sleep, 10  ; Wait for 0.1 second
    Send, {Enter}
    return
}