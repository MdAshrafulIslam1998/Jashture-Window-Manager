
F1::
  {   
        Send {Alt Down}{Tab} ;Bring up switcher immediately            
        KeyWait, F1, T.5  ; Go to next window; wait 0s before looping
        if (Errorlevel)
       {       
        While ( GetKeyState( "F1","P" ) ) {
            Send {Tab}        
            Sleep, 400 ; wait 400ms before going to next window
        }
    }
        Send {Alt Up} ;Close switcher on hotkey release
}
return

