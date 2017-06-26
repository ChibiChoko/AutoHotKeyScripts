#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event  ; Recommended for new scripts due to its superior speed and reliability.
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
SetDefaultMouseSpeed, 5
SetKeyDelay, 100, 250
Loop,{
	MaterialLoop:
	ImageSearch, ArrowX, ArrowY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Arrow.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Arrow.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}
	ImageSearch, BoltX, BoltY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Bolt.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Bolt.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}		
	ImageSearch, PaperX, PaperY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Paper.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Paper.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}
	ImageSearch, OvenX, OvenY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Oven.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Oven.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}
	ImageSearch, MenuX, MenuY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Menu.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Menu.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}
		Break
	}
	
loop, {
	if (BreakLoop = 1)
		break
	Click %OvenX%,%OvenY%		
		sleep 1500
	ImageSearch, MenuX, MenuY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Menu.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Menu.bmp not found. Place screenshot of target alongside script.
				ExitApp
				}
		Sleep 500
			Sendevent {Click %ArrowX%,%ArrowY%,down,right}
					Sendevent {click up,right}
	Sleep 500
	ImageSearch, DivideX, DivideY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Divide.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Divide.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %DivideX%,%DivideY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	ImageSearch, OkayX, OkayY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Okay.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Okay.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %OkayX%,%OkayY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	Sendevent {Click %MenuX%,%MenuY%,down}
				sleep 500
					Sendevent {Click up}
	Sleep 500 ;End Item 1 Placement
	ImageSearch, MenuX, MenuY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Menu.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Menu.bmp not found. Place screenshot of target alongside script.
				ExitApp
				}
		Sleep 500
			Sendevent {Click %BoltX%,%BoltY%,down,right}
					Sendevent {click up,right}
	sleep 500
	ImageSearch, DivideX, DivideY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Divide.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Divide.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %DivideX%,%DivideY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	ImageSearch, OkayX, OkayY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Okay.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Okay.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %OkayX%,%OkayY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	Sendevent {Click %MenuX%,%MenuY%,down}
				sleep 500
					Sendevent {Click up}
	Sleep 500 ;End Item 2 Placement
	ImageSearch, MenuX, MenuY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Menu.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Menu.bmp not found. Place screenshot of target alongside script.
				ExitApp
				}
		Sleep 500
			Sendevent {Click %PaperX%,%PaperY%,down,right}
					Sendevent {click up,right}
	sleep 500
	ImageSearch, DivideX, DivideY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Divide.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Divide.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %DivideX%,%DivideY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	ImageSearch, OkayX, OkayY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Okay.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Okay.bmp not found. Place screenshot of target alongside script.
				ExitApp
		}else{
			sleep 500
			Sendevent {Click %OkayX%,%OkayY%,down}
			sleep 500
			Sendevent {Click up}
			}
	Sleep 500
	Sendevent {Click %MenuX%,%MenuY%,down}
				sleep 500
					Sendevent {Click up}
	Sleep 500 ;End Item 3 Placement
	ImageSearch, SynthesisX, SynthesisY, 0, 0, %VirtualWidth%, %VirtualHeight%, *15, %A_WorkingDir%\Synthesis.bmp
		If(ErrorLevel > 0){
			MsgBox, 262144,, Synthesis.bmp not found. Place screenshot of target alongside script.
				ExitApp
				}
	Sendevent {Click %SynthesisX%,%SynthesisY%,down}
				sleep 500
					Sendevent {Click up}
				Sleep 4500
	Click %OvenX%,%OvenY%
		sleep 500
	}

ESC::
BreakLoop = 1
return