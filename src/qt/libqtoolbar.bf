using System;
using System.Interop;
namespace Qt;

public struct QToolBar : QWidget
{
	[LinkName("QToolBar_new")]
	public static extern QToolBar* QToolBar_new(QWidget* parent);
	[LinkName("QToolBar_new2")]
	public static extern QToolBar* QToolBar_new2(libqt_string title);
	[LinkName("QToolBar_new3")]
	public static extern QToolBar* QToolBar_new3();
	[LinkName("QToolBar_new4")]
	public static extern QToolBar* QToolBar_new4(libqt_string title, QWidget* parent);
	[LinkName("QToolBar_MetaObject")]
	public static extern QMetaObject* QToolBar_MetaObject(Self* c_this);
	[LinkName("QToolBar_Metacast")]
	public static extern void* QToolBar_Metacast(Self* c_this, char8[] param1);
	[LinkName("QToolBar_Metacall")]
	public static extern int32 QToolBar_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QToolBar_Tr")]
	public static extern libqt_string QToolBar_Tr(char8[] s);
	[LinkName("QToolBar_SetMovable")]
	public static extern void QToolBar_SetMovable(Self* c_this, bool movable);
	[LinkName("QToolBar_IsMovable")]
	public static extern bool QToolBar_IsMovable(Self* c_this);
	[LinkName("QToolBar_SetAllowedAreas")]
	public static extern void QToolBar_SetAllowedAreas(Self* c_this, int64 areas);
	[LinkName("QToolBar_AllowedAreas")]
	public static extern int64 QToolBar_AllowedAreas(Self* c_this);
	[LinkName("QToolBar_IsAreaAllowed")]
	public static extern bool QToolBar_IsAreaAllowed(Self* c_this, int64 area);
	[LinkName("QToolBar_SetOrientation")]
	public static extern void QToolBar_SetOrientation(Self* c_this, int64 orientation);
	[LinkName("QToolBar_Orientation")]
	public static extern int64 QToolBar_Orientation(Self* c_this);
	[LinkName("QToolBar_Clear")]
	public static extern void QToolBar_Clear(Self* c_this);
	[LinkName("QToolBar_AddSeparator")]
	public static extern QAction* QToolBar_AddSeparator(Self* c_this);
	[LinkName("QToolBar_InsertSeparator")]
	public static extern QAction* QToolBar_InsertSeparator(Self* c_this, QAction* before);
	[LinkName("QToolBar_AddWidget")]
	public static extern QAction* QToolBar_AddWidget(Self* c_this, QWidget* widget);
	[LinkName("QToolBar_InsertWidget")]
	public static extern QAction* QToolBar_InsertWidget(Self* c_this, QAction* before, QWidget* widget);
	[LinkName("QToolBar_ActionGeometry")]
	public static extern QRect QToolBar_ActionGeometry(Self* c_this, QAction* action);
	[LinkName("QToolBar_ActionAt")]
	public static extern QAction* QToolBar_ActionAt(Self* c_this, QPoint* p);
	[LinkName("QToolBar_ActionAt2")]
	public static extern QAction* QToolBar_ActionAt2(Self* c_this, int32 x, int32 y);
	[LinkName("QToolBar_ToggleViewAction")]
	public static extern QAction* QToolBar_ToggleViewAction(Self* c_this);
	[LinkName("QToolBar_IconSize")]
	public static extern QSize QToolBar_IconSize(Self* c_this);
	[LinkName("QToolBar_ToolButtonStyle")]
	public static extern int64 QToolBar_ToolButtonStyle(Self* c_this);
	[LinkName("QToolBar_WidgetForAction")]
	public static extern QWidget* QToolBar_WidgetForAction(Self* c_this, QAction* action);
	[LinkName("QToolBar_IsFloatable")]
	public static extern bool QToolBar_IsFloatable(Self* c_this);
	[LinkName("QToolBar_SetFloatable")]
	public static extern void QToolBar_SetFloatable(Self* c_this, bool floatable);
	[LinkName("QToolBar_IsFloating")]
	public static extern bool QToolBar_IsFloating(Self* c_this);
	[LinkName("QToolBar_SetIconSize")]
	public static extern void QToolBar_SetIconSize(Self* c_this, QSize* iconSize);
	[LinkName("QToolBar_SetToolButtonStyle")]
	public static extern void QToolBar_SetToolButtonStyle(Self* c_this, int64 toolButtonStyle);
	[LinkName("QToolBar_Connect_ActionTriggered")]
	public static extern void QToolBar_Connect_ActionTriggered(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_MovableChanged")]
	public static extern void QToolBar_Connect_MovableChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_AllowedAreasChanged")]
	public static extern void QToolBar_Connect_AllowedAreasChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_OrientationChanged")]
	public static extern void QToolBar_Connect_OrientationChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_IconSizeChanged")]
	public static extern void QToolBar_Connect_IconSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_ToolButtonStyleChanged")]
	public static extern void QToolBar_Connect_ToolButtonStyleChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_TopLevelChanged")]
	public static extern void QToolBar_Connect_TopLevelChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_Connect_VisibilityChanged")]
	public static extern void QToolBar_Connect_VisibilityChanged(Self* c_this, c_intptr slot);
	[LinkName("QToolBar_ActionEvent")]
	public static extern void QToolBar_ActionEvent(Self* c_this, QActionEvent* event);
	[LinkName("QToolBar_ChangeEvent")]
	public static extern void QToolBar_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QToolBar_PaintEvent")]
	public static extern void QToolBar_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QToolBar_Event")]
	public static extern bool QToolBar_Event(Self* c_this, QEvent* event);
	[LinkName("QToolBar_InitStyleOption")]
	public static extern void QToolBar_InitStyleOption(Self* c_this, QStyleOptionToolBar* option);
	[LinkName("QToolBar_Tr2")]
	public static extern libqt_string QToolBar_Tr2(char8[] s, char8[] c);
	[LinkName("QToolBar_Tr3")]
	public static extern libqt_string QToolBar_Tr3(char8[] s, char8[] c, int32 n);
}