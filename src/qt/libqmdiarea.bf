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
public struct QMdiArea : QAbstractScrollArea
{
	[LinkName("QMdiArea_new")]
	public static extern QMdiArea* QMdiArea_new(QWidget* parent);
	[LinkName("QMdiArea_new2")]
	public static extern QMdiArea* QMdiArea_new2();
	[LinkName("QMdiArea_MetaObject")]
	public static extern QMetaObject* QMdiArea_MetaObject(Self* c_this);
	[LinkName("QMdiArea_Metacast")]
	public static extern void* QMdiArea_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMdiArea_Metacall")]
	public static extern int32 QMdiArea_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMdiArea_Tr")]
	public static extern libqt_string QMdiArea_Tr(char8[] s);
	[LinkName("QMdiArea_SizeHint")]
	public static extern QSize QMdiArea_SizeHint(Self* c_this);
	[LinkName("QMdiArea_MinimumSizeHint")]
	public static extern QSize QMdiArea_MinimumSizeHint(Self* c_this);
	[LinkName("QMdiArea_CurrentSubWindow")]
	public static extern QMdiSubWindow* QMdiArea_CurrentSubWindow(Self* c_this);
	[LinkName("QMdiArea_ActiveSubWindow")]
	public static extern QMdiSubWindow* QMdiArea_ActiveSubWindow(Self* c_this);
	[LinkName("QMdiArea_SubWindowList")]
	public static extern QMdiSubWindow*[] QMdiArea_SubWindowList(Self* c_this);
	[LinkName("QMdiArea_AddSubWindow")]
	public static extern QMdiSubWindow* QMdiArea_AddSubWindow(Self* c_this, QWidget* widget);
	[LinkName("QMdiArea_RemoveSubWindow")]
	public static extern void QMdiArea_RemoveSubWindow(Self* c_this, QWidget* widget);
	[LinkName("QMdiArea_Background")]
	public static extern QBrush QMdiArea_Background(Self* c_this);
	[LinkName("QMdiArea_SetBackground")]
	public static extern void QMdiArea_SetBackground(Self* c_this, QBrush* background);
	[LinkName("QMdiArea_ActivationOrder")]
	public static extern int64 QMdiArea_ActivationOrder(Self* c_this);
	[LinkName("QMdiArea_SetActivationOrder")]
	public static extern void QMdiArea_SetActivationOrder(Self* c_this, int64 order);
	[LinkName("QMdiArea_SetOption")]
	public static extern void QMdiArea_SetOption(Self* c_this, int64 option);
	[LinkName("QMdiArea_TestOption")]
	public static extern bool QMdiArea_TestOption(Self* c_this, int64 opton);
	[LinkName("QMdiArea_SetViewMode")]
	public static extern void QMdiArea_SetViewMode(Self* c_this, int64 mode);
	[LinkName("QMdiArea_ViewMode")]
	public static extern int64 QMdiArea_ViewMode(Self* c_this);
	[LinkName("QMdiArea_DocumentMode")]
	public static extern bool QMdiArea_DocumentMode(Self* c_this);
	[LinkName("QMdiArea_SetDocumentMode")]
	public static extern void QMdiArea_SetDocumentMode(Self* c_this, bool enabled);
	[LinkName("QMdiArea_SetTabsClosable")]
	public static extern void QMdiArea_SetTabsClosable(Self* c_this, bool closable);
	[LinkName("QMdiArea_TabsClosable")]
	public static extern bool QMdiArea_TabsClosable(Self* c_this);
	[LinkName("QMdiArea_SetTabsMovable")]
	public static extern void QMdiArea_SetTabsMovable(Self* c_this, bool movable);
	[LinkName("QMdiArea_TabsMovable")]
	public static extern bool QMdiArea_TabsMovable(Self* c_this);
	[LinkName("QMdiArea_SetTabShape")]
	public static extern void QMdiArea_SetTabShape(Self* c_this, int64 shape);
	[LinkName("QMdiArea_TabShape")]
	public static extern int64 QMdiArea_TabShape(Self* c_this);
	[LinkName("QMdiArea_SetTabPosition")]
	public static extern void QMdiArea_SetTabPosition(Self* c_this, int64 position);
	[LinkName("QMdiArea_TabPosition")]
	public static extern int64 QMdiArea_TabPosition(Self* c_this);
	[LinkName("QMdiArea_Connect_SubWindowActivated")]
	public static extern void QMdiArea_Connect_SubWindowActivated(Self* c_this, c_intptr slot);
	[LinkName("QMdiArea_SetActiveSubWindow")]
	public static extern void QMdiArea_SetActiveSubWindow(Self* c_this, QMdiSubWindow* window);
	[LinkName("QMdiArea_TileSubWindows")]
	public static extern void QMdiArea_TileSubWindows(Self* c_this);
	[LinkName("QMdiArea_CascadeSubWindows")]
	public static extern void QMdiArea_CascadeSubWindows(Self* c_this);
	[LinkName("QMdiArea_CloseActiveSubWindow")]
	public static extern void QMdiArea_CloseActiveSubWindow(Self* c_this);
	[LinkName("QMdiArea_CloseAllSubWindows")]
	public static extern void QMdiArea_CloseAllSubWindows(Self* c_this);
	[LinkName("QMdiArea_ActivateNextSubWindow")]
	public static extern void QMdiArea_ActivateNextSubWindow(Self* c_this);
	[LinkName("QMdiArea_ActivatePreviousSubWindow")]
	public static extern void QMdiArea_ActivatePreviousSubWindow(Self* c_this);
	[LinkName("QMdiArea_SetupViewport")]
	public static extern void QMdiArea_SetupViewport(Self* c_this, QWidget* viewport);
	[LinkName("QMdiArea_Event")]
	public static extern bool QMdiArea_Event(Self* c_this, QEvent* event);
	[LinkName("QMdiArea_EventFilter")]
	public static extern bool QMdiArea_EventFilter(Self* c_this, QObject* object, QEvent* event);
	[LinkName("QMdiArea_PaintEvent")]
	public static extern void QMdiArea_PaintEvent(Self* c_this, QPaintEvent* paintEvent);
	[LinkName("QMdiArea_ChildEvent")]
	public static extern void QMdiArea_ChildEvent(Self* c_this, QChildEvent* childEvent);
	[LinkName("QMdiArea_ResizeEvent")]
	public static extern void QMdiArea_ResizeEvent(Self* c_this, QResizeEvent* resizeEvent);
	[LinkName("QMdiArea_TimerEvent")]
	public static extern void QMdiArea_TimerEvent(Self* c_this, QTimerEvent* timerEvent);
	[LinkName("QMdiArea_ShowEvent")]
	public static extern void QMdiArea_ShowEvent(Self* c_this, QShowEvent* showEvent);
	[LinkName("QMdiArea_ViewportEvent")]
	public static extern bool QMdiArea_ViewportEvent(Self* c_this, QEvent* event);
	[LinkName("QMdiArea_ScrollContentsBy")]
	public static extern void QMdiArea_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QMdiArea_Tr2")]
	public static extern libqt_string QMdiArea_Tr2(char8[] s, char8[] c);
	[LinkName("QMdiArea_Tr3")]
	public static extern libqt_string QMdiArea_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMdiArea_SubWindowList1")]
	public static extern QMdiSubWindow*[] QMdiArea_SubWindowList1(Self* c_this, int64 order);
	[LinkName("QMdiArea_AddSubWindow2")]
	public static extern QMdiSubWindow* QMdiArea_AddSubWindow2(Self* c_this, QWidget* widget, int64 flags);
	[LinkName("QMdiArea_SetOption2")]
	public static extern void QMdiArea_SetOption2(Self* c_this, int64 option, bool on);
}