VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   1200
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal _
    lpOperation As String, ByVal lpFile As String, ByVal _
    lpParameters As String, ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

Private Const SW_SHOWNORMAL = 1

Public Sub OpenDirectory(Directory As String)

      ShellExecute 0, "Open", Directory, vbNullString, _
        vbNullString, SW_SHOWNORMAL

End Sub

Public Sub OpenExplorer(Optional InitialDirectory As String)

      ShellExecute 0, "Explore", InitialDirectory, _
        vbNullString, vbNullString, SW_SHOWNORMAL

End Sub


Private Sub Command1_Click()
OpenDirectory ("e:")

End Sub
