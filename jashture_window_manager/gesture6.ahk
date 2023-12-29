FileReadLine, WindowTitle, window_titles.txt, 6 ; Read the third line for Gesture 6

SetTitleMatchMode, 2
^+!6::  ; Hotkey for Shift+Ctrl+Alt+6
    IfWinExist, %WindowTitle%
    {
        WinActivate
    }
    else
    {
        MsgBox, Window with title containing "%WindowTitle%" not found.
    }
Return
