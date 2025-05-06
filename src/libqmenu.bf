using System;
using System.Interop;
namespace Qt;

public struct QMenu
{
	[LinkName("QMenu_new")]
	public static extern void* QMenu_new(QWidget parent);
	[LinkName("QMenu_new2")]
	public static extern void* QMenu_new2();
	[LinkName("QMenu_new3")]
	public static extern void* QMenu_new3(char8[] title);
	[LinkName("QMenu_new4")]
	public static extern void* QMenu_new4(char8[] title, QWidget parent);
	[LinkName("QMenu_MetaObject")]
	public static extern QMetaObject QMenu_MetaObject(void* c_this);
	[LinkName("QMenu_Metacast")]
	public static extern void QMenu_Metacast(void* c_this, char8[] param1);
	[LinkName("QMenu_Metacall")]
	public static extern int32 QMenu_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMenu_Tr")]
	public static extern char8[] QMenu_Tr(char8[] s);
	[LinkName("QMenu_AddMenu")]
	public static extern QAction QMenu_AddMenu(void* c_this, QMenu menu);
	[LinkName("QMenu_AddMenuWithTitle")]
	public static extern QMenu QMenu_AddMenuWithTitle(void* c_this, char8[] title);
	[LinkName("QMenu_AddMenu2")]
	public static extern QMenu QMenu_AddMenu2(void* c_this, QIcon icon, char8[] title);
	[LinkName("QMenu_AddSeparator")]
	public static extern QAction QMenu_AddSeparator(void* c_this);
	[LinkName("QMenu_AddSection")]
	public static extern QAction QMenu_AddSection(void* c_this, char8[] text);
	[LinkName("QMenu_AddSection2")]
	public static extern QAction QMenu_AddSection2(void* c_this, QIcon icon, char8[] text);
	[LinkName("QMenu_InsertMenu")]
	public static extern QAction QMenu_InsertMenu(void* c_this, QAction before, QMenu menu);
	[LinkName("QMenu_InsertSeparator")]
	public static extern QAction QMenu_InsertSeparator(void* c_this, QAction before);
	[LinkName("QMenu_InsertSection")]
	public static extern QAction QMenu_InsertSection(void* c_this, QAction before, char8[] text);
	[LinkName("QMenu_InsertSection2")]
	public static extern QAction QMenu_InsertSection2(void* c_this, QAction before, QIcon icon, char8[] text);
	[LinkName("QMenu_IsEmpty")]
	public static extern bool QMenu_IsEmpty(void* c_this);
	[LinkName("QMenu_Clear")]
	public static extern void QMenu_Clear(void* c_this);
	[LinkName("QMenu_SetTearOffEnabled")]
	public static extern void QMenu_SetTearOffEnabled(void* c_this, bool tearOffEnabled);
	[LinkName("QMenu_IsTearOffEnabled")]
	public static extern bool QMenu_IsTearOffEnabled(void* c_this);
	[LinkName("QMenu_IsTearOffMenuVisible")]
	public static extern bool QMenu_IsTearOffMenuVisible(void* c_this);
	[LinkName("QMenu_ShowTearOffMenu")]
	public static extern void QMenu_ShowTearOffMenu(void* c_this);
	[LinkName("QMenu_ShowTearOffMenuWithPos")]
	public static extern void QMenu_ShowTearOffMenuWithPos(void* c_this, QPoint pos);
	[LinkName("QMenu_HideTearOffMenu")]
	public static extern void QMenu_HideTearOffMenu(void* c_this);
	[LinkName("QMenu_SetDefaultAction")]
	public static extern void QMenu_SetDefaultAction(void* c_this, QAction defaultAction);
	[LinkName("QMenu_DefaultAction")]
	public static extern QAction QMenu_DefaultAction(void* c_this);
	[LinkName("QMenu_SetActiveAction")]
	public static extern void QMenu_SetActiveAction(void* c_this, QAction act);
	[LinkName("QMenu_ActiveAction")]
	public static extern QAction QMenu_ActiveAction(void* c_this);
	[LinkName("QMenu_Popup")]
	public static extern void QMenu_Popup(void* c_this, QPoint pos);
	[LinkName("QMenu_Exec")]
	public static extern QAction QMenu_Exec(void* c_this);
	[LinkName("QMenu_ExecWithPos")]
	public static extern QAction QMenu_ExecWithPos(void* c_this, QPoint pos);
	[LinkName("QMenu_Exec2")]
	public static extern QAction QMenu_Exec2(QAction[] actions, QPoint pos);
	[LinkName("QMenu_SizeHint")]
	public static extern QSize QMenu_SizeHint(void* c_this);
	[LinkName("QMenu_ActionGeometry")]
	public static extern QRect QMenu_ActionGeometry(void* c_this, QAction param1);
	[LinkName("QMenu_ActionAt")]
	public static extern QAction QMenu_ActionAt(void* c_this, QPoint param1);
	[LinkName("QMenu_MenuAction")]
	public static extern QAction QMenu_MenuAction(void* c_this);
	[LinkName("QMenu_MenuInAction")]
	public static extern QMenu QMenu_MenuInAction(QAction action);
	[LinkName("QMenu_Title")]
	public static extern char8[] QMenu_Title(void* c_this);
	[LinkName("QMenu_SetTitle")]
	public static extern void QMenu_SetTitle(void* c_this, char8[] title);
	[LinkName("QMenu_Icon")]
	public static extern QIcon QMenu_Icon(void* c_this);
	[LinkName("QMenu_SetIcon")]
	public static extern void QMenu_SetIcon(void* c_this, QIcon icon);
	[LinkName("QMenu_SetNoReplayFor")]
	public static extern void QMenu_SetNoReplayFor(void* c_this, QWidget widget);
	[LinkName("QMenu_SeparatorsCollapsible")]
	public static extern bool QMenu_SeparatorsCollapsible(void* c_this);
	[LinkName("QMenu_SetSeparatorsCollapsible")]
	public static extern void QMenu_SetSeparatorsCollapsible(void* c_this, bool collapse);
	[LinkName("QMenu_ToolTipsVisible")]
	public static extern bool QMenu_ToolTipsVisible(void* c_this);
	[LinkName("QMenu_SetToolTipsVisible")]
	public static extern void QMenu_SetToolTipsVisible(void* c_this, bool visible);
	[LinkName("QMenu_AboutToShow")]
	public static extern void QMenu_AboutToShow(void* c_this);
	[LinkName("QMenu_AboutToHide")]
	public static extern void QMenu_AboutToHide(void* c_this);
	[LinkName("QMenu_Triggered")]
	public static extern void QMenu_Triggered(void* c_this, QAction action);
	[LinkName("QMenu_Hovered")]
	public static extern void QMenu_Hovered(void* c_this, QAction action);
	[LinkName("QMenu_ColumnCount")]
	public static extern int32 QMenu_ColumnCount(void* c_this);
	[LinkName("QMenu_ChangeEvent")]
	public static extern void QMenu_ChangeEvent(void* c_this, QEvent param1);
	[LinkName("QMenu_KeyPressEvent")]
	public static extern void QMenu_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QMenu_MouseReleaseEvent")]
	public static extern void QMenu_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenu_MousePressEvent")]
	public static extern void QMenu_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenu_MouseMoveEvent")]
	public static extern void QMenu_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QMenu_WheelEvent")]
	public static extern void QMenu_WheelEvent(void* c_this, QWheelEvent param1);
	[LinkName("QMenu_EnterEvent")]
	public static extern void QMenu_EnterEvent(void* c_this, QEnterEvent param1);
	[LinkName("QMenu_LeaveEvent")]
	public static extern void QMenu_LeaveEvent(void* c_this, QEvent param1);
	[LinkName("QMenu_HideEvent")]
	public static extern void QMenu_HideEvent(void* c_this, QHideEvent param1);
	[LinkName("QMenu_PaintEvent")]
	public static extern void QMenu_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QMenu_ActionEvent")]
	public static extern void QMenu_ActionEvent(void* c_this, QActionEvent param1);
	[LinkName("QMenu_TimerEvent")]
	public static extern void QMenu_TimerEvent(void* c_this, QTimerEvent param1);
	[LinkName("QMenu_Event")]
	public static extern bool QMenu_Event(void* c_this, QEvent param1);
	[LinkName("QMenu_FocusNextPrevChild")]
	public static extern bool QMenu_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QMenu_InitStyleOption")]
	public static extern void QMenu_InitStyleOption(void* c_this, QStyleOptionMenuItem option, QAction action);
	[LinkName("QMenu_Tr2")]
	public static extern char8[] QMenu_Tr2(char8[] s, char8[] c);
	[LinkName("QMenu_Tr3")]
	public static extern char8[] QMenu_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMenu_Popup2")]
	public static extern void QMenu_Popup2(void* c_this, QPoint pos, QAction at);
	[LinkName("QMenu_Exec22")]
	public static extern QAction QMenu_Exec22(void* c_this, QPoint pos, QAction at);
	[LinkName("QMenu_Exec3")]
	public static extern QAction QMenu_Exec3(QAction[] actions, QPoint pos, QAction at);
	[LinkName("QMenu_Exec4")]
	public static extern QAction QMenu_Exec4(QAction[] actions, QPoint pos, QAction at, QWidget parent);
}