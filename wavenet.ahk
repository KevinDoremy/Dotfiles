^!p::  ; Control+Alt+P

WinGetTitle, currentURL, A  ; Get the active window's title
StringRight, checkPDF, currentURL, 4  ; Check the last 4 characters of the title

    MsgBox, 64, PDF Detected, The active browser tab contains a PDF file.
}
else
{
    MsgBox, 48, No PDF Detected, The active browser tab does not contain a PDF file.
}
return
