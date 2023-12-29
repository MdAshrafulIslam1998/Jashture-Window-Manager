FileReadLine, WindowTitle, window_titles.txt, 3 ; Read the third line for Gesture 3

SetTitleMatchMode, 2
^+!3::  ; Hotkey for Shift+Ctrl+Alt+3
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
