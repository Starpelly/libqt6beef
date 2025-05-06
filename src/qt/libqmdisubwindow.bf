using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMdiSubWindow__SubWindowOption
{
	AllowOutsideAreaHorizontally = 1,
	AllowOutsideAreaVertically = 2,
	RubberBandResize = 4,
	RubberBandMove = 8,
}
public struct QMdiSubWindow : QWidget
{
	[LinkName("QMdiSubWindow_new")]
	public static extern QMdiSubWindow* QMdiSubWindow_new(QWidget* parent);
	[LinkName("QMdiSubWindow_new2")]
	public static extern QMdiSubWindow* QMdiSubWindow_new2();
	[LinkName("QMdiSubWindow_new3")]
	public static extern QMdiSubWindow* QMdiSubWindow_new3(QWidget* parent, int64 flags);
	[LinkName("QMdiSubWindow_MetaObject")]
	public static extern QMetaObject* QMdiSubWindow_MetaObject(Self* c_this);
	[LinkName("QMdiSubWindow_Metacast")]
	public static extern void* QMdiSubWindow_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMdiSubWindow_Metacall")]
	public static extern int32 QMdiSubWindow_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMdiSubWindow_Tr")]
	public static extern libqt_string QMdiSubWindow_Tr(char8[] s);
	[LinkName("QMdiSubWindow_SizeHint")]
	public static extern QSize QMdiSubWindow_SizeHint(Self* c_this);
	[LinkName("QMdiSubWindow_MinimumSizeHint")]
	public static extern QSize QMdiSubWindow_MinimumSizeHint(Self* c_this);
	[LinkName("QMdiSubWindow_SetWidget")]
	public static extern void QMdiSubWindow_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QMdiSubWindow_Widget")]
	public static extern QWidget* QMdiSubWindow_Widget(Self* c_this);
	[LinkName("QMdiSubWindow_MaximizedButtonsWidget")]
	public static extern QWidget* QMdiSubWindow_MaximizedButtonsWidget(Self* c_this);
	[LinkName("QMdiSubWindow_MaximizedSystemMenuIconWidget")]
	public static extern QWidget* QMdiSubWindow_MaximizedSystemMenuIconWidget(Self* c_this);
	[LinkName("QMdiSubWindow_IsShaded")]
	public static extern bool QMdiSubWindow_IsShaded(Self* c_this);
	[LinkName("QMdiSubWindow_SetOption")]
	public static extern void QMdiSubWindow_SetOption(Self* c_this, int64 option);
	[LinkName("QMdiSubWindow_TestOption")]
	public static extern bool QMdiSubWindow_TestOption(Self* c_this, int64 param1);
	[LinkName("QMdiSubWindow_SetKeyboardSingleStep")]
	public static extern void QMdiSubWindow_SetKeyboardSingleStep(Self* c_this, int32 step);
	[LinkName("QMdiSubWindow_KeyboardSingleStep")]
	public static extern int32 QMdiSubWindow_KeyboardSingleStep(Self* c_this);
	[LinkName("QMdiSubWindow_SetKeyboardPageStep")]
	public static extern void QMdiSubWindow_SetKeyboardPageStep(Self* c_this, int32 step);
	[LinkName("QMdiSubWindow_KeyboardPageStep")]
	public static extern int32 QMdiSubWindow_KeyboardPageStep(Self* c_this);
	[LinkName("QMdiSubWindow_SetSystemMenu")]
	public static extern void QMdiSubWindow_SetSystemMenu(Self* c_this, QMenu* systemMenu);
	[LinkName("QMdiSubWindow_SystemMenu")]
	public static extern QMenu* QMdiSubWindow_SystemMenu(Self* c_this);
	[LinkName("QMdiSubWindow_MdiArea")]
	public static extern QMdiArea* QMdiSubWindow_MdiArea(Self* c_this);
	[LinkName("QMdiSubWindow_WindowStateChanged")]
	public static extern void QMdiSubWindow_WindowStateChanged(Self* c_this, int64 oldState, int64 newState);
	[LinkName("QMdiSubWindow_AboutToActivate")]
	public static extern void QMdiSubWindow_AboutToActivate(Self* c_this);
	[LinkName("QMdiSubWindow_ShowSystemMenu")]
	public static extern void QMdiSubWindow_ShowSystemMenu(Self* c_this);
	[LinkName("QMdiSubWindow_ShowShaded")]
	public static extern void QMdiSubWindow_ShowShaded(Self* c_this);
	[LinkName("QMdiSubWindow_EventFilter")]
	public static extern bool QMdiSubWindow_EventFilter(Self* c_this, QObject* object, QEvent* event);
	[LinkName("QMdiSubWindow_Event")]
	public static extern bool QMdiSubWindow_Event(Self* c_this, QEvent* event);
	[LinkName("QMdiSubWindow_ShowEvent")]
	public static extern void QMdiSubWindow_ShowEvent(Self* c_this, QShowEvent* showEvent);
	[LinkName("QMdiSubWindow_HideEvent")]
	public static extern void QMdiSubWindow_HideEvent(Self* c_this, QHideEvent* hideEvent);
	[LinkName("QMdiSubWindow_ChangeEvent")]
	public static extern void QMdiSubWindow_ChangeEvent(Self* c_this, QEvent* changeEvent);
	[LinkName("QMdiSubWindow_CloseEvent")]
	public static extern void QMdiSubWindow_CloseEvent(Self* c_this, QCloseEvent* closeEvent);
	[LinkName("QMdiSubWindow_LeaveEvent")]
	public static extern void QMdiSubWindow_LeaveEvent(Self* c_this, QEvent* leaveEvent);
	[LinkName("QMdiSubWindow_ResizeEvent")]
	public static extern void QMdiSubWindow_ResizeEvent(Self* c_this, QResizeEvent* resizeEvent);
	[LinkName("QMdiSubWindow_TimerEvent")]
	public static extern void QMdiSubWindow_TimerEvent(Self* c_this, QTimerEvent* timerEvent);
	[LinkName("QMdiSubWindow_MoveEvent")]
	public static extern void QMdiSubWindow_MoveEvent(Self* c_this, QMoveEvent* moveEvent);
	[LinkName("QMdiSubWindow_PaintEvent")]
	public static extern void QMdiSubWindow_PaintEvent(Self* c_this, QPaintEvent* paintEvent);
	[LinkName("QMdiSubWindow_MousePressEvent")]
	public static extern void QMdiSubWindow_MousePressEvent(Self* c_this, QMouseEvent* mouseEvent);
	[LinkName("QMdiSubWindow_MouseDoubleClickEvent")]
	public static extern void QMdiSubWindow_MouseDoubleClickEvent(Self* c_this, QMouseEvent* mouseEvent);
	[LinkName("QMdiSubWindow_MouseReleaseEvent")]
	public static extern void QMdiSubWindow_MouseReleaseEvent(Self* c_this, QMouseEvent* mouseEvent);
	[LinkName("QMdiSubWindow_MouseMoveEvent")]
	public static extern void QMdiSubWindow_MouseMoveEvent(Self* c_this, QMouseEvent* mouseEvent);
	[LinkName("QMdiSubWindow_KeyPressEvent")]
	public static extern void QMdiSubWindow_KeyPressEvent(Self* c_this, QKeyEvent* keyEvent);
	[LinkName("QMdiSubWindow_ContextMenuEvent")]
	public static extern void QMdiSubWindow_ContextMenuEvent(Self* c_this, QContextMenuEvent* contextMenuEvent);
	[LinkName("QMdiSubWindow_FocusInEvent")]
	public static extern void QMdiSubWindow_FocusInEvent(Self* c_this, QFocusEvent* focusInEvent);
	[LinkName("QMdiSubWindow_FocusOutEvent")]
	public static extern void QMdiSubWindow_FocusOutEvent(Self* c_this, QFocusEvent* focusOutEvent);
	[LinkName("QMdiSubWindow_ChildEvent")]
	public static extern void QMdiSubWindow_ChildEvent(Self* c_this, QChildEvent* childEvent);
	[LinkName("QMdiSubWindow_Tr2")]
	public static extern libqt_string QMdiSubWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QMdiSubWindow_Tr3")]
	public static extern libqt_string QMdiSubWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMdiSubWindow_SetOption2")]
	public static extern void QMdiSubWindow_SetOption2(Self* c_this, int64 option, bool on);
}