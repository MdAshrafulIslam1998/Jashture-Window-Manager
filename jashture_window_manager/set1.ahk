#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; --- User-configurable variables ---
filePath := "C:\jashture_window_manager\window_titles.txt" ; File path for the titles
lineNumber := 1 ; Line number to modify (1-6)
gestureScriptPath := "C:\jashture_window_manager\gesture1.ahk" ; Full path to the gesture script

; Opens an input box to get the new text
InputBox, userInput, Update Line, Please enter the new text for line %lineNumber%:, , 300, 150
if ErrorLevel  ; If the user pressed Cancel, exit the script
    ExitApp

; Read the file and store all lines in an array
FileRead, fileContent, %filePath%
linesArray := StrSplit(fileContent, "`n", "`r")

; Replace the target line with the user input (trimming trailing spaces)
linesArray[lineNumber] := RTrim(userInput)

; Rebuild the file content from the array
newFileContent := ""
Loop, % linesArray.MaxIndex()
{
    newFileContent .= linesArray[A_Index] . "`n"
}

; Write the new content to the file
FileDelete, %filePath%
FileAppend, %newFileContent%, %filePath%

Sleep, 300 ; Waits for 300 milliseconds

; Run the specified gesture script
Process, Close, % "ahk_exe " . gestureScriptPath ; Close any running instance of the gesture script
Run, %gestureScriptPath% ; Run the gesture script

ExitApp ; Exits the script after execution
