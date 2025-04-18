# AutoHotkey Mouse Jiggler

A simple AutoHotkey v2 script that simulates mouse movement to prevent the computer from sleeping or activating the screensaver.

## Features

- Simulates cursor movement: moves right by a specified offset and then moves back.
- Prevents the system from locking or entering sleep mode.
- Toggles on/off with the `Win + J` hotkey.

## Requirements

- Windows with **AutoHotkey v2** installed (https://www.autohotkey.com/)
- The script file saved with a `.ahk` extension (e.g., `MouseJiggler.ahk`)

## Configuration

At the top of the script, you can adjust the following variables:

- `defaultState` – `true` or `false`. Set to `true` to start jiggling immediately on launch, or `false` to wait for the hotkey.
- `interval` – time in milliseconds between each call to `Jiggle()` (default `10000` ms = 10 s).
- `offset` – the number of pixels to move the cursor (default `100` px).

## Usage

1. Clone or download the repository containing `MouseJiggler.ahk`.
2. Adjust the `defaultState`, `interval`, and `offset` values as needed.
3. Double-click the `.ahk` script to run it.
4. Press `Win + J` at any time to toggle the mouse jiggling on or off.

## Example Script

```ahk
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
```

## License

Released under the MIT License. Feel free to modify and distribute.

