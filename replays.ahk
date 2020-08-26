;Made by ziep

#singleinstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+h::  ;<--THIS IS YOUR KEYBIND, DO NOT REMOVE '::'
clipboard:= clipboard
if winExist("ahk_exe hon.exe")
{
IfWinNotActive, ahk_exe hon.exe
{
	Controlsend,, {CTRL down}{F8}{ctrl up}, ahk_exe hon.exe
	ControlSend,, startReplay M, ahk_exe hon.exe
	Sleep, 50
	ControlSend,, {CTRL DOWN}{v}{CTRL UP}, ahk_exe hon.exe
	ControlSend,, {ENTER}, ahk_exe hon.exe
}
}
if !WinExist("ahk_exe hon.exe")
	MsgBox, Couldn't find 'hon.exe' in active windows
if WinActive("ahk_exe hon.exe")
{
	Send, {Ctrl Down}
	sleep, 60
	send, {F8}
	sleep, 50
	Send, {Ctrl Up}
	sleep, 50
	Send, startReplay M
	Sleep, 50
	Send, {CTRL DOWN}{v}{CTRL UP}
	Send, {ENTER}
}
return
