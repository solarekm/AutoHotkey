#Requires AutoHotkey v2.0
#SingleInstance force
#Warn VarUnset, Off   ; Disable warnings for uninitialized variables

global AlwaysOnTopState := Map() ; Use Map to track the "Always-on-top" state of windows

#t:: {
    hwnd := WinGetID("A") ; Get the handle of the active window
    if !hwnd {
        ToolTip "No active window!"
        SetTimer(() => ToolTip(), -1000) ; Hide tooltip after 1 second
        return
    }
    ; MsgBox "Debug: hwnd = " hwnd ; Debugging: Display the window handle

    ; Toggle "Always-on-top" state
    if !AlwaysOnTopState.Has(hwnd) {
        AlwaysOnTopState[hwnd] := false ; Initialize the state if not already tracked
    }
    currentState := AlwaysOnTopState[hwnd]
    newState := !currentState ; Toggle the state
    WinSetAlwaysOnTop(newState ? 1 : 0, hwnd) ; Apply the new state (1 for On, 0 for Off)
    AlwaysOnTopState[hwnd] := newState ; Update the state in the dictionary

    ; Display the new state in a tooltip
    ToolTip newState ? "Always-on-top: ON" : "Always-on-top: OFF"
    SetTimer(() => ToolTip(), -1000) ; Hide tooltip after 1 second
}
return