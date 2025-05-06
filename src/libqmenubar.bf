using System;
using System.Interop;
namespace Qt;

public struct QMenuBar
{
	[LinkName("QMenuBar_new")]
	public static extern void* QMenuBar_new(QWidget parent);
	[LinkName("QMenuBar_new2")]
	public static extern void* QMenuBar_new2();
	[LinkName("QMenuBar_MetaObject")]
	public static extern QMetaObject QMenuBar_MetaObject(void* c_this);
	[LinkName("QMenuBar_Metacast")]
	public static extern void QMenuBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QMenuBar_Metacall")]
	public static extern int32 QMenuBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMenuBar_Tr")]
	public static extern char8[] QMenuBar_Tr(char8[] s);
	[LinkName("QMenuBar_AddMenu")]
	public static extern QAction QMenuBar_AddMenu(void* c_this, QMenu menu);
	[LinkName("QMenuBar_AddMenuWithTitle")]
	public static extern QMenu QMenuBar_AddMenuWithTitle(void* c_this, char8[] title);
	[LinkName("QMenuBar_AddMenu2")]
	public static extern QMenu QMenuBar_AddMenu2(void* c_this, QIcon icon, char8[] title);
	[LinkName("QMenuBar_AddSeparator")]
	public static extern QAction QMenuBar_AddSeparator(void* c_this);
	[LinkName("QMenuBar_InsertSeparator")]
	public static extern QAction QMenuBar_InsertSeparator(void* c_this, QAction before);
	[LinkName("QMenuBar_InsertMenu")]
	public static extern QAction QMenuBar_InsertMenu(void* c_this, QAction before, QMenu menu);
	[LinkName("QMenuBar_Clear")]
	public static extern void QMenuBar_Clear(void* c_this);
	[LinkName("QMenuBar_ActiveAction")]
	public static extern QAction QMenuBar_ActiveAction(void* c_this);
	[LinkName("QMenuBar_SetActiveAction")]
	public static extern void QMenuBar_SetActiveAction(void* c_this, QAction action);
	[LinkName("QMenuBar_SetDefaultUp")]
	public static extern void QMenuBar_SetDefaultUp(void* c_this, bool defaultUp);
	[LinkName("QMenuBar_IsDefaultUp")]
	public static extern bool QMenuBar_IsDefaultUp(void* c_this);
	[LinkName("QMenuBar_SizeHint")]
	public static extern QSize QMenuBar_SizeHint(void* c_this);
	[LinkName("QMenuBar_MinimumSizeHint")]
	public static extern QSize QMenuBar_MinimumSizeHint(void* c_this);
	[LinkName("QMenuBar_HeightForWidth")]
	public static extern int32 QMenuBar_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QMenuBar_ActionGeometry")]
	public static extern QRect QMenuBar_ActionGeometry(void* c_this, QAction param1);
	[LinkName("QMenuBar_ActionAt")]
	public static extern QAction QMenuBar_ActionAt(void* c_this, QPoint param1);
	[LinkName("QMenuBar_SetCornerWidget")]
	public static extern void QMenuBar_SetCornerWidget(void* c_this, QWidget w);
	[LinkName("QMenuBar_CornerWidget")]
	public static extern QWidget QMenuBar_CornerWidget(void* c_this);
	[LinkName("QMenuBar_IsNativeMenuBar")]
	public static extern bool QMenuBar_IsNativeMenuBar(void* c_this);
	[LinkName("QMenuBar_SetNativeMenuBar")]
	public static extern void QMenuBar_SetNativeMenuBar(void* c_this, bool nativeMenuBar);
	[LinkName("QMenuBar_SetVisible")]
	public static extern void QMenuBar_SetVisible(void* c_this, bool visible);
	[LinkName("QMenuBar_Triggered")]
	public static extern void QMenuBar_Triggered(void* c_this, QAction action);
	[LinkName("QMenuBar_Hovered")]
	public static extern void QMenuBar_Hovered(void* c_this, QAction action);
	[LinkName("QMenuBar_ChangeEvent")]
	public static extern void QMenuBar_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QMenuBar_KeyPressEvent")]
	public static extern void QMenuBar_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QMenuBar_MouseReleaseEvent")]
	public static extern void QMenuBar_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenuBar_MousePressEvent")]
	public static extern void QMenuBar_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenuBar_MouseMoveEvent")]
	public static extern void QMenuBar_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenuBar_LeaveEvent")]
	public static extern void QMenuBar_LeaveEvent(void* c_this, QEvent param1);
	[LinkName("QMenuBar_PaintEvent")]
	public static extern void QMenuBar_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QMenuBar_ResizeEvent")]
	public static extern void QMenuBar_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QMenuBar_ActionEvent")]
	public static extern void QMenuBar_ActionEvent(void* c_this, QActionEvent param1);
	[LinkName("QMenuBar_FocusOutEvent")]
	public static extern void QMenuBar_FocusOutEvent(void* c_this, QFocusEvent param1);
	[LinkName("QMenuBar_FocusInEvent")]
	public static extern void QMenuBar_FocusInEvent(void* c_this, QFocusEvent param1);
	[LinkName("QMenuBar_TimerEvent")]
	public static extern void QMenuBar_TimerEvent(void* c_this, QTimerEvent param1);
	[LinkName("QMenuBar_EventFilter")]
	public static extern bool QMenuBar_EventFilter(void* c_this, QObject param1, QEvent param2);
	[LinkName("QMenuBar_Event")]
	public static extern bool QMenuBar_Event(void* c_this, QEvent param1);
	[LinkName("QMenuBar_InitStyleOption")]
	public static extern void QMenuBar_InitStyleOption(void* c_this, QStyleOptionMenuItem option, QAction action);
	[LinkName("QMenuBar_Tr2")]
	public static extern char8[] QMenuBar_Tr2(char8[] s, char8[] c);
	[LinkName("QMenuBar_Tr3")]
	public static extern char8[] QMenuBar_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMenuBar_SetCornerWidget2")]
	public static extern void QMenuBar_SetCornerWidget2(void* c_this, QWidget w, int64 corner);
	[LinkName("QMenuBar_CornerWidget1")]
	public static extern QWidget QMenuBar_CornerWidget1(void* c_this, int64 corner);
}