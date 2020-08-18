#include<_HttpRequest.au3>
Func _Login($usrName,$pssWord)
	MsgBox(0,0,$usrName &'-'& $pssWord)
	If($usrName = "" or $pssWord = "") Then
		_MsgBox(32,"Notification","Please fill full infomation")
	Else
		$result = _HttpRequest(2,"http://localhost:3000/checkAccount/"&_B64Encode($usrName)&"."&_B64Encode($pssWord))
		If($result = 'true') Then
			_MsgBox(64,"Notification","Login Success")
		Else
			_MsgBox(16,"Notification","The account or password is incorrect")
		EndIf
	EndIf
EndFunc