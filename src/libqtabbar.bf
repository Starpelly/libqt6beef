using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTabBar__Shape
{
	RoundedNorth = 0,
	RoundedSouth = 1,
	RoundedWest = 2,
	RoundedEast = 3,
	TriangularNorth = 4,
	TriangularSouth = 5,
	TriangularWest = 6,
	TriangularEast = 7,
}
[AllowDuplicates]
public enum QTabBar__ButtonPosition
{
	LeftSide = 0,
	RightSide = 1,
}
[AllowDuplicates]
public enum QTabBar__SelectionBehavior
{
	SelectLeftTab = 0,
	SelectRightTab = 1,
	SelectPreviousTab = 2,
}
public struct QTabBar
{
	[LinkName("QTabBar_new")]
	public static extern void* QTabBar_new(QWidget parent);
	[LinkName("QTabBar_new2")]
	public static extern void* QTabBar_new2();
	[LinkName("QTabBar_MetaObject")]
	public static extern QMetaObject QTabBar_MetaObject(void* c_this);
	[LinkName("QTabBar_Metacast")]
	public static extern void QTabBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QTabBar_Metacall")]
	public static extern int32 QTabBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTabBar_Tr")]
	public static extern char8[] QTabBar_Tr(char8[] s);
	[LinkName("QTabBar_Shape")]
	public static extern int64 QTabBar_Shape(void* c_this);
	[LinkName("QTabBar_SetShape")]
	public static extern void QTabBar_SetShape(void* c_this, int64 shape);
	[LinkName("QTabBar_AddTab")]
	public static extern int32 QTabBar_AddTab(void* c_this, char8[] text);
	[LinkName("QTabBar_AddTab2")]
	public static extern int32 QTabBar_AddTab2(void* c_this, QIcon icon, char8[] text);
	[LinkName("QTabBar_InsertTab")]
	public static extern int32 QTabBar_InsertTab(void* c_this, int32 index, char8[] text);
	[LinkName("QTabBar_InsertTab2")]
	public static extern int32 QTabBar_InsertTab2(void* c_this, int32 index, QIcon icon, char8[] text);
	[LinkName("QTabBar_RemoveTab")]
	public static extern void QTabBar_RemoveTab(void* c_this, int32 index);
	[LinkName("QTabBar_MoveTab")]
	public static extern void QTabBar_MoveTab(void* c_this, int32 from, int32 to);
	[LinkName("QTabBar_IsTabEnabled")]
	public static extern bool QTabBar_IsTabEnabled(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabEnabled")]
	public static extern void QTabBar_SetTabEnabled(void* c_this, int32 index, bool enabled);
	[LinkName("QTabBar_IsTabVisible")]
	public static extern bool QTabBar_IsTabVisible(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabVisible")]
	public static extern void QTabBar_SetTabVisible(void* c_this, int32 index, bool visible);
	[LinkName("QTabBar_TabText")]
	public static extern char8[] QTabBar_TabText(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabText")]
	public static extern void QTabBar_SetTabText(void* c_this, int32 index, char8[] text);
	[LinkName("QTabBar_TabTextColor")]
	public static extern QColor QTabBar_TabTextColor(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabTextColor")]
	public static extern void QTabBar_SetTabTextColor(void* c_this, int32 index, QColor color);
	[LinkName("QTabBar_TabIcon")]
	public static extern QIcon QTabBar_TabIcon(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabIcon")]
	public static extern void QTabBar_SetTabIcon(void* c_this, int32 index, QIcon icon);
	[LinkName("QTabBar_ElideMode")]
	public static extern int64 QTabBar_ElideMode(void* c_this);
	[LinkName("QTabBar_SetElideMode")]
	public static extern void QTabBar_SetElideMode(void* c_this, int64 mode);
	[LinkName("QTabBar_SetTabToolTip")]
	public static extern void QTabBar_SetTabToolTip(void* c_this, int32 index, char8[] tip);
	[LinkName("QTabBar_TabToolTip")]
	public static extern char8[] QTabBar_TabToolTip(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabWhatsThis")]
	public static extern void QTabBar_SetTabWhatsThis(void* c_this, int32 index, char8[] text);
	[LinkName("QTabBar_TabWhatsThis")]
	public static extern char8[] QTabBar_TabWhatsThis(void* c_this, int32 index);
	[LinkName("QTabBar_SetTabData")]
	public static extern void QTabBar_SetTabData(void* c_this, int32 index, QVariant data);
	[LinkName("QTabBar_TabData")]
	public static extern QVariant QTabBar_TabData(void* c_this, int32 index);
	[LinkName("QTabBar_TabRect")]
	public static extern QRect QTabBar_TabRect(void* c_this, int32 index);
	[LinkName("QTabBar_TabAt")]
	public static extern int32 QTabBar_TabAt(void* c_this, QPoint pos);
	[LinkName("QTabBar_CurrentIndex")]
	public static extern int32 QTabBar_CurrentIndex(void* c_this);
	[LinkName("QTabBar_Count")]
	public static extern int32 QTabBar_Count(void* c_this);
	[LinkName("QTabBar_SizeHint")]
	public static extern QSize QTabBar_SizeHint(void* c_this);
	[LinkName("QTabBar_MinimumSizeHint")]
	public static extern QSize QTabBar_MinimumSizeHint(void* c_this);
	[LinkName("QTabBar_SetDrawBase")]
	public static extern void QTabBar_SetDrawBase(void* c_this, bool drawTheBase);
	[LinkName("QTabBar_DrawBase")]
	public static extern bool QTabBar_DrawBase(void* c_this);
	[LinkName("QTabBar_IconSize")]
	public static extern QSize QTabBar_IconSize(void* c_this);
	[LinkName("QTabBar_SetIconSize")]
	public static extern void QTabBar_SetIconSize(void* c_this, QSize size);
	[LinkName("QTabBar_UsesScrollButtons")]
	public static extern bool QTabBar_UsesScrollButtons(void* c_this);
	[LinkName("QTabBar_SetUsesScrollButtons")]
	public static extern void QTabBar_SetUsesScrollButtons(void* c_this, bool useButtons);
	[LinkName("QTabBar_TabsClosable")]
	public static extern bool QTabBar_TabsClosable(void* c_this);
	[LinkName("QTabBar_SetTabsClosable")]
	public static extern void QTabBar_SetTabsClosable(void* c_this, bool closable);
	[LinkName("QTabBar_SetTabButton")]
	public static extern void QTabBar_SetTabButton(void* c_this, int32 index, int64 position, QWidget widget);
	[LinkName("QTabBar_TabButton")]
	public static extern QWidget QTabBar_TabButton(void* c_this, int32 index, int64 position);
	[LinkName("QTabBar_SelectionBehaviorOnRemove")]
	public static extern int64 QTabBar_SelectionBehaviorOnRemove(void* c_this);
	[LinkName("QTabBar_SetSelectionBehaviorOnRemove")]
	public static extern void QTabBar_SetSelectionBehaviorOnRemove(void* c_this, int64 behavior);
	[LinkName("QTabBar_Expanding")]
	public static extern bool QTabBar_Expanding(void* c_this);
	[LinkName("QTabBar_SetExpanding")]
	public static extern void QTabBar_SetExpanding(void* c_this, bool enabled);
	[LinkName("QTabBar_IsMovable")]
	public static extern bool QTabBar_IsMovable(void* c_this);
	[LinkName("QTabBar_SetMovable")]
	public static extern void QTabBar_SetMovable(void* c_this, bool movable);
	[LinkName("QTabBar_DocumentMode")]
	public static extern bool QTabBar_DocumentMode(void* c_this);
	[LinkName("QTabBar_SetDocumentMode")]
	public static extern void QTabBar_SetDocumentMode(void* c_this, bool set);
	[LinkName("QTabBar_AutoHide")]
	public static extern bool QTabBar_AutoHide(void* c_this);
	[LinkName("QTabBar_SetAutoHide")]
	public static extern void QTabBar_SetAutoHide(void* c_this, bool hide);
	[LinkName("QTabBar_ChangeCurrentOnDrag")]
	public static extern bool QTabBar_ChangeCurrentOnDrag(void* c_this);
	[LinkName("QTabBar_SetChangeCurrentOnDrag")]
	public static extern void QTabBar_SetChangeCurrentOnDrag(void* c_this, bool change);
	[LinkName("QTabBar_AccessibleTabName")]
	public static extern char8[] QTabBar_AccessibleTabName(void* c_this, int32 index);
	[LinkName("QTabBar_SetAccessibleTabName")]
	public static extern void QTabBar_SetAccessibleTabName(void* c_this, int32 index, char8[] name);
	[LinkName("QTabBar_SetCurrentIndex")]
	public static extern void QTabBar_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QTabBar_CurrentChanged")]
	public static extern void QTabBar_CurrentChanged(void* c_this, int32 index);
	[LinkName("QTabBar_TabCloseRequested")]
	public static extern void QTabBar_TabCloseRequested(void* c_this, int32 index);
	[LinkName("QTabBar_TabMoved")]
	public static extern void QTabBar_TabMoved(void* c_this, int32 from, int32 to);
	[LinkName("QTabBar_TabBarClicked")]
	public static extern void QTabBar_TabBarClicked(void* c_this, int32 index);
	[LinkName("QTabBar_TabBarDoubleClicked")]
	public static extern void QTabBar_TabBarDoubleClicked(void* c_this, int32 index);
	[LinkName("QTabBar_TabSizeHint")]
	public static extern QSize QTabBar_TabSizeHint(void* c_this, int32 index);
	[LinkName("QTabBar_MinimumTabSizeHint")]
	public static extern QSize QTabBar_MinimumTabSizeHint(void* c_this, int32 index);
	[LinkName("QTabBar_TabInserted")]
	public static extern void QTabBar_TabInserted(void* c_this, int32 index);
	[LinkName("QTabBar_TabRemoved")]
	public static extern void QTabBar_TabRemoved(void* c_this, int32 index);
	[LinkName("QTabBar_TabLayoutChange")]
	public static extern void QTabBar_TabLayoutChange(void* c_this);
	[LinkName("QTabBar_Event")]
	public static extern bool QTabBar_Event(void* c_this, QEvent param1);
	[LinkName("QTabBar_ResizeEvent")]
	public static extern void QTabBar_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QTabBar_ShowEvent")]
	public static extern void QTabBar_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QTabBar_HideEvent")]
	public static extern void QTabBar_HideEvent(void* c_this, QHideEvent param1);
	[LinkName("QTabBar_PaintEvent")]
	public static extern void QTabBar_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QTabBar_MousePressEvent")]
	public static extern void QTabBar_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QTabBar_MouseMoveEvent")]
	public static extern void QTabBar_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QTabBar_MouseReleaseEvent")]
	public static extern void QTabBar_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QTabBar_MouseDoubleClickEvent")]
	public static extern void QTabBar_MouseDoubleClickEvent(void* c_this, QMouseEvent param1);
	[LinkName("QTabBar_WheelEvent")]
	public static extern void QTabBar_WheelEvent(void* c_this, QWheelEvent event);
	[LinkName("QTabBar_KeyPressEvent")]
	public static extern void QTabBar_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QTabBar_ChangeEvent")]
	public static extern void QTabBar_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QTabBar_TimerEvent")]
	public static extern void QTabBar_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QTabBar_InitStyleOption")]
	public static extern void QTabBar_InitStyleOption(void* c_this, QStyleOptionTab option, int32 tabIndex);
	[LinkName("QTabBar_Tr2")]
	public static extern char8[] QTabBar_Tr2(char8[] s, char8[] c);
	[LinkName("QTabBar_Tr3")]
	public static extern char8[] QTabBar_Tr3(char8[] s, char8[] c, int32 n);
}