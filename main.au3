#Region -- LIBRARY & FUNCTION --
#NoTrayIcon
#include<_MsgBox.au3>
#include "controllers\mainController.au3"
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include "MetroGUI-UDF\MetroGUI_UDF.au3"
#include "MetroGUI-UDF\_GUIDisable.au3" ; For dim effects when msgbox is displayed
#include <GUIConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPISys.au3>
#EndRegion -- LIBRARY & FUNCTION --

#Region -- MAIN FORM --
_WinAPI_AddFontResourceEx(@ScriptDir & '\public\fontawesome.ttf', $FR_PRIVATE)
$widthDesk = _WinAPI_GetSystemMetrics(78)
$heightDesk = _WinAPI_GetSystemMetrics(79)
$mainForm = _Metro_CreateGUI("Manage Shop", 280, 180, -1, -1)
GUICtrlSetResizing ( $mainForm, $GUI_DOCKAUTO )
_Metro_SetGUIOption($mainForm,True)
$Control_Buttons = _Metro_AddControlButtons(True, False, True, False, False, 0xDFF9FB, 0x000000)
$GUI_CLOSE_BUTTON = $Control_Buttons[0]
$GUI_MAXIMIZE_BUTTON = $Control_Buttons[1]
$GUI_RESTORE_BUTTON = $Control_Buttons[2]
$GUI_MINIMIZE_BUTTON = $Control_Buttons[3]
$GUI_FULLSCREEN_BUTTON = $Control_Buttons[4]
$GUI_FSRestore_BUTTON = $Control_Buttons[5]
$GUI_MENU_BUTTON = $Control_Buttons[6]
GUISetBkColor(0xDFF9FB)
$usrName = GUICtrlCreateInput("", 96, 48, 121, 21)
$pssWord = GUICtrlCreateInput("", 96, 80, 121, 21,$ES_PASSWORD)
$L_usrName = GUICtrlCreateLabel("Username", 40, 51, 52, 17)
$L_pssWord = GUICtrlCreateLabel("Password", 40, 83, 50, 17)
$_Login = _Metro_CreateButton("Login", 128, 112, 75, 25,0x000000, "0xDFF9FB","Arial", 10, 1, "0x404040")
;_Metro_DisableButton($_Login)
GUISetState(@SW_SHOW)

#EndRegion -- MAIN FORM --

#Region -- HANDLE --
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE, $GUI_CLOSE_BUTTON
			Exit
		Case $_Login
			$valInputUsr = GUICtrlRead($usrName)
			$valInputPwd = GUICtrlRead($pssWord)
			$result = _Login($valInputUsr,$valInputPwd)

	EndSwitch
WEnd
#EndRegion -- HANDLE --