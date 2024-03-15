SetTitleMatchMode, 2 ; Set title matching mode to "contains"

; Key combination for the shortcut
^+s::  ; Ctrl+Shift+S

rateValue := "+75%" ; Declare and initialize the rateValue variable

; Simulate a Ctrl+C keypress to copy the underlined or selected text
Send, ^c

; Wait for the clipboard to contain data or timeout after 1 second (1000 milliseconds)
ClipWait, 1

; If the clipboard is empty even after the copy command, show a message and exit
if (Clipboard = "") {
    MsgBox, Clipboard is empty!
    return
}

; To ensure that problematic characters in the clipboard don't break the command, we'll use quotes around the %Clipboard%
Run, pythonw C:\Dev\edge-tts\src\edge_playback\__main__.py --text "%Clipboard%" --rate "%rateValue%" 
return
