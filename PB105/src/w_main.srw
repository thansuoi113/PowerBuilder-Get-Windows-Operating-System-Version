$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_1 from statictext within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 1765
integer height = 668
boolean titlebar = true
string title = "Get OS version"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 16777215
string icon = "AppIcon!"
boolean center = true
st_1 st_1
cb_1 cb_1
end type
global w_main w_main

type prototypes
Function Boolean RtlGetNtVersionNumbers (Ref Long Major, Ref Long Minor,  Ref Long Optional ) Library  "ntdll.dll"


end prototypes
on w_main.create
this.st_1=create st_1
this.cb_1=create cb_1
this.Control[]={this.st_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.st_1)
destroy(this.cb_1)
end on

type st_1 from statictext within w_main
integer x = 82
integer y = 236
integer width = 1568
integer height = 280
integer textsize = -14
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 16777215
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_main
integer x = 498
integer y = 52
integer width = 649
integer height = 128
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Get OS version"
end type

event clicked;Long ll_Major, ll_Minor, ll_Optional

RtlGetNtVersionNumbers(ll_Major,ll_Minor, ll_Optional)

If ll_Major = 10 And ll_Minor = 0 Then
	st_1.Text = 'The version of this computer is:  ~r~n Microsoft Windows 10'
ElseIf ll_Major = 6 And ll_Minor = 3 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows 8.1'
ElseIf ll_Major = 6 And ll_Minor = 2 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows 8'
ElseIf ll_Major = 6 And ll_Minor = 1 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows 7'
ElseIf ll_Major = 6 And ll_Minor = 0 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows Server 2008'
ElseIf ll_Major = 5 And ll_Minor = 2 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows Server 2003'
ElseIf ll_Major = 5 And ll_Minor = 1 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows xp'
ElseIf ll_Major = 5 And ll_Minor = 0 Then
	st_1.Text = 'The version of this computer is: ~r~n Microsoft Windows 2000'
End If

end event

