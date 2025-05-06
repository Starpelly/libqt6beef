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
public struct QToolButton : QAbstractButton
{
	[LinkName("QToolButton_new")]
	public static extern QToolButton* QToolButton_new(QWidget* parent);
	[LinkName("QToolButton_new2")]
	public static extern QToolButton* QToolButton_new2();
	[LinkName("QToolButton_MetaObject")]
	public static extern QMetaObject* QToolButton_MetaObject(Self* c_this);
	[LinkName("QToolButton_Metacast")]
	public static extern void* QToolButton_Metacast(Self* c_this, char8[] param1);
	[LinkName("QToolButton_Metacall")]
	public static extern int32 QToolButton_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QToolButton_Tr")]
	public static extern libqt_string QToolButton_Tr(char8[] s);
	[LinkName("QToolButton_SizeHint")]
	public static extern QSize QToolButton_SizeHint(Self* c_this);
	[LinkName("QToolButton_MinimumSizeHint")]
	public static extern QSize QToolButton_MinimumSizeHint(Self* c_this);
	[LinkName("QToolButton_ToolButtonStyle")]
	public static extern int64 QToolButton_ToolButtonStyle(Self* c_this);
	[LinkName("QToolButton_ArrowType")]
	public static extern int64 QToolButton_ArrowType(Self* c_this);
	[LinkName("QToolButton_SetArrowType")]
	public static extern void QToolButton_SetArrowType(Self* c_this, int64 typeVal);
	[LinkName("QToolButton_SetMenu")]
	public static extern void QToolButton_SetMenu(Self* c_this, QMenu* menu);
	[LinkName("QToolButton_Menu")]
	public static extern QMenu* QToolButton_Menu(Self* c_this);
	[LinkName("QToolButton_SetPopupMode")]
	public static extern void QToolButton_SetPopupMode(Self* c_this, int64 mode);
	[LinkName("QToolButton_PopupMode")]
	public static extern int64 QToolButton_PopupMode(Self* c_this);
	[LinkName("QToolButton_DefaultAction")]
	public static extern QAction* QToolButton_DefaultAction(Self* c_this);
	[LinkName("QToolButton_SetAutoRaise")]
	public static extern void QToolButton_SetAutoRaise(Self* c_this, bool enable);
	[LinkName("QToolButton_AutoRaise")]
	public static extern bool QToolButton_AutoRaise(Self* c_this);
	[LinkName("QToolButton_ShowMenu")]
	public static extern void QToolButton_ShowMenu(Self* c_this);
	[LinkName("QToolButton_SetToolButtonStyle")]
	public static extern void QToolButton_SetToolButtonStyle(Self* c_this, int64 style);
	[LinkName("QToolButton_SetDefaultAction")]
	public static extern void QToolButton_SetDefaultAction(Self* c_this, QAction* defaultAction);
	[LinkName("QToolButton_Connect_Triggered")]
	public static extern void QToolButton_Connect_Triggered(Self* c_this, c_intptr slot);
	[LinkName("QToolButton_Event")]
	public static extern bool QToolButton_Event(Self* c_this, QEvent* e);
	[LinkName("QToolButton_MousePressEvent")]
	public static extern void QToolButton_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QToolButton_MouseReleaseEvent")]
	public static extern void QToolButton_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QToolButton_PaintEvent")]
	public static extern void QToolButton_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QToolButton_ActionEvent")]
	public static extern void QToolButton_ActionEvent(Self* c_this, QActionEvent* param1);
	[LinkName("QToolButton_EnterEvent")]
	public static extern void QToolButton_EnterEvent(Self* c_this, QEnterEvent* param1);
	[LinkName("QToolButton_LeaveEvent")]
	public static extern void QToolButton_LeaveEvent(Self* c_this, QEvent* param1);
	[LinkName("QToolButton_TimerEvent")]
	public static extern void QToolButton_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QToolButton_ChangeEvent")]
	public static extern void QToolButton_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QToolButton_HitButton")]
	public static extern bool QToolButton_HitButton(Self* c_this, QPoint* pos);
	[LinkName("QToolButton_CheckStateSet")]
	public static extern void QToolButton_CheckStateSet(Self* c_this);
	[LinkName("QToolButton_NextCheckState")]
	public static extern void QToolButton_NextCheckState(Self* c_this);
	[LinkName("QToolButton_InitStyleOption")]
	public static extern void QToolButton_InitStyleOption(Self* c_this, QStyleOptionToolButton* option);
	[LinkName("QToolButton_Tr2")]
	public static extern libqt_string QToolButton_Tr2(char8[] s, char8[] c);
	[LinkName("QToolButton_Tr3")]
	public static extern libqt_string QToolButton_Tr3(char8[] s, char8[] c, int32 n);
}