Set WshShell = WScript.CreateObject("WScript.Shell")
WScript.Echo "Hello World!"

Sub checkengine
  pcengine = LCase(Mid(WScript.FullName, InstrRev(WScript.FullName,"\")+1))
' BEGIN CALLOUT A
  If Not pcengine="cscript.exe" Then
    Set WshShell = CreateObject("WScript.Shell")
    WshShell.Run "CSCRIPT.EXE """ & WScript.ScriptFullName & """"
    WScript.Quit
  End If
' END CALLOUT A
End Sub