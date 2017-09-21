#$Language="VBScript"
#$Interface="1.0"
crt.Screen.Synchronous = True
Sub Main()
 ' Prompt for the alias to get unsuspended
 strAnswer = InputBox("Enter alias to unsuspend:")
 ' Check to see if the user provided any data, or canceled.
 If strAnswer = "" Then
 MsgBox "User Canceled."
 Exit Sub
 End If
 crt.Screen.Send "ghe-user-unsuspend " & strAnswer & chr(13)
 crt.Screen.WaitForString "Use ghe-user-suspend to reverse this action."
 End Sub 