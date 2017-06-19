#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SysGet, VirtualWidth, 78
SysGet, VirtualHeight, 79

ImageSearch, FoundX, FoundY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Scan1.bmp
	If(ErrorLevel == 2){
		MsgBox, 262144,, Scan1.bmp not found. Place screenshot of target alongside script.
			ExitApp
	}else{
	If(ErrorLevel == 1){
		MsgBox, 262148,, Scan found 0 results. Continue Anyways?
			IfMsgBox Yes
				MsgBox, 262144,, Press ESC at anytime to pause script.
			IfMsgBox No
				ExitApp
	}else{
		MsgBox, 262144,, Image Found. Press ESC to close the script.
		}
	}
loop, {
	if (BreakLoop = 1)
		break
ImageSearch, FoundX, FoundY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Scan1.bmp
	If(ErrorLevel == 0){
		Click %FoundX%, %FoundY%
		sleep, 750
		SendEvent {Click down}{Click up}
		sleep, 1000
	}else{
		sleep, 30000
		Continue
		}
	}

Esc::
BreakLoop = 1
return