Attribute VB_Name = "mdlMain"
Option Explicit
Public Sub Main()
    Dim strFolder As String
    Dim strDef As String
    Dim strCommand As String
    Dim fso As FileSystemObject
    
    strCommand = Command$
    Set fso = New FileSystemObject
    With New RegExp
        .Pattern = "(" & Chr$(34) & ")(" & ".*?OBJ" & ")(" & Chr(34) & ")"
        On Error Resume Next ' we'll get an error if there is no object file listed
            strFolder = fso.GetParentFolderName(.Execute(strCommand)(0).SubMatches(1))
        On Error GoTo 0
        strDef = Dir$(strFolder & "\*.DEF") 'look to see if there is a DEF file for this project
        If strDef <> "" Then 'if there is then modify the command line that will be passed to the original linker
            strCommand = Replace(strCommand, "/DLL", "/DEF:" & Chr(34) & strFolder & "\" & strDef & Chr(34) & " /DLL")
        End If
    End With
    Shell "OriginalVBLinker.exe " & strCommand ' call original linker with original or modified command line
End Sub
