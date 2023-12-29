FileReadLine, WindowTitle, window_titles.txt, 1 ; Read the first line for Gesture 1

SetTitleMatchMode, 2
^+!1::  ; Hotkey for Shift+Ctrl+Alt+1
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
