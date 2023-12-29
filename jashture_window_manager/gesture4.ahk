FileReadLine, WindowTitle, window_titles.txt, 4 ; Read the third line for Gesture 4

SetTitleMatchMode, 2
^+!4::  ; Hotkey for Shift+Ctrl+Alt+4
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
