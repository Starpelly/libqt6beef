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
public struct QMdiSubWindow
{
	[LinkName("QMdiSubWindow_new")]
	public static extern void* QMdiSubWindow_new(QWidget parent);
	[LinkName("QMdiSubWindow_new2")]
	public static extern void* QMdiSubWindow_new2();
	[LinkName("QMdiSubWindow_new3")]
	public static extern void* QMdiSubWindow_new3(QWidget parent, int64 flags);
	[LinkName("QMdiSubWindow_MetaObject")]
	public static extern QMetaObject QMdiSubWindow_MetaObject(void* c_this);
	[LinkName("QMdiSubWindow_Metacast")]
	public static extern void QMdiSubWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QMdiSubWindow_Metacall")]
	public static extern int32 QMdiSubWindow_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMdiSubWindow_Tr")]
	public static extern char8[] QMdiSubWindow_Tr(char8[] s);
	[LinkName("QMdiSubWindow_SizeHint")]
	public static extern QSize QMdiSubWindow_SizeHint(void* c_this);
	[LinkName("QMdiSubWindow_MinimumSizeHint")]
	public static extern QSize QMdiSubWindow_MinimumSizeHint(void* c_this);
	[LinkName("QMdiSubWindow_SetWidget")]
	public static extern void QMdiSubWindow_SetWidget(void* c_this, QWidget widget);
	[LinkName("QMdiSubWindow_Widget")]
	public static extern QWidget QMdiSubWindow_Widget(void* c_this);
	[LinkName("QMdiSubWindow_MaximizedButtonsWidget")]
	public static extern QWidget QMdiSubWindow_MaximizedButtonsWidget(void* c_this);
	[LinkName("QMdiSubWindow_MaximizedSystemMenuIconWidget")]
	public static extern QWidget QMdiSubWindow_MaximizedSystemMenuIconWidget(void* c_this);
	[LinkName("QMdiSubWindow_IsShaded")]
	public static extern bool QMdiSubWindow_IsShaded(void* c_this);
	[LinkName("QMdiSubWindow_SetOption")]
	public static extern void QMdiSubWindow_SetOption(void* c_this, int64 option);
	[LinkName("QMdiSubWindow_TestOption")]
	public static extern bool QMdiSubWindow_TestOption(void* c_this, int64 param1);
	[LinkName("QMdiSubWindow_SetKeyboardSingleStep")]
	public static extern void QMdiSubWindow_SetKeyboardSingleStep(void* c_this, int32 step);
	[LinkName("QMdiSubWindow_KeyboardSingleStep")]
	public static extern int32 QMdiSubWindow_KeyboardSingleStep(void* c_this);
	[LinkName("QMdiSubWindow_SetKeyboardPageStep")]
	public static extern void QMdiSubWindow_SetKeyboardPageStep(void* c_this, int32 step);
	[LinkName("QMdiSubWindow_KeyboardPageStep")]
	public static extern int32 QMdiSubWindow_KeyboardPageStep(void* c_this);
	[LinkName("QMdiSubWindow_SetSystemMenu")]
	public static extern void QMdiSubWindow_SetSystemMenu(void* c_this, QMenu systemMenu);
	[LinkName("QMdiSubWindow_SystemMenu")]
	public static extern QMenu QMdiSubWindow_SystemMenu(void* c_this);
	[LinkName("QMdiSubWindow_MdiArea")]
	public static extern QMdiArea QMdiSubWindow_MdiArea(void* c_this);
	[LinkName("QMdiSubWindow_WindowStateChanged")]
	public static extern void QMdiSubWindow_WindowStateChanged(void* c_this, int64 oldState, int64 newState);
	[LinkName("QMdiSubWindow_AboutToActivate")]
	public static extern void QMdiSubWindow_AboutToActivate(void* c_this);
	[LinkName("QMdiSubWindow_ShowSystemMenu")]
	public static extern void QMdiSubWindow_ShowSystemMenu(void* c_this);
	[LinkName("QMdiSubWindow_ShowShaded")]
	public static extern void QMdiSubWindow_ShowShaded(void* c_this);
	[LinkName("QMdiSubWindow_EventFilter")]
	public static extern bool QMdiSubWindow_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QMdiSubWindow_Event")]
	public static extern bool QMdiSubWindow_Event(void* c_this, QEvent event);
	[LinkName("QMdiSubWindow_ShowEvent")]
	public static extern void QMdiSubWindow_ShowEvent(void* c_this, QShowEvent showEvent);
	[LinkName("QMdiSubWindow_HideEvent")]
	public static extern void QMdiSubWindow_HideEvent(void* c_this, QHideEvent hideEvent);
	[LinkName("QMdiSubWindow_ChangeEvent")]
	public static extern void QMdiSubWindow_ChangeEvent(void* c_this, QEvent changeEvent);
	[LinkName("QMdiSubWindow_CloseEvent")]
	public static extern void QMdiSubWindow_CloseEvent(void* c_this, QCloseEvent closeEvent);
	[LinkName("QMdiSubWindow_LeaveEvent")]
	public static extern void QMdiSubWindow_LeaveEvent(void* c_this, QEvent leaveEvent);
	[LinkName("QMdiSubWindow_ResizeEvent")]
	public static extern void QMdiSubWindow_ResizeEvent(void* c_this, QResizeEvent resizeEvent);
	[LinkName("QMdiSubWindow_TimerEvent")]
	public static extern void QMdiSubWindow_TimerEvent(void* c_this, QTimerEvent timerEvent);
	[LinkName("QMdiSubWindow_MoveEvent")]
	public static extern void QMdiSubWindow_MoveEvent(void* c_this, QMoveEvent moveEvent);
	[LinkName("QMdiSubWindow_PaintEvent")]
	public static extern void QMdiSubWindow_PaintEvent(void* c_this, QPaintEvent paintEvent);
	[LinkName("QMdiSubWindow_MousePressEvent")]
	public static extern void QMdiSubWindow_MousePressEvent(void* c_this, QMouseEvent mouseEvent);
	[LinkName("QMdiSubWindow_MouseDoubleClickEvent")]
	public static extern void QMdiSubWindow_MouseDoubleClickEvent(void* c_this, QMouseEvent mouseEvent);
	[LinkName("QMdiSubWindow_MouseReleaseEvent")]
	public static extern void QMdiSubWindow_MouseReleaseEvent(void* c_this, QMouseEvent mouseEvent);
	[LinkName("QMdiSubWindow_MouseMoveEvent")]
	public static extern void QMdiSubWindow_MouseMoveEvent(void* c_this, QMouseEvent mouseEvent);
	[LinkName("QMdiSubWindow_KeyPressEvent")]
	public static extern void QMdiSubWindow_KeyPressEvent(void* c_this, QKeyEvent keyEvent);
	[LinkName("QMdiSubWindow_ContextMenuEvent")]
	public static extern void QMdiSubWindow_ContextMenuEvent(void* c_this, QContextMenuEvent contextMenuEvent);
	[LinkName("QMdiSubWindow_FocusInEvent")]
	public static extern void QMdiSubWindow_FocusInEvent(void* c_this, QFocusEvent focusInEvent);
	[LinkName("QMdiSubWindow_FocusOutEvent")]
	public static extern void QMdiSubWindow_FocusOutEvent(void* c_this, QFocusEvent focusOutEvent);
	[LinkName("QMdiSubWindow_ChildEvent")]
	public static extern void QMdiSubWindow_ChildEvent(void* c_this, QChildEvent childEvent);
	[LinkName("QMdiSubWindow_Tr2")]
	public static extern char8[] QMdiSubWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QMdiSubWindow_Tr3")]
	public static extern char8[] QMdiSubWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMdiSubWindow_SetOption2")]
	public static extern void QMdiSubWindow_SetOption2(void* c_this, int64 option, bool on);
}