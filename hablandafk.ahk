
Gui, 2:Add, Button, x11 y69 w130 h40 gKey, Готово
Gui, 2:Add, Edit, x12 y29 w130 h30 vNick, 
Gui, 2:Add, Text, x12 y-1 w130 h30 , Введи ник 
; Generated using SmartGUI Creator for SciTE
Gui, 2:Show, w157 h133, Untitled GUI
return

GuiClose:
ExitApp
Minute := 0
key:
	GuiControlGet, Nick
	MsgBox Ваш ник: %Nick%
	MsgBox Для продолжения нажми Numpad 0
Numpad0::
	send, :enable 566 {Enter}
	send, %Nick% афк уже %Minute% Минут
	sleep 60000
	Minute += 1
	
