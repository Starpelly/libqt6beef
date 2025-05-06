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
public struct QTabWidget : QWidget
{
	[LinkName("QTabWidget_new")]
	public static extern QTabWidget* QTabWidget_new(QWidget* parent);
	[LinkName("QTabWidget_new2")]
	public static extern QTabWidget* QTabWidget_new2();
	[LinkName("QTabWidget_MetaObject")]
	public static extern QMetaObject* QTabWidget_MetaObject(Self* c_this);
	[LinkName("QTabWidget_Metacast")]
	public static extern void* QTabWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTabWidget_Metacall")]
	public static extern int32 QTabWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTabWidget_Tr")]
	public static extern libqt_string QTabWidget_Tr(char8[] s);
	[LinkName("QTabWidget_AddTab")]
	public static extern int32 QTabWidget_AddTab(Self* c_this, QWidget* widget, libqt_string param2);
	[LinkName("QTabWidget_AddTab2")]
	public static extern int32 QTabWidget_AddTab2(Self* c_this, QWidget* widget, QIcon* icon, libqt_string label);
	[LinkName("QTabWidget_InsertTab")]
	public static extern int32 QTabWidget_InsertTab(Self* c_this, int32 index, QWidget* widget, libqt_string param3);
	[LinkName("QTabWidget_InsertTab2")]
	public static extern int32 QTabWidget_InsertTab2(Self* c_this, int32 index, QWidget* widget, QIcon* icon, libqt_string label);
	[LinkName("QTabWidget_RemoveTab")]
	public static extern void QTabWidget_RemoveTab(Self* c_this, int32 index);
	[LinkName("QTabWidget_IsTabEnabled")]
	public static extern bool QTabWidget_IsTabEnabled(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetTabEnabled")]
	public static extern void QTabWidget_SetTabEnabled(Self* c_this, int32 index, bool enabled);
	[LinkName("QTabWidget_IsTabVisible")]
	public static extern bool QTabWidget_IsTabVisible(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetTabVisible")]
	public static extern void QTabWidget_SetTabVisible(Self* c_this, int32 index, bool visible);
	[LinkName("QTabWidget_TabText")]
	public static extern libqt_string QTabWidget_TabText(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetTabText")]
	public static extern void QTabWidget_SetTabText(Self* c_this, int32 index, libqt_string text);
	[LinkName("QTabWidget_TabIcon")]
	public static extern QIcon QTabWidget_TabIcon(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetTabIcon")]
	public static extern void QTabWidget_SetTabIcon(Self* c_this, int32 index, QIcon* icon);
	[LinkName("QTabWidget_SetTabToolTip")]
	public static extern void QTabWidget_SetTabToolTip(Self* c_this, int32 index, libqt_string tip);
	[LinkName("QTabWidget_TabToolTip")]
	public static extern libqt_string QTabWidget_TabToolTip(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetTabWhatsThis")]
	public static extern void QTabWidget_SetTabWhatsThis(Self* c_this, int32 index, libqt_string text);
	[LinkName("QTabWidget_TabWhatsThis")]
	public static extern libqt_string QTabWidget_TabWhatsThis(Self* c_this, int32 index);
	[LinkName("QTabWidget_CurrentIndex")]
	public static extern int32 QTabWidget_CurrentIndex(Self* c_this);
	[LinkName("QTabWidget_CurrentWidget")]
	public static extern QWidget* QTabWidget_CurrentWidget(Self* c_this);
	[LinkName("QTabWidget_Widget")]
	public static extern QWidget* QTabWidget_Widget(Self* c_this, int32 index);
	[LinkName("QTabWidget_IndexOf")]
	public static extern int32 QTabWidget_IndexOf(Self* c_this, QWidget* widget);
	[LinkName("QTabWidget_Count")]
	public static extern int32 QTabWidget_Count(Self* c_this);
	[LinkName("QTabWidget_TabPosition")]
	public static extern int64 QTabWidget_TabPosition(Self* c_this);
	[LinkName("QTabWidget_SetTabPosition")]
	public static extern void QTabWidget_SetTabPosition(Self* c_this, int64 position);
	[LinkName("QTabWidget_TabsClosable")]
	public static extern bool QTabWidget_TabsClosable(Self* c_this);
	[LinkName("QTabWidget_SetTabsClosable")]
	public static extern void QTabWidget_SetTabsClosable(Self* c_this, bool closeable);
	[LinkName("QTabWidget_IsMovable")]
	public static extern bool QTabWidget_IsMovable(Self* c_this);
	[LinkName("QTabWidget_SetMovable")]
	public static extern void QTabWidget_SetMovable(Self* c_this, bool movable);
	[LinkName("QTabWidget_TabShape")]
	public static extern int64 QTabWidget_TabShape(Self* c_this);
	[LinkName("QTabWidget_SetTabShape")]
	public static extern void QTabWidget_SetTabShape(Self* c_this, int64 s);
	[LinkName("QTabWidget_SizeHint")]
	public static extern QSize QTabWidget_SizeHint(Self* c_this);
	[LinkName("QTabWidget_MinimumSizeHint")]
	public static extern QSize QTabWidget_MinimumSizeHint(Self* c_this);
	[LinkName("QTabWidget_HeightForWidth")]
	public static extern int32 QTabWidget_HeightForWidth(Self* c_this, int32 width);
	[LinkName("QTabWidget_HasHeightForWidth")]
	public static extern bool QTabWidget_HasHeightForWidth(Self* c_this);
	[LinkName("QTabWidget_SetCornerWidget")]
	public static extern void QTabWidget_SetCornerWidget(Self* c_this, QWidget* w);
	[LinkName("QTabWidget_CornerWidget")]
	public static extern QWidget* QTabWidget_CornerWidget(Self* c_this);
	[LinkName("QTabWidget_ElideMode")]
	public static extern int64 QTabWidget_ElideMode(Self* c_this);
	[LinkName("QTabWidget_SetElideMode")]
	public static extern void QTabWidget_SetElideMode(Self* c_this, int64 mode);
	[LinkName("QTabWidget_IconSize")]
	public static extern QSize QTabWidget_IconSize(Self* c_this);
	[LinkName("QTabWidget_SetIconSize")]
	public static extern void QTabWidget_SetIconSize(Self* c_this, QSize* size);
	[LinkName("QTabWidget_UsesScrollButtons")]
	public static extern bool QTabWidget_UsesScrollButtons(Self* c_this);
	[LinkName("QTabWidget_SetUsesScrollButtons")]
	public static extern void QTabWidget_SetUsesScrollButtons(Self* c_this, bool useButtons);
	[LinkName("QTabWidget_DocumentMode")]
	public static extern bool QTabWidget_DocumentMode(Self* c_this);
	[LinkName("QTabWidget_SetDocumentMode")]
	public static extern void QTabWidget_SetDocumentMode(Self* c_this, bool set);
	[LinkName("QTabWidget_TabBarAutoHide")]
	public static extern bool QTabWidget_TabBarAutoHide(Self* c_this);
	[LinkName("QTabWidget_SetTabBarAutoHide")]
	public static extern void QTabWidget_SetTabBarAutoHide(Self* c_this, bool enabled);
	[LinkName("QTabWidget_Clear")]
	public static extern void QTabWidget_Clear(Self* c_this);
	[LinkName("QTabWidget_TabBar")]
	public static extern QTabBar* QTabWidget_TabBar(Self* c_this);
	[LinkName("QTabWidget_SetCurrentIndex")]
	public static extern void QTabWidget_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QTabWidget_SetCurrentWidget")]
	public static extern void QTabWidget_SetCurrentWidget(Self* c_this, QWidget* widget);
	[LinkName("QTabWidget_Connect_CurrentChanged")]
	public static extern void QTabWidget_Connect_CurrentChanged(Self* c_this, c_intptr slot);
	[LinkName("QTabWidget_Connect_TabCloseRequested")]
	public static extern void QTabWidget_Connect_TabCloseRequested(Self* c_this, c_intptr slot);
	[LinkName("QTabWidget_Connect_TabBarClicked")]
	public static extern void QTabWidget_Connect_TabBarClicked(Self* c_this, c_intptr slot);
	[LinkName("QTabWidget_Connect_TabBarDoubleClicked")]
	public static extern void QTabWidget_Connect_TabBarDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QTabWidget_TabInserted")]
	public static extern void QTabWidget_TabInserted(Self* c_this, int32 index);
	[LinkName("QTabWidget_TabRemoved")]
	public static extern void QTabWidget_TabRemoved(Self* c_this, int32 index);
	[LinkName("QTabWidget_ShowEvent")]
	public static extern void QTabWidget_ShowEvent(Self* c_this, QShowEvent* param1);
	[LinkName("QTabWidget_ResizeEvent")]
	public static extern void QTabWidget_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QTabWidget_KeyPressEvent")]
	public static extern void QTabWidget_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QTabWidget_PaintEvent")]
	public static extern void QTabWidget_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QTabWidget_SetTabBar")]
	public static extern void QTabWidget_SetTabBar(Self* c_this, QTabBar* tabBar);
	[LinkName("QTabWidget_ChangeEvent")]
	public static extern void QTabWidget_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QTabWidget_Event")]
	public static extern bool QTabWidget_Event(Self* c_this, QEvent* param1);
	[LinkName("QTabWidget_InitStyleOption")]
	public static extern void QTabWidget_InitStyleOption(Self* c_this, QStyleOptionTabWidgetFrame* option);
	[LinkName("QTabWidget_Tr2")]
	public static extern libqt_string QTabWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTabWidget_Tr3")]
	public static extern libqt_string QTabWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTabWidget_SetCornerWidget2")]
	public static extern void QTabWidget_SetCornerWidget2(Self* c_this, QWidget* w, int64 corner);
	[LinkName("QTabWidget_CornerWidget1")]
	public static extern QWidget* QTabWidget_CornerWidget1(Self* c_this, int64 corner);
}