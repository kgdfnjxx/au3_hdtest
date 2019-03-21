#include <sendMessage.au3>

_Main()


Func _Main()
	Const $HDPATH = "./HDTune硬盘检测工具.exe"
	Const $HDTITLE = "HD Tune 专业版 v5.00 - 硬盘专业工具 "
	Dim $report
	
	Run($HDPATH)
	WinWait($HDTITLE)
	WinActivate($HDTITLE)
	
	Sleep(300)
	;快捷键运行到健康
	Send("^{TAB 10}")
	Sleep(300)
	ControlClick($HDTITLE,"","Button1","left",1)
	$report =  ClipGet()
	MsgBox(0,"",$report)
	


EndFunc