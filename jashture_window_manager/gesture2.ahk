FileReadLine, WindowTitle, window_titles.txt, 2 ; Read the second line for Gesture 2

SetTitleMatchMode, 2
^+!2::  ; Hotkey for Shift+Ctrl+Alt+2
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
