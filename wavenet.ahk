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


#IfWinActive, Google Chrome ahk_class Chrome_WidgetWin_1
{
    ; Key combination for the shortcut
    ^+x::  ; Ctrl+Shift+x
    ShowContextMenu()
return
}
ShowContextMenu()
{
    ; Create a new context menu
    Menu, MyContextMenu, Add, Item 1, Item1Action
    Menu, MyContextMenu, Add, Item 2, Item2Action
    Menu, MyContextMenu, Add, Item 3, Item3Action
    
    ; Set the GUI options, including the desired opacity
    Gui, MyContextMenuGUI: -Caption +ToolWindow +AlwaysOnTop +E0x20
    Gui, MyContextMenuGUI: Color, FFFFFF
    Gui, MyContextMenuGUI: Add, Text, x0 y0 hwndMyContextMenuText, % "MyContextMenu"
    
    ; Set the desired opacity (0-255, where 255 is fully opaque)
    WinSet, Transparent, 180, % "ahk_id" MyContextMenuText
    
    ; Show the custom context menu
    Menu, MyContextMenu, Show, % A_CaretX, % A_CaretY
}

; Define the actions for the custom context menu items
Item1Action:
    MsgBox, You selected Item 1.
return

Item2Action:
    MsgBox, You selected Item 2.
return

Item3Action:
    MsgBox, You selected Item 3.
return