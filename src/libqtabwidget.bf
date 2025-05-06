using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTabWidget__TabPosition
{
	North = 0,
	South = 1,
	West = 2,
	East = 3,
}
[AllowDuplicates]
public enum QTabWidget__TabShape
{
	Rounded = 0,
	Triangular = 1,
}
public struct QTabWidget
{
	[LinkName("QTabWidget_new")]
	public static extern void* QTabWidget_new(QWidget parent);
	[LinkName("QTabWidget_new2")]
	public static extern void* QTabWidget_new2();
	[LinkName("QTabWidget_MetaObject")]
	public static extern QMetaObject QTabWidget_MetaObject(void* c_this);
	[LinkName("QTabWidget_Metacast")]
	public static extern void QTabWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QTabWidget_Metacall")]
	public static extern int32 QTabWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTabWidget_Tr")]
	public static extern char8[] QTabWidget_Tr(char8[] s);
	[LinkName("QTabWidget_AddTab")]
	public static extern int32 QTabWidget_AddTab(void* c_this, QWidget widget, char8[] param2);
	[LinkName("QTabWidget_AddTab2")]
	public static extern int32 QTabWidget_AddTab2(void* c_this, QWidget widget, QIcon icon, char8[] label);
	[LinkName("QTabWidget_InsertTab")]
	public static extern int32 QTabWidget_InsertTab(void* c_this, int32 index, QWidget widget, char8[] param3);
	[LinkName("QTabWidget_InsertTab2")]
	public static extern int32 QTabWidget_InsertTab2(void* c_this, int32 index, QWidget widget, QIcon icon, char8[] label);
	[LinkName("QTabWidget_RemoveTab")]
	public static extern void QTabWidget_RemoveTab(void* c_this, int32 index);
	[LinkName("QTabWidget_IsTabEnabled")]
	public static extern bool QTabWidget_IsTabEnabled(void* c_this, int32 index);
	[LinkName("QTabWidget_SetTabEnabled")]
	public static extern void QTabWidget_SetTabEnabled(void* c_this, int32 index, bool enabled);
	[LinkName("QTabWidget_IsTabVisible")]
	public static extern bool QTabWidget_IsTabVisible(void* c_this, int32 index);
	[LinkName("QTabWidget_SetTabVisible")]
	public static extern void QTabWidget_SetTabVisible(void* c_this, int32 index, bool visible);
	[LinkName("QTabWidget_TabText")]
	public static extern char8[] QTabWidget_TabText(void* c_this, int32 index);
	[LinkName("QTabWidget_SetTabText")]
	public static extern void QTabWidget_SetTabText(void* c_this, int32 index, char8[] text);
	[LinkName("QTabWidget_TabIcon")]
	public static extern QIcon QTabWidget_TabIcon(void* c_this, int32 index);
	[LinkName("QTabWidget_SetTabIcon")]
	public static extern void QTabWidget_SetTabIcon(void* c_this, int32 index, QIcon icon);
	[LinkName("QTabWidget_SetTabToolTip")]
	public static extern void QTabWidget_SetTabToolTip(void* c_this, int32 index, char8[] tip);
	[LinkName("QTabWidget_TabToolTip")]
	public static extern char8[] QTabWidget_TabToolTip(void* c_this, int32 index);
	[LinkName("QTabWidget_SetTabWhatsThis")]
	public static extern void QTabWidget_SetTabWhatsThis(void* c_this, int32 index, char8[] text);
	[LinkName("QTabWidget_TabWhatsThis")]
	public static extern char8[] QTabWidget_TabWhatsThis(void* c_this, int32 index);
	[LinkName("QTabWidget_CurrentIndex")]
	public static extern int32 QTabWidget_CurrentIndex(void* c_this);
	[LinkName("QTabWidget_CurrentWidget")]
	public static extern QWidget QTabWidget_CurrentWidget(void* c_this);
	[LinkName("QTabWidget_Widget")]
	public static extern QWidget QTabWidget_Widget(void* c_this, int32 index);
	[LinkName("QTabWidget_IndexOf")]
	public static extern int32 QTabWidget_IndexOf(void* c_this, QWidget widget);
	[LinkName("QTabWidget_Count")]
	public static extern int32 QTabWidget_Count(void* c_this);
	[LinkName("QTabWidget_TabPosition")]
	public static extern int64 QTabWidget_TabPosition(void* c_this);
	[LinkName("QTabWidget_SetTabPosition")]
	public static extern void QTabWidget_SetTabPosition(void* c_this, int64 position);
	[LinkName("QTabWidget_TabsClosable")]
	public static extern bool QTabWidget_TabsClosable(void* c_this);
	[LinkName("QTabWidget_SetTabsClosable")]
	public static extern void QTabWidget_SetTabsClosable(void* c_this, bool closeable);
	[LinkName("QTabWidget_IsMovable")]
	public static extern bool QTabWidget_IsMovable(void* c_this);
	[LinkName("QTabWidget_SetMovable")]
	public static extern void QTabWidget_SetMovable(void* c_this, bool movable);
	[LinkName("QTabWidget_TabShape")]
	public static extern int64 QTabWidget_TabShape(void* c_this);
	[LinkName("QTabWidget_SetTabShape")]
	public static extern void QTabWidget_SetTabShape(void* c_this, int64 s);
	[LinkName("QTabWidget_SizeHint")]
	public static extern QSize QTabWidget_SizeHint(void* c_this);
	[LinkName("QTabWidget_MinimumSizeHint")]
	public static extern QSize QTabWidget_MinimumSizeHint(void* c_this);
	[LinkName("QTabWidget_HeightForWidth")]
	public static extern int32 QTabWidget_HeightForWidth(void* c_this, int32 width);
	[LinkName("QTabWidget_HasHeightForWidth")]
	public static extern bool QTabWidget_HasHeightForWidth(void* c_this);
	[LinkName("QTabWidget_SetCornerWidget")]
	public static extern void QTabWidget_SetCornerWidget(void* c_this, QWidget w);
	[LinkName("QTabWidget_CornerWidget")]
	public static extern QWidget QTabWidget_CornerWidget(void* c_this);
	[LinkName("QTabWidget_ElideMode")]
	public static extern int64 QTabWidget_ElideMode(void* c_this);
	[LinkName("QTabWidget_SetElideMode")]
	public static extern void QTabWidget_SetElideMode(void* c_this, int64 mode);
	[LinkName("QTabWidget_IconSize")]
	public static extern QSize QTabWidget_IconSize(void* c_this);
	[LinkName("QTabWidget_SetIconSize")]
	public static extern void QTabWidget_SetIconSize(void* c_this, QSize size);
	[LinkName("QTabWidget_UsesScrollButtons")]
	public static extern bool QTabWidget_UsesScrollButtons(void* c_this);
	[LinkName("QTabWidget_SetUsesScrollButtons")]
	public static extern void QTabWidget_SetUsesScrollButtons(void* c_this, bool useButtons);
	[LinkName("QTabWidget_DocumentMode")]
	public static extern bool QTabWidget_DocumentMode(void* c_this);
	[LinkName("QTabWidget_SetDocumentMode")]
	public static extern void QTabWidget_SetDocumentMode(void* c_this, bool set);
	[LinkName("QTabWidget_TabBarAutoHide")]
	public static extern bool QTabWidget_TabBarAutoHide(void* c_this);
	[LinkName("QTabWidget_SetTabBarAutoHide")]
	public static extern void QTabWidget_SetTabBarAutoHide(void* c_this, bool enabled);
	[LinkName("QTabWidget_Clear")]
	public static extern void QTabWidget_Clear(void* c_this);
	[LinkName("QTabWidget_TabBar")]
	public static extern QTabBar QTabWidget_TabBar(void* c_this);
	[LinkName("QTabWidget_SetCurrentIndex")]
	public static extern void QTabWidget_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QTabWidget_SetCurrentWidget")]
	public static extern void QTabWidget_SetCurrentWidget(void* c_this, QWidget widget);
	[LinkName("QTabWidget_CurrentChanged")]
	public static extern void QTabWidget_CurrentChanged(void* c_this, int32 index);
	[LinkName("QTabWidget_TabCloseRequested")]
	public static extern void QTabWidget_TabCloseRequested(void* c_this, int32 index);
	[LinkName("QTabWidget_TabBarClicked")]
	public static extern void QTabWidget_TabBarClicked(void* c_this, int32 index);
	[LinkName("QTabWidget_TabBarDoubleClicked")]
	public static extern void QTabWidget_TabBarDoubleClicked(void* c_this, int32 index);
	[LinkName("QTabWidget_TabInserted")]
	public static extern void QTabWidget_TabInserted(void* c_this, int32 index);
	[LinkName("QTabWidget_TabRemoved")]
	public static extern void QTabWidget_TabRemoved(void* c_this, int32 index);
	[LinkName("QTabWidget_ShowEvent")]
	public static extern void QTabWidget_ShowEvent(void* c_this, QShowEvent param1);
	[LinkName("QTabWidget_ResizeEvent")]
	public static extern void QTabWidget_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QTabWidget_KeyPressEvent")]
	public static extern void QTabWidget_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QTabWidget_PaintEvent")]
	public static extern void QTabWidget_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QTabWidget_SetTabBar")]
	public static extern void QTabWidget_SetTabBar(void* c_this, QTabBar tabBar);
	[LinkName("QTabWidget_ChangeEvent")]
	public static extern void QTabWidget_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QTabWidget_Event")]
	public static extern bool QTabWidget_Event(void* c_this, QEvent param1);
	[LinkName("QTabWidget_InitStyleOption")]
	public static extern void QTabWidget_InitStyleOption(void* c_this, QStyleOptionTabWidgetFrame option);
	[LinkName("QTabWidget_Tr2")]
	public static extern char8[] QTabWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTabWidget_Tr3")]
	public static extern char8[] QTabWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTabWidget_SetCornerWidget2")]
	public static extern void QTabWidget_SetCornerWidget2(void* c_this, QWidget w, int64 corner);
	[LinkName("QTabWidget_CornerWidget1")]
	public static extern QWidget QTabWidget_CornerWidget1(void* c_this, int64 corner);
}