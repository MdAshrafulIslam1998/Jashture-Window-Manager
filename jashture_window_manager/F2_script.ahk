#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force

filePath := "C:\jashture_window_manager\window_titles.txt" ; Path to the text file
tooltipVisible := false ; Keeps track of tooltip visibility

F2::
if (tooltipVisible)
{
    Gui, 2: Destroy ; Hide the tooltip
    tooltipVisible := false
}
else
{
    FileReadLine, line1, %filePath%, 1
    FileReadLine, line2, %filePath%, 2
    FileReadLine, line3, %filePath%, 3
    FileReadLine, line4, %filePath%, 4
    FileReadLine, line5, %filePath%, 5
    FileReadLine, line6, %filePath%, 6

    tooltipText := "/           " . line1 . "     1" . "`n-->      " . line2 . "     2" . "`n\         " . line3 . "     3" . "`n|           " . line4 . "     4" . "`n/          " . line5 . "     5" . "`n<--      " . line6 . "     6"
        
        Gui, 2: New, +AlwaysOnTop -Caption +ToolWindow, Custom Tooltip
        Gui, 2: Font, s12, Arial ; Change font size and type here
        Gui, 2: Add, Text,, %tooltipText%
        Gui, 2: Show, AutoSize, Custom Tooltip
        tooltipVisible := true
}
Return
