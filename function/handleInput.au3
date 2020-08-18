

Func checkInput($arrControlID,$notif)
	For $i = 0 To UBound($arrControlID) - 1 Step 1
		;MsgBox(0,0,$arrControlID[$i])
		;MsgBox(0,0,UBound($arrControlID))
		If( GUICtrlRead($arrControlID[$i]) <> "" ) Then

		EndIf
		If( GUICtrlRead($arrControlID[$i]) = "" ) Then
			_MsgBox(32,"Notification",$notif)
		EndIf

	Next

EndFunc