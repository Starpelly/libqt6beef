using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QToolButton__ToolButtonPopupMode
{
	DelayedPopup = 0,
	MenuButtonPopup = 1,
	InstantPopup = 2,
}
public struct QToolButton
{
	[LinkName("QToolButton_new")]
	public static extern void* QToolButton_new(QWidget parent);
	[LinkName("QToolButton_new2")]
	public static extern void* QToolButton_new2();
	[LinkName("QToolButton_MetaObject")]
	public static extern QMetaObject QToolButton_MetaObject(void* c_this);
	[LinkName("QToolButton_Metacast")]
	public static extern void QToolButton_Metacast(void* c_this, char8[] param1);
	[LinkName("QToolButton_Metacall")]
	public static extern int32 QToolButton_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QToolButton_Tr")]
	public static extern char8[] QToolButton_Tr(char8[] s);
	[LinkName("QToolButton_SizeHint")]
	public static extern QSize QToolButton_SizeHint(void* c_this);
	[LinkName("QToolButton_MinimumSizeHint")]
	public static extern QSize QToolButton_MinimumSizeHint(void* c_this);
	[LinkName("QToolButton_ToolButtonStyle")]
	public static extern int64 QToolButton_ToolButtonStyle(void* c_this);
	[LinkName("QToolButton_ArrowType")]
	public static extern int64 QToolButton_ArrowType(void* c_this);
	[LinkName("QToolButton_SetArrowType")]
	public static extern void QToolButton_SetArrowType(void* c_this, int64 typeVal);
	[LinkName("QToolButton_SetMenu")]
	public static extern void QToolButton_SetMenu(void* c_this, QMenu menu);
	[LinkName("QToolButton_Menu")]
	public static extern QMenu QToolButton_Menu(void* c_this);
	[LinkName("QToolButton_SetPopupMode")]
	public static extern void QToolButton_SetPopupMode(void* c_this, int64 mode);
	[LinkName("QToolButton_PopupMode")]
	public static extern int64 QToolButton_PopupMode(void* c_this);
	[LinkName("QToolButton_DefaultAction")]
	public static extern QAction QToolButton_DefaultAction(void* c_this);
	[LinkName("QToolButton_SetAutoRaise")]
	public static extern void QToolButton_SetAutoRaise(void* c_this, bool enable);
	[LinkName("QToolButton_AutoRaise")]
	public static extern bool QToolButton_AutoRaise(void* c_this);
	[LinkName("QToolButton_ShowMenu")]
	public static extern void QToolButton_ShowMenu(void* c_this);
	[LinkName("QToolButton_SetToolButtonStyle")]
	public static extern void QToolButton_SetToolButtonStyle(void* c_this, int64 style);
	[LinkName("QToolButton_SetDefaultAction")]
	public static extern void QToolButton_SetDefaultAction(void* c_this, QAction defaultAction);
	[LinkName("QToolButton_Triggered")]
	public static extern void QToolButton_Triggered(void* c_this, QAction param1);
	[LinkName("QToolButton_Event")]
	public static extern bool QToolButton_Event(void* c_this, QEvent e);
	[LinkName("QToolButton_MousePressEvent")]
	public static extern void QToolButton_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QToolButton_MouseReleaseEvent")]
	public static extern void QToolButton_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QToolButton_PaintEvent")]
	public static extern void QToolButton_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QToolButton_ActionEvent")]
	public static extern void QToolButton_ActionEvent(void* c_this, QActionEvent param1);
	[LinkName("QToolButton_EnterEvent")]
	public static extern void QToolButton_EnterEvent(void* c_this, QEnterEvent param1);
	[LinkName("QToolButton_LeaveEvent")]
	public static extern void QToolButton_LeaveEvent(void* c_this, QEvent param1);
	[LinkName("QToolButton_TimerEvent")]
	public static extern void QToolButton_TimerEvent(void* c_this, QTimerEvent param1);
	[LinkName("QToolButton_ChangeEvent")]
	public static extern void QToolButton_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QToolButton_HitButton")]
	public static extern bool QToolButton_HitButton(void* c_this, QPoint pos);
	[LinkName("QToolButton_CheckStateSet")]
	public static extern void QToolButton_CheckStateSet(void* c_this);
	[LinkName("QToolButton_NextCheckState")]
	public static extern void QToolButton_NextCheckState(void* c_this);
	[LinkName("QToolButton_InitStyleOption")]
	public static extern void QToolButton_InitStyleOption(void* c_this, QStyleOptionToolButton option);
	[LinkName("QToolButton_Tr2")]
	public static extern char8[] QToolButton_Tr2(char8[] s, char8[] c);
	[LinkName("QToolButton_Tr3")]
	public static extern char8[] QToolButton_Tr3(char8[] s, char8[] c, int32 n);
}