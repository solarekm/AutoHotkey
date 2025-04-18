#Requires AutoHotkey v2.0

#SingleInstance Force

; Default state: true = start immediately, false = wait for hotkey
defaultState := false

; Interval and offset
interval := 10000  ; in ms
offset   := 100    ; in px

toggle := defaultState
SetTimer(Jiggle, toggle ? interval : 0)

#j:: {
    global toggle
    toggle := !toggle
    SetTimer(Jiggle, toggle ? interval : 0)
    ToolTip(toggle ? "Jiggle ON" : "Jiggle OFF", 10, 10)
    SetTimer(RemoveToolTip, 2000)
}

RemoveToolTip() {
    ToolTip()
}

Jiggle() {
    MouseMove(offset, 0, 0, "R")
    MouseMove(-offset, 0, 0, "R")
}