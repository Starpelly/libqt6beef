using System;
using System.Interop;
namespace Qt;

public struct QMenuBar : QWidget
{
	[LinkName("QMenuBar_new")]
	public static extern QMenuBar* QMenuBar_new(QWidget* parent);
	[LinkName("QMenuBar_new2")]
	public static extern QMenuBar* QMenuBar_new2();
	[LinkName("QMenuBar_MetaObject")]
	public static extern QMetaObject* QMenuBar_MetaObject(Self* c_this);
	[LinkName("QMenuBar_Metacast")]
	public static extern void* QMenuBar_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMenuBar_Metacall")]
	public static extern int32 QMenuBar_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMenuBar_Tr")]
	public static extern libqt_string QMenuBar_Tr(char8[] s);
	[LinkName("QMenuBar_AddMenu")]
	public static extern QAction* QMenuBar_AddMenu(Self* c_this, QMenu* menu);
	[LinkName("QMenuBar_AddMenuWithTitle")]
	public static extern QMenu* QMenuBar_AddMenuWithTitle(Self* c_this, libqt_string title);
	[LinkName("QMenuBar_AddMenu2")]
	public static extern QMenu* QMenuBar_AddMenu2(Self* c_this, QIcon* icon, libqt_string title);
	[LinkName("QMenuBar_AddSeparator")]
	public static extern QAction* QMenuBar_AddSeparator(Self* c_this);
	[LinkName("QMenuBar_InsertSeparator")]
	public static extern QAction* QMenuBar_InsertSeparator(Self* c_this, QAction* before);
	[LinkName("QMenuBar_InsertMenu")]
	public static extern QAction* QMenuBar_InsertMenu(Self* c_this, QAction* before, QMenu* menu);
	[LinkName("QMenuBar_Clear")]
	public static extern void QMenuBar_Clear(Self* c_this);
	[LinkName("QMenuBar_ActiveAction")]
	public static extern QAction* QMenuBar_ActiveAction(Self* c_this);
	[LinkName("QMenuBar_SetActiveAction")]
	public static extern void QMenuBar_SetActiveAction(Self* c_this, QAction* action);
	[LinkName("QMenuBar_SetDefaultUp")]
	public static extern void QMenuBar_SetDefaultUp(Self* c_this, bool defaultUp);
	[LinkName("QMenuBar_IsDefaultUp")]
	public static extern bool QMenuBar_IsDefaultUp(Self* c_this);
	[LinkName("QMenuBar_SizeHint")]
	public static extern QSize QMenuBar_SizeHint(Self* c_this);
	[LinkName("QMenuBar_MinimumSizeHint")]
	public static extern QSize QMenuBar_MinimumSizeHint(Self* c_this);
	[LinkName("QMenuBar_HeightForWidth")]
	public static extern int32 QMenuBar_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QMenuBar_ActionGeometry")]
	public static extern QRect QMenuBar_ActionGeometry(Self* c_this, QAction* param1);
	[LinkName("QMenuBar_ActionAt")]
	public static extern QAction* QMenuBar_ActionAt(Self* c_this, QPoint* param1);
	[LinkName("QMenuBar_SetCornerWidget")]
	public static extern void QMenuBar_SetCornerWidget(Self* c_this, QWidget* w);
	[LinkName("QMenuBar_CornerWidget")]
	public static extern QWidget* QMenuBar_CornerWidget(Self* c_this);
	[LinkName("QMenuBar_IsNativeMenuBar")]
	public static extern bool QMenuBar_IsNativeMenuBar(Self* c_this);
	[LinkName("QMenuBar_SetNativeMenuBar")]
	public static extern void QMenuBar_SetNativeMenuBar(Self* c_this, bool nativeMenuBar);
	[LinkName("QMenuBar_SetVisible")]
	public static extern void QMenuBar_SetVisible(Self* c_this, bool visible);
	[LinkName("QMenuBar_Triggered")]
	public static extern void QMenuBar_Triggered(Self* c_this, QAction* action);
	[LinkName("QMenuBar_Hovered")]
	public static extern void QMenuBar_Hovered(Self* c_this, QAction* action);
	[LinkName("QMenuBar_ChangeEvent")]
	public static extern void QMenuBar_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QMenuBar_KeyPressEvent")]
	public static extern void QMenuBar_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QMenuBar_MouseReleaseEvent")]
	public static extern void QMenuBar_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenuBar_MousePressEvent")]
	public static extern void QMenuBar_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenuBar_MouseMoveEvent")]
	public static extern void QMenuBar_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenuBar_LeaveEvent")]
	public static extern void QMenuBar_LeaveEvent(Self* c_this, QEvent* param1);
	[LinkName("QMenuBar_PaintEvent")]
	public static extern void QMenuBar_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QMenuBar_ResizeEvent")]
	public static extern void QMenuBar_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QMenuBar_ActionEvent")]
	public static extern void QMenuBar_ActionEvent(Self* c_this, QActionEvent* param1);
	[LinkName("QMenuBar_FocusOutEvent")]
	public static extern void QMenuBar_FocusOutEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QMenuBar_FocusInEvent")]
	public static extern void QMenuBar_FocusInEvent(Self* c_this, QFocusEvent* param1);
	[LinkName("QMenuBar_TimerEvent")]
	public static extern void QMenuBar_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QMenuBar_EventFilter")]
	public static extern bool QMenuBar_EventFilter(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QMenuBar_Event")]
	public static extern bool QMenuBar_Event(Self* c_this, QEvent* param1);
	[LinkName("QMenuBar_InitStyleOption")]
	public static extern void QMenuBar_InitStyleOption(Self* c_this, QStyleOptionMenuItem* option, QAction* action);
	[LinkName("QMenuBar_Tr2")]
	public static extern libqt_string QMenuBar_Tr2(char8[] s, char8[] c);
	[LinkName("QMenuBar_Tr3")]
	public static extern libqt_string QMenuBar_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMenuBar_SetCornerWidget2")]
	public static extern void QMenuBar_SetCornerWidget2(Self* c_this, QWidget* w, int64 corner);
	[LinkName("QMenuBar_CornerWidget1")]
	public static extern QWidget* QMenuBar_CornerWidget1(Self* c_this, int64 corner);
}