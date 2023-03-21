SetTitleMatchMode, 2 ; Set title matching mode to "contains"

#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+s::  ; Ctrl+Shift+S

    MsgBox, 64, Chrome Shortcut, You pressed Ctrl+Shift+S in Google Chrome.
    return
}