#Requires AutoHotkey v2.0

#SingleInstance Force

; Win+T: Toggle Always-On-Top for the active window
#t:: {
    WinSetAlwaysOnTop("", "", !WinGetAlwaysOnTop())
}