#Requires AutoHotkey v2.0

; ===== Basic Expansions =====
::addr::123 Main St.`nAnytown, USA
::sig::Best regards,`nJohn Doe

; ===== Advanced Options =====
:*:btw::by the way               ; expand even inside other words
:?::id::system identifier        ; expand without delimiter
:?:C:Test::TestExact             ; case-sensitive, no delimiter required

; ===== Date and Time =====
::date::
{
    date := FormatTime(A_Now, "yyyy/MM/dd")
    SendText(date)
}
::time::
{
    time :=FormatTime(A_Now, "HH:mm")
    SendText(time)
}

; ===== Emoticons and Emoji =====
::shrug::¯\_(ツ)_/¯
::smile::😊

; ===== Contact Information =====
::tel::+1 (555) 123-4567
::email::your.email@example.com

; ===== Bracketed Shortcuts =====
::[br]::
{
    SendText("Best regards,`n")
    SendText("John Doe`n")
    SendText("123 Main St.`n")
    SentText("Anytown, USA")
}