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
public struct QMainWindow
{
	[LinkName("QMainWindow_new")]
	public static extern void* QMainWindow_new(QWidget parent);
	[LinkName("QMainWindow_new2")]
	public static extern void* QMainWindow_new2();
	[LinkName("QMainWindow_new3")]
	public static extern void* QMainWindow_new3(QWidget parent, int64 flags);
	[LinkName("QMainWindow_MetaObject")]
	public static extern QMetaObject QMainWindow_MetaObject(void* c_this);
	[LinkName("QMainWindow_Metacast")]
	public static extern void QMainWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QMainWindow_Metacall")]
	public static extern int32 QMainWindow_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMainWindow_Tr")]
	public static extern char8[] QMainWindow_Tr(char8[] s);
	[LinkName("QMainWindow_IconSize")]
	public static extern QSize QMainWindow_IconSize(void* c_this);
	[LinkName("QMainWindow_SetIconSize")]
	public static extern void QMainWindow_SetIconSize(void* c_this, QSize iconSize);
	[LinkName("QMainWindow_ToolButtonStyle")]
	public static extern int64 QMainWindow_ToolButtonStyle(void* c_this);
	[LinkName("QMainWindow_SetToolButtonStyle")]
	public static extern void QMainWindow_SetToolButtonStyle(void* c_this, int64 toolButtonStyle);
	[LinkName("QMainWindow_IsAnimated")]
	public static extern bool QMainWindow_IsAnimated(void* c_this);
	[LinkName("QMainWindow_IsDockNestingEnabled")]
	public static extern bool QMainWindow_IsDockNestingEnabled(void* c_this);
	[LinkName("QMainWindow_DocumentMode")]
	public static extern bool QMainWindow_DocumentMode(void* c_this);
	[LinkName("QMainWindow_SetDocumentMode")]
	public static extern void QMainWindow_SetDocumentMode(void* c_this, bool enabled);
	[LinkName("QMainWindow_TabShape")]
	public static extern int64 QMainWindow_TabShape(void* c_this);
	[LinkName("QMainWindow_SetTabShape")]
	public static extern void QMainWindow_SetTabShape(void* c_this, int64 tabShape);
	[LinkName("QMainWindow_TabPosition")]
	public static extern int64 QMainWindow_TabPosition(void* c_this, int64 area);
	[LinkName("QMainWindow_SetTabPosition")]
	public static extern void QMainWindow_SetTabPosition(void* c_this, int64 areas, int64 tabPosition);
	[LinkName("QMainWindow_SetDockOptions")]
	public static extern void QMainWindow_SetDockOptions(void* c_this, int64 options);
	[LinkName("QMainWindow_DockOptions")]
	public static extern int64 QMainWindow_DockOptions(void* c_this);
	[LinkName("QMainWindow_IsSeparator")]
	public static extern bool QMainWindow_IsSeparator(void* c_this, QPoint pos);
	[LinkName("QMainWindow_MenuBar")]
	public static extern QMenuBar QMainWindow_MenuBar(void* c_this);
	[LinkName("QMainWindow_SetMenuBar")]
	public static extern void QMainWindow_SetMenuBar(void* c_this, QMenuBar menubar);
	[LinkName("QMainWindow_MenuWidget")]
	public static extern QWidget QMainWindow_MenuWidget(void* c_this);
	[LinkName("QMainWindow_SetMenuWidget")]
	public static extern void QMainWindow_SetMenuWidget(void* c_this, QWidget menubar);
	[LinkName("QMainWindow_StatusBar")]
	public static extern QStatusBar QMainWindow_StatusBar(void* c_this);
	[LinkName("QMainWindow_SetStatusBar")]
	public static extern void QMainWindow_SetStatusBar(void* c_this, QStatusBar statusbar);
	[LinkName("QMainWindow_CentralWidget")]
	public static extern QWidget QMainWindow_CentralWidget(void* c_this);
	[LinkName("QMainWindow_SetCentralWidget")]
	public static extern void QMainWindow_SetCentralWidget(void* c_this, QWidget widget);
	[LinkName("QMainWindow_TakeCentralWidget")]
	public static extern QWidget QMainWindow_TakeCentralWidget(void* c_this);
	[LinkName("QMainWindow_SetCorner")]
	public static extern void QMainWindow_SetCorner(void* c_this, int64 corner, int64 area);
	[LinkName("QMainWindow_Corner")]
	public static extern int64 QMainWindow_Corner(void* c_this, int64 corner);
	[LinkName("QMainWindow_AddToolBarBreak")]
	public static extern void QMainWindow_AddToolBarBreak(void* c_this);
	[LinkName("QMainWindow_InsertToolBarBreak")]
	public static extern void QMainWindow_InsertToolBarBreak(void* c_this, QToolBar before);
	[LinkName("QMainWindow_AddToolBar")]
	public static extern void QMainWindow_AddToolBar(void* c_this, int64 area, QToolBar toolbar);
	[LinkName("QMainWindow_AddToolBarWithToolbar")]
	public static extern void QMainWindow_AddToolBarWithToolbar(void* c_this, QToolBar toolbar);
	[LinkName("QMainWindow_AddToolBarWithTitle")]
	public static extern QToolBar QMainWindow_AddToolBarWithTitle(void* c_this, char8[] title);
	[LinkName("QMainWindow_InsertToolBar")]
	public static extern void QMainWindow_InsertToolBar(void* c_this, QToolBar before, QToolBar toolbar);
	[LinkName("QMainWindow_RemoveToolBar")]
	public static extern void QMainWindow_RemoveToolBar(void* c_this, QToolBar toolbar);
	[LinkName("QMainWindow_RemoveToolBarBreak")]
	public static extern void QMainWindow_RemoveToolBarBreak(void* c_this, QToolBar before);
	[LinkName("QMainWindow_UnifiedTitleAndToolBarOnMac")]
	public static extern bool QMainWindow_UnifiedTitleAndToolBarOnMac(void* c_this);
	[LinkName("QMainWindow_ToolBarArea")]
	public static extern int64 QMainWindow_ToolBarArea(void* c_this, QToolBar toolbar);
	[LinkName("QMainWindow_ToolBarBreak")]
	public static extern bool QMainWindow_ToolBarBreak(void* c_this, QToolBar toolbar);
	[LinkName("QMainWindow_AddDockWidget")]
	public static extern void QMainWindow_AddDockWidget(void* c_this, int64 area, QDockWidget dockwidget);
	[LinkName("QMainWindow_AddDockWidget2")]
	public static extern void QMainWindow_AddDockWidget2(void* c_this, int64 area, QDockWidget dockwidget, int64 orientation);
	[LinkName("QMainWindow_SplitDockWidget")]
	public static extern void QMainWindow_SplitDockWidget(void* c_this, QDockWidget after, QDockWidget dockwidget, int64 orientation);
	[LinkName("QMainWindow_TabifyDockWidget")]
	public static extern void QMainWindow_TabifyDockWidget(void* c_this, QDockWidget first, QDockWidget second);
	[LinkName("QMainWindow_TabifiedDockWidgets")]
	public static extern QDockWidget[] QMainWindow_TabifiedDockWidgets(void* c_this, QDockWidget dockwidget);
	[LinkName("QMainWindow_RemoveDockWidget")]
	public static extern void QMainWindow_RemoveDockWidget(void* c_this, QDockWidget dockwidget);
	[LinkName("QMainWindow_RestoreDockWidget")]
	public static extern bool QMainWindow_RestoreDockWidget(void* c_this, QDockWidget dockwidget);
	[LinkName("QMainWindow_DockWidgetArea")]
	public static extern int64 QMainWindow_DockWidgetArea(void* c_this, QDockWidget dockwidget);
	[LinkName("QMainWindow_ResizeDocks")]
	public static extern void QMainWindow_ResizeDocks(void* c_this, QDockWidget[] docks, int32[] sizes, int64 orientation);
	[LinkName("QMainWindow_SaveState")]
	public static extern uint8[] QMainWindow_SaveState(void* c_this);
	[LinkName("QMainWindow_RestoreState")]
	public static extern bool QMainWindow_RestoreState(void* c_this, uint8[] state);
	[LinkName("QMainWindow_CreatePopupMenu")]
	public static extern QMenu QMainWindow_CreatePopupMenu(void* c_this);
	[LinkName("QMainWindow_SetAnimated")]
	public static extern void QMainWindow_SetAnimated(void* c_this, bool enabled);
	[LinkName("QMainWindow_SetDockNestingEnabled")]
	public static extern void QMainWindow_SetDockNestingEnabled(void* c_this, bool enabled);
	[LinkName("QMainWindow_SetUnifiedTitleAndToolBarOnMac")]
	public static extern void QMainWindow_SetUnifiedTitleAndToolBarOnMac(void* c_this, bool set);
	[LinkName("QMainWindow_IconSizeChanged")]
	public static extern void QMainWindow_IconSizeChanged(void* c_this, QSize iconSize);
	[LinkName("QMainWindow_ToolButtonStyleChanged")]
	public static extern void QMainWindow_ToolButtonStyleChanged(void* c_this, int64 toolButtonStyle);
	[LinkName("QMainWindow_TabifiedDockWidgetActivated")]
	public static extern void QMainWindow_TabifiedDockWidgetActivated(void* c_this, QDockWidget dockWidget);
	[LinkName("QMainWindow_ContextMenuEvent")]
	public static extern void QMainWindow_ContextMenuEvent(void* c_this, QContextMenuEvent event);
	[LinkName("QMainWindow_Event")]
	public static extern bool QMainWindow_Event(void* c_this, QEvent event);
	[LinkName("QMainWindow_Tr2")]
	public static extern char8[] QMainWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QMainWindow_Tr3")]
	public static extern char8[] QMainWindow_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMainWindow_AddToolBarBreak1")]
	public static extern void QMainWindow_AddToolBarBreak1(void* c_this, int64 area);
	[LinkName("QMainWindow_SaveState1")]
	public static extern uint8[] QMainWindow_SaveState1(void* c_this, int32 version);
	[LinkName("QMainWindow_RestoreState2")]
	public static extern bool QMainWindow_RestoreState2(void* c_this, uint8[] state, int32 version);
}