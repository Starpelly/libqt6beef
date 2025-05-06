using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMdiArea__AreaOption
{
	DontMaximizeSubWindowOnActivation = 1,
}
[AllowDuplicates]
public enum QMdiArea__WindowOrder
{
	CreationOrder = 0,
	StackingOrder = 1,
	ActivationHistoryOrder = 2,
}
[AllowDuplicates]
public enum QMdiArea__ViewMode
{
	SubWindowView = 0,
	TabbedView = 1,
}
public struct QMdiArea
{
	[LinkName("QMdiArea_new")]
	public static extern void* QMdiArea_new(QWidget parent);
	[LinkName("QMdiArea_new2")]
	public static extern void* QMdiArea_new2();
	[LinkName("QMdiArea_MetaObject")]
	public static extern QMetaObject QMdiArea_MetaObject(void* c_this);
	[LinkName("QMdiArea_Metacast")]
	public static extern void QMdiArea_Metacast(void* c_this, char8[] param1);
	[LinkName("QMdiArea_Metacall")]
	public static extern int32 QMdiArea_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMdiArea_Tr")]
	public static extern char8[] QMdiArea_Tr(char8[] s);
	[LinkName("QMdiArea_SizeHint")]
	public static extern QSize QMdiArea_SizeHint(void* c_this);
	[LinkName("QMdiArea_MinimumSizeHint")]
	public static extern QSize QMdiArea_MinimumSizeHint(void* c_this);
	[LinkName("QMdiArea_CurrentSubWindow")]
	public static extern QMdiSubWindow QMdiArea_CurrentSubWindow(void* c_this);
	[LinkName("QMdiArea_ActiveSubWindow")]
	public static extern QMdiSubWindow QMdiArea_ActiveSubWindow(void* c_this);
	[LinkName("QMdiArea_SubWindowList")]
	public static extern QMdiSubWindow[] QMdiArea_SubWindowList(void* c_this);
	[LinkName("QMdiArea_AddSubWindow")]
	public static extern QMdiSubWindow QMdiArea_AddSubWindow(void* c_this, QWidget widget);
	[LinkName("QMdiArea_RemoveSubWindow")]
	public static extern void QMdiArea_RemoveSubWindow(void* c_this, QWidget widget);
	[LinkName("QMdiArea_Background")]
	public static extern QBrush QMdiArea_Background(void* c_this);
	[LinkName("QMdiArea_SetBackground")]
	public static extern void QMdiArea_SetBackground(void* c_this, QBrush background);
	[LinkName("QMdiArea_ActivationOrder")]
	public static extern int64 QMdiArea_ActivationOrder(void* c_this);
	[LinkName("QMdiArea_SetActivationOrder")]
	public static extern void QMdiArea_SetActivationOrder(void* c_this, int64 order);
	[LinkName("QMdiArea_SetOption")]
	public static extern void QMdiArea_SetOption(void* c_this, int64 option);
	[LinkName("QMdiArea_TestOption")]
	public static extern bool QMdiArea_TestOption(void* c_this, int64 opton);
	[LinkName("QMdiArea_SetViewMode")]
	public static extern void QMdiArea_SetViewMode(void* c_this, int64 mode);
	[LinkName("QMdiArea_ViewMode")]
	public static extern int64 QMdiArea_ViewMode(void* c_this);
	[LinkName("QMdiArea_DocumentMode")]
	public static extern bool QMdiArea_DocumentMode(void* c_this);
	[LinkName("QMdiArea_SetDocumentMode")]
	public static extern void QMdiArea_SetDocumentMode(void* c_this, bool enabled);
	[LinkName("QMdiArea_SetTabsClosable")]
	public static extern void QMdiArea_SetTabsClosable(void* c_this, bool closable);
	[LinkName("QMdiArea_TabsClosable")]
	public static extern bool QMdiArea_TabsClosable(void* c_this);
	[LinkName("QMdiArea_SetTabsMovable")]
	public static extern void QMdiArea_SetTabsMovable(void* c_this, bool movable);
	[LinkName("QMdiArea_TabsMovable")]
	public static extern bool QMdiArea_TabsMovable(void* c_this);
	[LinkName("QMdiArea_SetTabShape")]
	public static extern void QMdiArea_SetTabShape(void* c_this, int64 shape);
	[LinkName("QMdiArea_TabShape")]
	public static extern int64 QMdiArea_TabShape(void* c_this);
	[LinkName("QMdiArea_SetTabPosition")]
	public static extern void QMdiArea_SetTabPosition(void* c_this, int64 position);
	[LinkName("QMdiArea_TabPosition")]
	public static extern int64 QMdiArea_TabPosition(void* c_this);
	[LinkName("QMdiArea_SubWindowActivated")]
	public static extern void QMdiArea_SubWindowActivated(void* c_this, QMdiSubWindow param1);
	[LinkName("QMdiArea_SetActiveSubWindow")]
	public static extern void QMdiArea_SetActiveSubWindow(void* c_this, QMdiSubWindow window);
	[LinkName("QMdiArea_TileSubWindows")]
	public static extern void QMdiArea_TileSubWindows(void* c_this);
	[LinkName("QMdiArea_CascadeSubWindows")]
	public static extern void QMdiArea_CascadeSubWindows(void* c_this);
	[LinkName("QMdiArea_CloseActiveSubWindow")]
	public static extern void QMdiArea_CloseActiveSubWindow(void* c_this);
	[LinkName("QMdiArea_CloseAllSubWindows")]
	public static extern void QMdiArea_CloseAllSubWindows(void* c_this);
	[LinkName("QMdiArea_ActivateNextSubWindow")]
	public static extern void QMdiArea_ActivateNextSubWindow(void* c_this);
	[LinkName("QMdiArea_ActivatePreviousSubWindow")]
	public static extern void QMdiArea_ActivatePreviousSubWindow(void* c_this);
	[LinkName("QMdiArea_SetupViewport")]
	public static extern void QMdiArea_SetupViewport(void* c_this, QWidget viewport);
	[LinkName("QMdiArea_Event")]
	public static extern bool QMdiArea_Event(void* c_this, QEvent event);
	[LinkName("QMdiArea_EventFilter")]
	public static extern bool QMdiArea_EventFilter(void* c_this, QObject object, QEvent event);
	[LinkName("QMdiArea_PaintEvent")]
	public static extern void QMdiArea_PaintEvent(void* c_this, QPaintEvent paintEvent);
	[LinkName("QMdiArea_ChildEvent")]
	public static extern void QMdiArea_ChildEvent(void* c_this, QChildEvent childEvent);
	[LinkName("QMdiArea_ResizeEvent")]
	public static extern void QMdiArea_ResizeEvent(void* c_this, QResizeEvent resizeEvent);
	[LinkName("QMdiArea_TimerEvent")]
	public static extern void QMdiArea_TimerEvent(void* c_this, QTimerEvent timerEvent);
	[LinkName("QMdiArea_ShowEvent")]
	public static extern void QMdiArea_ShowEvent(void* c_this, QShowEvent showEvent);
	[LinkName("QMdiArea_ViewportEvent")]
	public static extern bool QMdiArea_ViewportEvent(void* c_this, QEvent event);
	[LinkName("QMdiArea_ScrollContentsBy")]
	public static extern void QMdiArea_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QMdiArea_Tr2")]
	public static extern char8[] QMdiArea_Tr2(char8[] s, char8[] c);
	[LinkName("QMdiArea_Tr3")]
	public static extern char8[] QMdiArea_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMdiArea_SubWindowList1")]
	public static extern QMdiSubWindow[] QMdiArea_SubWindowList1(void* c_this, int64 order);
	[LinkName("QMdiArea_AddSubWindow2")]
	public static extern QMdiSubWindow QMdiArea_AddSubWindow2(void* c_this, QWidget widget, int64 flags);
	[LinkName("QMdiArea_SetOption2")]
	public static extern void QMdiArea_SetOption2(void* c_this, int64 option, bool on);
}