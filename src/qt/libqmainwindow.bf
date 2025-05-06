using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMainWindow__DockOption
{
	AnimatedDocks = 1,
	AllowNestedDocks = 2,
	AllowTabbedDocks = 4,
	ForceTabbedDocks = 8,
	VerticalTabs = 16,
	GroupedDragging = 32,
}
public struct QMainWindow : QWidget
{
	[LinkName("QMainWindow_new")]
	public static extern QMainWindow* QMainWindow_new(QWidget* parent);
	[LinkName("QMainWindow_new2")]
	public static extern QMainWindow* QMainWindow_new2();
	[LinkName("QMainWindow_new3")]
	public static extern QMainWindow* QMainWindow_new3(QWidget* parent, int64 flags);
	[LinkName("QMainWindow_MetaObject")]
	public static extern QMetaObject* QMainWindow_MetaObject(Self* c_this);
	[LinkName("QMainWindow_Metacast")]
	public static extern void* QMainWindow_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMainWindow_Metacall")]
	public static extern int32 QMainWindow_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMainWindow_Tr")]
	public static extern libqt_string QMainWindow_Tr(char8[] s);
	[LinkName("QMainWindow_IconSize")]
	public static extern QSize QMainWindow_IconSize(Self* c_this);
	[LinkName("QMainWindow_SetIconSize")]
	public static extern void QMainWindow_SetIconSize(Self* c_this, QSize* iconSize);
	[LinkName("QMainWindow_ToolButtonStyle")]
	public static extern int64 QMainWindow_ToolButtonStyle(Self* c_this);
	[LinkName("QMainWindow_SetToolButtonStyle")]
	public static extern void QMainWindow_SetToolButtonStyle(Self* c_this, int64 toolButtonStyle);
	[LinkName("QMainWindow_IsAnimated")]
	public static extern bool QMainWindow_IsAnimated(Self* c_this);
	[LinkName("QMainWindow_IsDockNestingEnabled")]
	public static extern bool QMainWindow_IsDockNestingEnabled(Self* c_this);
	[LinkName("QMainWindow_DocumentMode")]
	public static extern bool QMainWindow_DocumentMode(Self* c_this);
	[LinkName("QMainWindow_SetDocumentMode")]
	public static extern void QMainWindow_SetDocumentMode(Self* c_this, bool enabled);
	[LinkName("QMainWindow_TabShape")]
	public static extern int64 QMainWindow_TabShape(Self* c_this);
	[LinkName("QMainWindow_SetTabShape")]
	public static extern void QMainWindow_SetTabShape(Self* c_this, int64 tabShape);
	[LinkName("QMainWindow_TabPosition")]
	public static extern int64 QMainWindow_TabPosition(Self* c_this, int64 area);
	[LinkName("QMainWindow_SetTabPosition")]
	public static extern void QMainWindow_SetTabPosition(Self* c_this, int64 areas, int64 tabPosition);
	[LinkName("QMainWindow_SetDockOptions")]
	public static extern void QMainWindow_SetDockOptions(Self* c_this, int64 options);
	[LinkName("QMainWindow_DockOptions")]
	public static extern int64 QMainWindow_DockOptions(Self* c_this);
	[LinkName("QMainWindow_IsSeparator")]
	public static extern bool QMainWindow_IsSeparator(Self* c_this, QPoint* pos);
	[LinkName("QMainWindow_MenuBar")]
	public static extern QMenuBar* QMainWindow_MenuBar(Self* c_this);
	[LinkName("QMainWindow_SetMenuBar")]
	public static extern void QMainWindow_SetMenuBar(Self* c_this, QMenuBar* menubar);
	[LinkName("QMainWindow_MenuWidget")]
	public static extern QWidget* QMainWindow_MenuWidget(Self* c_this);
	[LinkName("QMainWindow_SetMenuWidget")]
	public static extern void QMainWindow_SetMenuWidget(Self* c_this, QWidget* menubar);
	[LinkName("QMainWindow_StatusBar")]
	public static extern QStatusBar* QMainWindow_StatusBar(Self* c_this);
	[LinkName("QMainWindow_SetStatusBar")]
	public static extern void QMainWindow_SetStatusBar(Self* c_this, QStatusBar* statusbar);
	[LinkName("QMainWindow_CentralWidget")]
	public static extern QWidget* QMainWindow_CentralWidget(Self* c_this);
	[LinkName("QMainWindow_SetCentralWidget")]
	public static extern void QMainWindow_SetCentralWidget(Self* c_this, QWidget* widget);
	[LinkName("QMainWindow_TakeCentralWidget")]
	public static extern QWidget* QMainWindow_TakeCentralWidget(Self* c_this);
	[LinkName("QMainWindow_SetCorner")]
	public static extern void QMainWindow_SetCorner(Self* c_this, int64 corner, int64 area);
	[LinkName("QMainWindow_Corner")]
	public static extern int64 QMainWindow_Corner(Self* c_this, int64 corner);
	[LinkName("QMainWindow_AddToolBarBreak")]
	public static extern void QMainWindow_AddToolBarBreak(Self* c_this);
	[LinkName("QMainWindow_InsertToolBarBreak")]
	public static extern void QMainWindow_InsertToolBarBreak(Self* c_this, QToolBar* before);
	[LinkName("QMainWindow_AddToolBar")]
	public static extern void QMainWindow_AddToolBar(Self* c_this, int64 area, QToolBar* toolbar);
	[LinkName("QMainWindow_AddToolBarWithToolbar")]
	public static extern void QMainWindow_AddToolBarWithToolbar(Self* c_this, QToolBar* toolbar);
	[LinkName("QMainWindow_AddToolBarWithTitle")]
	public static extern QToolBar* QMainWindow_AddToolBarWithTitle(Self* c_this, libqt_string title);
	[LinkName("QMainWindow_InsertToolBar")]
	public static extern void QMainWindow_InsertToolBar(Self* c_this, QToolBar* before, QToolBar* toolbar);
	[LinkName("QMainWindow_RemoveToolBar")]
	public static extern void QMainWindow_RemoveToolBar(Self* c_this, QToolBar* toolbar);
	[LinkName("QMainWindow_RemoveToolBarBreak")]
	public static extern void QMainWindow_RemoveToolBarBreak(Self* c_this, QToolBar* before);
	[LinkName("QMainWindow_UnifiedTitleAndToolBarOnMac")]
	public static extern bool QMainWindow_UnifiedTitleAndToolBarOnMac(Self* c_this);
	[LinkName("QMainWindow_ToolBarArea")]
	public static extern int64 QMainWindow_ToolBarArea(Self* c_this, QToolBar* toolbar);
	[LinkName("QMainWindow_ToolBarBreak")]
	public static extern bool QMainWindow_ToolBarBreak(Self* c_this, QToolBar* toolbar);
	[LinkName("QMainWindow_AddDockWidget")]
	public static extern void QMainWindow_AddDockWidget(Self* c_this, int64 area, QDockWidget* dockwidget);
	[LinkName("QMainWindow_AddDockWidget2")]
	public static extern void QMainWindow_AddDockWidget2(Self* c_this, int64 area, QDockWidget* dockwidget, int64 orientation);
	[LinkName("QMainWindow_SplitDockWidget")]
	public static extern void QMainWindow_SplitDockWidget(Self* c_this, QDockWidget* after, QDockWidget* dockwidget, int64 orientation);
	[LinkName("QMainWindow_TabifyDockWidget")]
	public static extern void QMainWindow_TabifyDockWidget(Self* c_this, QDockWidget* first, QDockWidget* second);
	[LinkName("QMainWindow_TabifiedDockWidgets")]
	public static extern QDockWidget*[] QMainWindow_TabifiedDockWidgets(Self* c_this, QDockWidget* dockwidget);
	[LinkName("QMainWindow_RemoveDockWidget")]
	public static extern void QMainWindow_RemoveDockWidget(Self* c_this, QDockWidget* dockwidget);
	[LinkName("QMainWindow_RestoreDockWidget")]
	public static extern bool QMainWindow_RestoreDockWidget(Self* c_this, QDockWidget* dockwidget);
	[LinkName("QMainWindow_DockWidgetArea")]
	public static extern int64 QMainWindow_DockWidgetArea(Self* c_this, QDockWidget* dockwidget);
	[LinkName("QMainWindow_ResizeDocks")]
	public static extern void QMainWindow_ResizeDocks(Self* c_this, QDockWidget*[] docks, int32[] sizes, int64 orientation);
	[LinkName("QMainWindow_SaveState")]
	public static extern libqt_string QMainWindow_SaveState(Self* c_this);
	[LinkName("QMainWindow_RestoreState")]
	public static extern bool QMainWindow_RestoreState(Self* c_this, libqt_string state);
	[LinkName("QMainWindow_CreatePopupMenu")]
	public static extern QMenu* QMainWindow_CreatePopupMenu(Self* c_this);
	[LinkName("QMainWindow_SetAnimated")]
	public static extern void QMainWindow_SetAnimated(Self* c_this, bool enabled);
	[LinkName("QMainWindow_SetDockNestingEnabled")]
	public static extern void QMainWindow_SetDockNestingEnabled(Self* c_this, bool enabled);
	[LinkName("QMainWindow_SetUnifiedTitleAndToolBarOnMac")]
	public static extern void QMainWindow_SetUnifiedTitleAndToolBarOnMac(Self* c_this, bool set);
	[LinkName("QMainWindow_Connect_IconSizeChanged")]
	public static extern void QMainWindow_Connect_IconSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QMainWindow_Connect_ToolButtonStyleChanged")]
	public static extern void QMainWindow_Connect_ToolButtonStyleChanged(Self* c_this, c_intptr slot);
	[LinkName("QMainWindow_Connect_TabifiedDockWidgetActivated")]
	public static extern void QMainWindow_Connect_TabifiedDockWidgetActivated(Self* c_this, c_intptr slot);
	[LinkName("QMainWindow_ContextMenuEvent")]
	public static extern void QMainWindow_ContextMenuEvent(Self* c_this, QContextMenuEvent* event);
	[LinkName("QMainWindow_Event")]
	public static extern bool QMainWindow_Event(Self* c_this, QEvent* event);
	[LinkName("QMainWindow_Tr2")]
	public static extern libqt_string QMainWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QMainWindow_Tr3")]
	public static extern libqt_string QMainWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMainWindow_AddToolBarBreak1")]
	public static extern void QMainWindow_AddToolBarBreak1(Self* c_this, int64 area);
	[LinkName("QMainWindow_SaveState1")]
	public static extern libqt_string QMainWindow_SaveState1(Self* c_this, int32 version);
	[LinkName("QMainWindow_RestoreState2")]
	public static extern bool QMainWindow_RestoreState2(Self* c_this, libqt_string state, int32 version);
}