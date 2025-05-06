using System;
using System.Interop;
namespace Qt;

public struct QWhatsThis
{
	[LinkName("QWhatsThis_new")]
	public static extern QWhatsThis* QWhatsThis_new(QWhatsThis* other);
	[LinkName("QWhatsThis_new2")]
	public static extern QWhatsThis* QWhatsThis_new2(QWhatsThis* other);
	[LinkName("QWhatsThis_EnterWhatsThisMode")]
	public static extern void QWhatsThis_EnterWhatsThisMode();
	[LinkName("QWhatsThis_InWhatsThisMode")]
	public static extern bool QWhatsThis_InWhatsThisMode();
	[LinkName("QWhatsThis_LeaveWhatsThisMode")]
	public static extern void QWhatsThis_LeaveWhatsThisMode();
	[LinkName("QWhatsThis_ShowText")]
	public static extern void QWhatsThis_ShowText(QPoint* pos, libqt_string text);
	[LinkName("QWhatsThis_HideText")]
	public static extern void QWhatsThis_HideText();
	[LinkName("QWhatsThis_CreateAction")]
	public static extern QAction* QWhatsThis_CreateAction();
	[LinkName("QWhatsThis_ShowText3")]
	public static extern void QWhatsThis_ShowText3(QPoint* pos, libqt_string text, QWidget* w);
	[LinkName("QWhatsThis_CreateAction1")]
	public static extern QAction* QWhatsThis_CreateAction1(QObject* parent);
}