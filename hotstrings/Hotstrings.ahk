#Requires AutoHotkey v2.0

; ===== Basic Expansions =====
::addr::123 Main St.`nAnytown, USA
::sig::Best regards,`nJohn Doe

; ===== Advanced Options =====
:*:btw::by the way               ; expand even inside other words
:?::id::system identifier        ; expand without delimiter
:?:C:Test::TestExact             ; case-sensitive, no delimiter required

; ===== Date and Time =====
::date::% A_YYYY "/" SubStr("0" . A_MM, -1) "/" SubStr("0" . A_DD, -1)
::time::% SubStr("0" . A_Hour, -1) ":" SubStr("0" . A_Min, -1)

; ===== Emoticons and Emoji =====
::shrug::¯\_(ツ)_/¯
::smile::😊

; ===== Code Snippets =====
::fori::for (i = 0; i < %Count%; i++) {
    ; ...
}

; ===== Contact Information =====
::tel::+1 (555) 123-4567
::email::your.email@example.com

; ===== Bracketed Shortcuts =====
::\[br\]::Best regards.`n

; Or as a multi-line definition:
::\[br\]::
{
    Send "Best regards.`n"
}
