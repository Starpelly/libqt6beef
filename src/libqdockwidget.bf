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
public struct QDockWidget
{
	[LinkName("QDockWidget_new")]
	public static extern void* QDockWidget_new(QWidget parent);
	[LinkName("QDockWidget_new2")]
	public static extern void* QDockWidget_new2(char8[] title);
	[LinkName("QDockWidget_new3")]
	public static extern void* QDockWidget_new3();
	[LinkName("QDockWidget_new4")]
	public static extern void* QDockWidget_new4(char8[] title, QWidget parent);
	[LinkName("QDockWidget_new5")]
	public static extern void* QDockWidget_new5(char8[] title, QWidget parent, int64 flags);
	[LinkName("QDockWidget_new6")]
	public static extern void* QDockWidget_new6(QWidget parent, int64 flags);
	[LinkName("QDockWidget_MetaObject")]
	public static extern QMetaObject QDockWidget_MetaObject(void* c_this);
	[LinkName("QDockWidget_Metacast")]
	public static extern void QDockWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QDockWidget_Metacall")]
	public static extern int32 QDockWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDockWidget_Tr")]
	public static extern char8[] QDockWidget_Tr(char8[] s);
	[LinkName("QDockWidget_Widget")]
	public static extern QWidget QDockWidget_Widget(void* c_this);
	[LinkName("QDockWidget_SetWidget")]
	public static extern void QDockWidget_SetWidget(void* c_this, QWidget widget);
	[LinkName("QDockWidget_SetFeatures")]
	public static extern void QDockWidget_SetFeatures(void* c_this, int64 features);
	[LinkName("QDockWidget_Features")]
	public static extern int64 QDockWidget_Features(void* c_this);
	[LinkName("QDockWidget_SetFloating")]
	public static extern void QDockWidget_SetFloating(void* c_this, bool floating);
	[LinkName("QDockWidget_IsFloating")]
	public static extern bool QDockWidget_IsFloating(void* c_this);
	[LinkName("QDockWidget_SetAllowedAreas")]
	public static extern void QDockWidget_SetAllowedAreas(void* c_this, int64 areas);
	[LinkName("QDockWidget_AllowedAreas")]
	public static extern int64 QDockWidget_AllowedAreas(void* c_this);
	[LinkName("QDockWidget_SetTitleBarWidget")]
	public static extern void QDockWidget_SetTitleBarWidget(void* c_this, QWidget widget);
	[LinkName("QDockWidget_TitleBarWidget")]
	public static extern QWidget QDockWidget_TitleBarWidget(void* c_this);
	[LinkName("QDockWidget_IsAreaAllowed")]
	public static extern bool QDockWidget_IsAreaAllowed(void* c_this, int64 area);
	[LinkName("QDockWidget_ToggleViewAction")]
	public static extern QAction QDockWidget_ToggleViewAction(void* c_this);
	[LinkName("QDockWidget_FeaturesChanged")]
	public static extern void QDockWidget_FeaturesChanged(void* c_this, int64 features);
	[LinkName("QDockWidget_TopLevelChanged")]
	public static extern void QDockWidget_TopLevelChanged(void* c_this, bool topLevel);
	[LinkName("QDockWidget_AllowedAreasChanged")]
	public static extern void QDockWidget_AllowedAreasChanged(void* c_this, int64 allowedAreas);
	[LinkName("QDockWidget_VisibilityChanged")]
	public static extern void QDockWidget_VisibilityChanged(void* c_this, bool visible);
	[LinkName("QDockWidget_DockLocationChanged")]
	public static extern void QDockWidget_DockLocationChanged(void* c_this, int64 area);
	[LinkName("QDockWidget_ChangeEvent")]
	public static extern void QDockWidget_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QDockWidget_CloseEvent")]
	public static extern void QDockWidget_CloseEvent(void* c_this, QCloseEvent event);
	[LinkName("QDockWidget_PaintEvent")]
	public static extern void QDockWidget_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QDockWidget_Event")]
	public static extern bool QDockWidget_Event(void* c_this, QEvent event);
	[LinkName("QDockWidget_InitStyleOption")]
	public static extern void QDockWidget_InitStyleOption(void* c_this, QStyleOptionDockWidget option);
	[LinkName("QDockWidget_Tr2")]
	public static extern char8[] QDockWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QDockWidget_Tr3")]
	public static extern char8[] QDockWidget_Tr3(char8[] s, char8[] c, int32 n);
}