# Always On Top Toggle

A simple AutoHotkey v2 script that lets you toggle the "always on top" state for the active window using the `Win + T` hotkey.

## Features

- Toggle the always-on-top property of the currently active window.
- Instant feedback: the window immediately sticks or unsticks from the top layer.
- Lightweight: just a few lines of code.

## Requirements

- Windows operating system.
- **AutoHotkey v2** installed (https://www.autohotkey.com/).

## Installation

1. Create a folder named `AlwaysOnTop` in your scripts directory or repository.
2. Save the following script as `AlwaysOnTop.ahk` inside that folder.
3. Double-click `AlwaysOnTop.ahk` to run it.

## Usage

- Press `Win + T` to toggle the always-on-top state of the active window.
- Press the same hotkey again to revert.

## Example Script (`AlwaysOnTop.ahk`)

```ahk
#Requires AutoHotkey v2.0
#SingleInstance Force

; Win+T: Toggle Always-On-Top for the active window
#t:: {
    WinSetAlwaysOnTop("", "", !WinGetAlwaysOnTop())
}
```

## Contributing

Feel free to fork this script and customize the hotkey or add other window management features.

## License

This script is released under the MIT License. Modify and redistribute freely.

