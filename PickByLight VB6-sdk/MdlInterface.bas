Attribute VB_Name = "MdlInterface"
Option Explicit

Public Const DLL_PROCESS_ATTACH = 1

' All 'classic' DLLs need this entry point, but we don't need to do too much in it
Public Function DllMain(hInst As Long, fdwReason As Long, lpvReserved As Long) As Boolean
   If fdwReason = DLL_PROCESS_ATTACH Then DllMain = True
End Function

Public Function VBDLLDemo(lSource As Long) As Long
    PickByLightSDK = lSource + 1
End Function
