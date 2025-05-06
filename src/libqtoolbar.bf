using System;
using System.Interop;
namespace Qt;

public struct QToolBar
{
	[LinkName("QToolBar_new")]
	public static extern void* QToolBar_new(QWidget parent);
	[LinkName("QToolBar_new2")]
	public static extern void* QToolBar_new2(char8[] title);
	[LinkName("QToolBar_new3")]
	public static extern void* QToolBar_new3();
	[LinkName("QToolBar_new4")]
	public static extern void* QToolBar_new4(char8[] title, QWidget parent);
	[LinkName("QToolBar_MetaObject")]
	public static extern QMetaObject QToolBar_MetaObject(void* c_this);
	[LinkName("QToolBar_Metacast")]
	public static extern void QToolBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QToolBar_Metacall")]
	public static extern int32 QToolBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QToolBar_Tr")]
	public static extern char8[] QToolBar_Tr(char8[] s);
	[LinkName("QToolBar_SetMovable")]
	public static extern void QToolBar_SetMovable(void* c_this, bool movable);
	[LinkName("QToolBar_IsMovable")]
	public static extern bool QToolBar_IsMovable(void* c_this);
	[LinkName("QToolBar_SetAllowedAreas")]
	public static extern void QToolBar_SetAllowedAreas(void* c_this, int64 areas);
	[LinkName("QToolBar_AllowedAreas")]
	public static extern int64 QToolBar_AllowedAreas(void* c_this);
	[LinkName("QToolBar_IsAreaAllowed")]
	public static extern bool QToolBar_IsAreaAllowed(void* c_this, int64 area);
	[LinkName("QToolBar_SetOrientation")]
	public static extern void QToolBar_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QToolBar_Orientation")]
	public static extern int64 QToolBar_Orientation(void* c_this);
	[LinkName("QToolBar_Clear")]
	public static extern void QToolBar_Clear(void* c_this);
	[LinkName("QToolBar_AddSeparator")]
	public static extern QAction QToolBar_AddSeparator(void* c_this);
	[LinkName("QToolBar_InsertSeparator")]
	public static extern QAction QToolBar_InsertSeparator(void* c_this, QAction before);
	[LinkName("QToolBar_AddWidget")]
	public static extern QAction QToolBar_AddWidget(void* c_this, QWidget widget);
	[LinkName("QToolBar_InsertWidget")]
	public static extern QAction QToolBar_InsertWidget(void* c_this, QAction before, QWidget widget);
	[LinkName("QToolBar_ActionGeometry")]
	public static extern QRect QToolBar_ActionGeometry(void* c_this, QAction action);
	[LinkName("QToolBar_ActionAt")]
	public static extern QAction QToolBar_ActionAt(void* c_this, QPoint p);
	[LinkName("QToolBar_ActionAt2")]
	public static extern QAction QToolBar_ActionAt2(void* c_this, int32 x, int32 y);
	[LinkName("QToolBar_ToggleViewAction")]
	public static extern QAction QToolBar_ToggleViewAction(void* c_this);
	[LinkName("QToolBar_IconSize")]
	public static extern QSize QToolBar_IconSize(void* c_this);
	[LinkName("QToolBar_ToolButtonStyle")]
	public static extern int64 QToolBar_ToolButtonStyle(void* c_this);
	[LinkName("QToolBar_WidgetForAction")]
	public static extern QWidget QToolBar_WidgetForAction(void* c_this, QAction action);
	[LinkName("QToolBar_IsFloatable")]
	public static extern bool QToolBar_IsFloatable(void* c_this);
	[LinkName("QToolBar_SetFloatable")]
	public static extern void QToolBar_SetFloatable(void* c_this, bool floatable);
	[LinkName("QToolBar_IsFloating")]
	public static extern bool QToolBar_IsFloating(void* c_this);
	[LinkName("QToolBar_SetIconSize")]
	public static extern void QToolBar_SetIconSize(void* c_this, QSize iconSize);
	[LinkName("QToolBar_SetToolButtonStyle")]
	public static extern void QToolBar_SetToolButtonStyle(void* c_this, int64 toolButtonStyle);
	[LinkName("QToolBar_ActionTriggered")]
	public static extern void QToolBar_ActionTriggered(void* c_this, QAction action);
	[LinkName("QToolBar_MovableChanged")]
	public static extern void QToolBar_MovableChanged(void* c_this, bool movable);
	[LinkName("QToolBar_AllowedAreasChanged")]
	public static extern void QToolBar_AllowedAreasChanged(void* c_this, int64 allowedAreas);
	[LinkName("QToolBar_OrientationChanged")]
	public static extern void QToolBar_OrientationChanged(void* c_this, int64 orientation);
	[LinkName("QToolBar_IconSizeChanged")]
	public static extern void QToolBar_IconSizeChanged(void* c_this, QSize iconSize);
	[LinkName("QToolBar_ToolButtonStyleChanged")]
	public static extern void QToolBar_ToolButtonStyleChanged(void* c_this, int64 toolButtonStyle);
	[LinkName("QToolBar_TopLevelChanged")]
	public static extern void QToolBar_TopLevelChanged(void* c_this, bool topLevel);
	[LinkName("QToolBar_VisibilityChanged")]
	public static extern void QToolBar_VisibilityChanged(void* c_this, bool visible);
	[LinkName("QToolBar_ActionEvent")]
	public static extern void QToolBar_ActionEvent(void* c_this, QActionEvent event);
	[LinkName("QToolBar_ChangeEvent")]
	public static extern void QToolBar_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QToolBar_PaintEvent")]
	public static extern void QToolBar_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QToolBar_Event")]
	public static extern bool QToolBar_Event(void* c_this, QEvent event);
	[LinkName("QToolBar_InitStyleOption")]
	public static extern void QToolBar_InitStyleOption(void* c_this, QStyleOptionToolBar option);
	[LinkName("QToolBar_Tr2")]
	public static extern char8[] QToolBar_Tr2(char8[] s, char8[] c);
	[LinkName("QToolBar_Tr3")]
	public static extern char8[] QToolBar_Tr3(char8[] s, char8[] c, int32 n);
}