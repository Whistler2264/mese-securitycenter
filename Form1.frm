VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Security Center"
   ClientHeight    =   5805
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5880
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5805
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Height          =   375
      Left            =   4680
      TabIndex        =   6
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Frame Frame4 
      Caption         =   "Internet Security"
      Height          =   1575
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   3480
      Width           =   5655
      Begin VB.CommandButton Command4 
         Caption         =   "Settings..."
         Height          =   375
         Left            =   4080
         TabIndex        =   9
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Adjust the level of security and functionality for websites on the Internet that your computer interacts with."
         Height          =   615
         Index           =   1
         Left            =   720
         TabIndex        =   7
         Top             =   360
         Width           =   4695
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   120
         Picture         =   "Form1.frx":0ABA
         Top             =   360
         Width           =   480
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Windows Firewall"
      Height          =   1575
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   1777
      Width           =   5655
      Begin VB.PictureBox Picture2 
         BorderStyle     =   0  'None
         Height          =   480
         Left            =   120
         Picture         =   "Form1.frx":167C
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   11
         Top             =   360
         Width           =   480
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Settings..."
         Height          =   375
         Left            =   4080
         TabIndex        =   8
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Control the incoming and outgoing network traffic on your computer based on security rules."
         Height          =   495
         Index           =   2
         Left            =   720
         TabIndex        =   10
         Top             =   360
         Width           =   4695
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Automatic Updates"
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   160
      Width           =   5655
      Begin VB.CommandButton Command1 
         Caption         =   "Settings..."
         Height          =   375
         Index           =   0
         Left            =   4080
         TabIndex        =   5
         Top             =   960
         Width           =   1455
      End
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   480
         Left            =   120
         Picture         =   "Form1.frx":1986
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   4
         Top             =   360
         Width           =   480
      End
      Begin VB.Label Label1 
         Caption         =   "Change the way how automatically Windows will update your computer. "
         Height          =   495
         Index           =   0
         Left            =   720
         TabIndex        =   3
         Top             =   360
         Width           =   4695
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
    Shell "rundll32.exe shell32.dll,Control_RunDLL wuaucpl.cpl", vbNormalFocus
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Command3_Click()
    Shell "rundll32.exe shell32.dll,Control_RunDLL firewall.cpl", vbNormalFocus
End Sub

Private Sub Command4_Click()
    Shell "rundll32.exe shell32.dll,Control_RunDLL inetcpl.cpl,,1", vbNormalFocus
End Sub
