FileReadLine, WindowTitle, window_titles.txt, 5 ; Read the third line for Gesture 5

SetTitleMatchMode, 2
^+!5::  ; Hotkey for Shift+Ctrl+Alt+5
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
