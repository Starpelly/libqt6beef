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
public struct QTabBar : QWidget
{
	[LinkName("QTabBar_new")]
	public static extern QTabBar* QTabBar_new(QWidget* parent);
	[LinkName("QTabBar_new2")]
	public static extern QTabBar* QTabBar_new2();
	[LinkName("QTabBar_MetaObject")]
	public static extern QMetaObject* QTabBar_MetaObject(Self* c_this);
	[LinkName("QTabBar_Metacast")]
	public static extern void* QTabBar_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTabBar_Metacall")]
	public static extern int32 QTabBar_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTabBar_Tr")]
	public static extern libqt_string QTabBar_Tr(char8[] s);
	[LinkName("QTabBar_Shape")]
	public static extern int64 QTabBar_Shape(Self* c_this);
	[LinkName("QTabBar_SetShape")]
	public static extern void QTabBar_SetShape(Self* c_this, int64 shape);
	[LinkName("QTabBar_AddTab")]
	public static extern int32 QTabBar_AddTab(Self* c_this, libqt_string text);
	[LinkName("QTabBar_AddTab2")]
	public static extern int32 QTabBar_AddTab2(Self* c_this, QIcon* icon, libqt_string text);
	[LinkName("QTabBar_InsertTab")]
	public static extern int32 QTabBar_InsertTab(Self* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_InsertTab2")]
	public static extern int32 QTabBar_InsertTab2(Self* c_this, int32 index, QIcon* icon, libqt_string text);
	[LinkName("QTabBar_RemoveTab")]
	public static extern void QTabBar_RemoveTab(Self* c_this, int32 index);
	[LinkName("QTabBar_MoveTab")]
	public static extern void QTabBar_MoveTab(Self* c_this, int32 from, int32 to);
	[LinkName("QTabBar_IsTabEnabled")]
	public static extern bool QTabBar_IsTabEnabled(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabEnabled")]
	public static extern void QTabBar_SetTabEnabled(Self* c_this, int32 index, bool enabled);
	[LinkName("QTabBar_IsTabVisible")]
	public static extern bool QTabBar_IsTabVisible(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabVisible")]
	public static extern void QTabBar_SetTabVisible(Self* c_this, int32 index, bool visible);
	[LinkName("QTabBar_TabText")]
	public static extern libqt_string QTabBar_TabText(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabText")]
	public static extern void QTabBar_SetTabText(Self* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_TabTextColor")]
	public static extern QColor QTabBar_TabTextColor(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabTextColor")]
	public static extern void QTabBar_SetTabTextColor(Self* c_this, int32 index, QColor* color);
	[LinkName("QTabBar_TabIcon")]
	public static extern QIcon QTabBar_TabIcon(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabIcon")]
	public static extern void QTabBar_SetTabIcon(Self* c_this, int32 index, QIcon* icon);
	[LinkName("QTabBar_ElideMode")]
	public static extern int64 QTabBar_ElideMode(Self* c_this);
	[LinkName("QTabBar_SetElideMode")]
	public static extern void QTabBar_SetElideMode(Self* c_this, int64 mode);
	[LinkName("QTabBar_SetTabToolTip")]
	public static extern void QTabBar_SetTabToolTip(Self* c_this, int32 index, libqt_string tip);
	[LinkName("QTabBar_TabToolTip")]
	public static extern libqt_string QTabBar_TabToolTip(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabWhatsThis")]
	public static extern void QTabBar_SetTabWhatsThis(Self* c_this, int32 index, libqt_string text);
	[LinkName("QTabBar_TabWhatsThis")]
	public static extern libqt_string QTabBar_TabWhatsThis(Self* c_this, int32 index);
	[LinkName("QTabBar_SetTabData")]
	public static extern void QTabBar_SetTabData(Self* c_this, int32 index, QVariant* data);
	[LinkName("QTabBar_TabData")]
	public static extern QVariant QTabBar_TabData(Self* c_this, int32 index);
	[LinkName("QTabBar_TabRect")]
	public static extern QRect QTabBar_TabRect(Self* c_this, int32 index);
	[LinkName("QTabBar_TabAt")]
	public static extern int32 QTabBar_TabAt(Self* c_this, QPoint* pos);
	[LinkName("QTabBar_CurrentIndex")]
	public static extern int32 QTabBar_CurrentIndex(Self* c_this);
	[LinkName("QTabBar_Count")]
	public static extern int32 QTabBar_Count(Self* c_this);
	[LinkName("QTabBar_SizeHint")]
	public static extern QSize QTabBar_SizeHint(Self* c_this);
	[LinkName("QTabBar_MinimumSizeHint")]
	public static extern QSize QTabBar_MinimumSizeHint(Self* c_this);
	[LinkName("QTabBar_SetDrawBase")]
	public static extern void QTabBar_SetDrawBase(Self* c_this, bool drawTheBase);
	[LinkName("QTabBar_DrawBase")]
	public static extern bool QTabBar_DrawBase(Self* c_this);
	[LinkName("QTabBar_IconSize")]
	public static extern QSize QTabBar_IconSize(Self* c_this);
	[LinkName("QTabBar_SetIconSize")]
	public static extern void QTabBar_SetIconSize(Self* c_this, QSize* size);
	[LinkName("QTabBar_UsesScrollButtons")]
	public static extern bool QTabBar_UsesScrollButtons(Self* c_this);
	[LinkName("QTabBar_SetUsesScrollButtons")]
	public static extern void QTabBar_SetUsesScrollButtons(Self* c_this, bool useButtons);
	[LinkName("QTabBar_TabsClosable")]
	public static extern bool QTabBar_TabsClosable(Self* c_this);
	[LinkName("QTabBar_SetTabsClosable")]
	public static extern void QTabBar_SetTabsClosable(Self* c_this, bool closable);
	[LinkName("QTabBar_SetTabButton")]
	public static extern void QTabBar_SetTabButton(Self* c_this, int32 index, int64 position, QWidget* widget);
	[LinkName("QTabBar_TabButton")]
	public static extern QWidget* QTabBar_TabButton(Self* c_this, int32 index, int64 position);
	[LinkName("QTabBar_SelectionBehaviorOnRemove")]
	public static extern int64 QTabBar_SelectionBehaviorOnRemove(Self* c_this);
	[LinkName("QTabBar_SetSelectionBehaviorOnRemove")]
	public static extern void QTabBar_SetSelectionBehaviorOnRemove(Self* c_this, int64 behavior);
	[LinkName("QTabBar_Expanding")]
	public static extern bool QTabBar_Expanding(Self* c_this);
	[LinkName("QTabBar_SetExpanding")]
	public static extern void QTabBar_SetExpanding(Self* c_this, bool enabled);
	[LinkName("QTabBar_IsMovable")]
	public static extern bool QTabBar_IsMovable(Self* c_this);
	[LinkName("QTabBar_SetMovable")]
	public static extern void QTabBar_SetMovable(Self* c_this, bool movable);
	[LinkName("QTabBar_DocumentMode")]
	public static extern bool QTabBar_DocumentMode(Self* c_this);
	[LinkName("QTabBar_SetDocumentMode")]
	public static extern void QTabBar_SetDocumentMode(Self* c_this, bool set);
	[LinkName("QTabBar_AutoHide")]
	public static extern bool QTabBar_AutoHide(Self* c_this);
	[LinkName("QTabBar_SetAutoHide")]
	public static extern void QTabBar_SetAutoHide(Self* c_this, bool hide);
	[LinkName("QTabBar_ChangeCurrentOnDrag")]
	public static extern bool QTabBar_ChangeCurrentOnDrag(Self* c_this);
	[LinkName("QTabBar_SetChangeCurrentOnDrag")]
	public static extern void QTabBar_SetChangeCurrentOnDrag(Self* c_this, bool change);
	[LinkName("QTabBar_AccessibleTabName")]
	public static extern libqt_string QTabBar_AccessibleTabName(Self* c_this, int32 index);
	[LinkName("QTabBar_SetAccessibleTabName")]
	public static extern void QTabBar_SetAccessibleTabName(Self* c_this, int32 index, libqt_string name);
	[LinkName("QTabBar_SetCurrentIndex")]
	public static extern void QTabBar_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QTabBar_Connect_CurrentChanged")]
	public static extern void QTabBar_Connect_CurrentChanged(Self* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabCloseRequested")]
	public static extern void QTabBar_Connect_TabCloseRequested(Self* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabMoved")]
	public static extern void QTabBar_Connect_TabMoved(Self* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabBarClicked")]
	public static extern void QTabBar_Connect_TabBarClicked(Self* c_this, c_intptr slot);
	[LinkName("QTabBar_Connect_TabBarDoubleClicked")]
	public static extern void QTabBar_Connect_TabBarDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QTabBar_TabSizeHint")]
	public static extern QSize QTabBar_TabSizeHint(Self* c_this, int32 index);
	[LinkName("QTabBar_MinimumTabSizeHint")]
	public static extern QSize QTabBar_MinimumTabSizeHint(Self* c_this, int32 index);
	[LinkName("QTabBar_TabInserted")]
	public static extern void QTabBar_TabInserted(Self* c_this, int32 index);
	[LinkName("QTabBar_TabRemoved")]
	public static extern void QTabBar_TabRemoved(Self* c_this, int32 index);
	[LinkName("QTabBar_TabLayoutChange")]
	public static extern void QTabBar_TabLayoutChange(Self* c_this);
	[LinkName("QTabBar_Event")]
	public static extern bool QTabBar_Event(Self* c_this, QEvent* param1);
	[LinkName("QTabBar_ResizeEvent")]
	public static extern void QTabBar_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QTabBar_ShowEvent")]
	public static extern void QTabBar_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QTabBar_HideEvent")]
	public static extern void QTabBar_HideEvent(Self* c_this, QHideEvent* param1);
	[LinkName("QTabBar_PaintEvent")]
	public static extern void QTabBar_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QTabBar_MousePressEvent")]
	public static extern void QTabBar_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QTabBar_MouseMoveEvent")]
	public static extern void QTabBar_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QTabBar_MouseReleaseEvent")]
	public static extern void QTabBar_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QTabBar_MouseDoubleClickEvent")]
	public static extern void QTabBar_MouseDoubleClickEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QTabBar_WheelEvent")]
	public static extern void QTabBar_WheelEvent(Self* c_this, QWheelEvent* event);
	[LinkName("QTabBar_KeyPressEvent")]
	public static extern void QTabBar_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QTabBar_ChangeEvent")]
	public static extern void QTabBar_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QTabBar_TimerEvent")]
	public static extern void QTabBar_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QTabBar_InitStyleOption")]
	public static extern void QTabBar_InitStyleOption(Self* c_this, QStyleOptionTab* option, int32 tabIndex);
	[LinkName("QTabBar_Tr2")]
	public static extern libqt_string QTabBar_Tr2(char8[] s, char8[] c);
	[LinkName("QTabBar_Tr3")]
	public static extern libqt_string QTabBar_Tr3(char8[] s, char8[] c, int32 n);
}