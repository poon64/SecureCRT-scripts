#$Language="VBScript"
#$Interface="1.0"
crt.Screen.Synchronous = True
Sub Main()
 ' Prompt for the file to copy to AWS S3
 strAnswer = InputBox("Enter the path for the file to copy:")
 ' Check to see if the user provided any data, or canceled.
 If strAnswer = "" Then
 MsgBox "User Canceled."
 Exit Sub
 End If
 crt.Screen.Send "aws s3 cp " & strAnswer & " s3://scania-com-devtools-gitlab-log-storage/" & chr(13)
End Sub