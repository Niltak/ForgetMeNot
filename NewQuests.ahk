#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#IfWinActive Path of Exile

questShow := 0
/*

Loop, Read, data.txt 
{

		questTextDump.Push(A_LoopReadLine)

}

*/


QuestCreate() {

	Gui -Caption +LastFound +ToolWindow +AlwaysOnTop
	Gui, Color, 315691
	WinSet, Trans, 200

	Loop, Read, data.txt 
	{

		Gui, Add, Text, x2 y+3 cWhite, %A_LoopReadLine%

	}

	Gui, Show, x1580 y8 w350 h228

	global questShow := 1

}

z::
	IfEqual, questShow, 1 
	{

		Gui, Destroy

		questShow := 0

		WinActivate, Path of Exile

		;MsgBox "if is working!"

	}
	Else 
	{

		QuestCreate()

		WinActivate, Path of Exile

		;MsgBox "else is working!"		

	}
	

	;MsgBox % questTextPlz

	/*

	for index, element in questTextDump 
	{

		MsgBox % "Element number " . index . " is " . element

	}
	
	*/

Return