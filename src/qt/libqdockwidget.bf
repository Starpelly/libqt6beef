using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDockWidget__DockWidgetFeature
{
	DockWidgetClosable = 1,
	DockWidgetMovable = 2,
	DockWidgetFloatable = 4,
	DockWidgetVerticalTitleBar = 8,
	DockWidgetFeatureMask = 15,
	NoDockWidgetFeatures = 0,
	Reserved = 255,
}
public struct QDockWidget : QWidget
{
	[LinkName("QDockWidget_new")]
	public static extern QDockWidget* QDockWidget_new(QWidget* parent);
	[LinkName("QDockWidget_new2")]
	public static extern QDockWidget* QDockWidget_new2(libqt_string title);
	[LinkName("QDockWidget_new3")]
	public static extern QDockWidget* QDockWidget_new3();
	[LinkName("QDockWidget_new4")]
	public static extern QDockWidget* QDockWidget_new4(libqt_string title, QWidget* parent);
	[LinkName("QDockWidget_new5")]
	public static extern QDockWidget* QDockWidget_new5(libqt_string title, QWidget* parent, int64 flags);
	[LinkName("QDockWidget_new6")]
	public static extern QDockWidget* QDockWidget_new6(QWidget* parent, int64 flags);
	[LinkName("QDockWidget_MetaObject")]
	public static extern QMetaObject* QDockWidget_MetaObject(Self* c_this);
	[LinkName("QDockWidget_Metacast")]
	public static extern void* QDockWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDockWidget_Metacall")]
	public static extern int32 QDockWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDockWidget_Tr")]
	public static extern libqt_string QDockWidget_Tr(char8[] s);
	[LinkName("QDockWidget_Widget")]
	public static extern QWidget* QDockWidget_Widget(Self* c_this);
	[LinkName("QDockWidget_SetWidget")]
	public static extern void QDockWidget_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QDockWidget_SetFeatures")]
	public static extern void QDockWidget_SetFeatures(Self* c_this, int64 features);
	[LinkName("QDockWidget_Features")]
	public static extern int64 QDockWidget_Features(Self* c_this);
	[LinkName("QDockWidget_SetFloating")]
	public static extern void QDockWidget_SetFloating(Self* c_this, bool floating);
	[LinkName("QDockWidget_IsFloating")]
	public static extern bool QDockWidget_IsFloating(Self* c_this);
	[LinkName("QDockWidget_SetAllowedAreas")]
	public static extern void QDockWidget_SetAllowedAreas(Self* c_this, int64 areas);
	[LinkName("QDockWidget_AllowedAreas")]
	public static extern int64 QDockWidget_AllowedAreas(Self* c_this);
	[LinkName("QDockWidget_SetTitleBarWidget")]
	public static extern void QDockWidget_SetTitleBarWidget(Self* c_this, QWidget* widget);
	[LinkName("QDockWidget_TitleBarWidget")]
	public static extern QWidget* QDockWidget_TitleBarWidget(Self* c_this);
	[LinkName("QDockWidget_IsAreaAllowed")]
	public static extern bool QDockWidget_IsAreaAllowed(Self* c_this, int64 area);
	[LinkName("QDockWidget_ToggleViewAction")]
	public static extern QAction* QDockWidget_ToggleViewAction(Self* c_this);
	[LinkName("QDockWidget_FeaturesChanged")]
	public static extern void QDockWidget_FeaturesChanged(Self* c_this, int64 features);
	[LinkName("QDockWidget_TopLevelChanged")]
	public static extern void QDockWidget_TopLevelChanged(Self* c_this, bool topLevel);
	[LinkName("QDockWidget_AllowedAreasChanged")]
	public static extern void QDockWidget_AllowedAreasChanged(Self* c_this, int64 allowedAreas);
	[LinkName("QDockWidget_VisibilityChanged")]
	public static extern void QDockWidget_VisibilityChanged(Self* c_this, bool visible);
	[LinkName("QDockWidget_DockLocationChanged")]
	public static extern void QDockWidget_DockLocationChanged(Self* c_this, int64 area);
	[LinkName("QDockWidget_ChangeEvent")]
	public static extern void QDockWidget_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QDockWidget_CloseEvent")]
	public static extern void QDockWidget_CloseEvent(Self* c_this, QCloseEvent* event);
	[LinkName("QDockWidget_PaintEvent")]
	public static extern void QDockWidget_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QDockWidget_Event")]
	public static extern bool QDockWidget_Event(Self* c_this, QEvent* event);
	[LinkName("QDockWidget_InitStyleOption")]
	public static extern void QDockWidget_InitStyleOption(Self* c_this, QStyleOptionDockWidget* option);
	[LinkName("QDockWidget_Tr2")]
	public static extern libqt_string QDockWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QDockWidget_Tr3")]
	public static extern libqt_string QDockWidget_Tr3(char8[] s, char8[] c, int32 n);
}