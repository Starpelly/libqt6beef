using System;
using System.Interop;
namespace Qt;

public struct QMenu : QWidget
{
	[LinkName("QMenu_new")]
	public static extern QMenu* QMenu_new(QWidget* parent);
	[LinkName("QMenu_new2")]
	public static extern QMenu* QMenu_new2();
	[LinkName("QMenu_new3")]
	public static extern QMenu* QMenu_new3(libqt_string title);
	[LinkName("QMenu_new4")]
	public static extern QMenu* QMenu_new4(libqt_string title, QWidget* parent);
	[LinkName("QMenu_MetaObject")]
	public static extern QMetaObject* QMenu_MetaObject(Self* c_this);
	[LinkName("QMenu_Metacast")]
	public static extern void* QMenu_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMenu_Metacall")]
	public static extern int32 QMenu_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMenu_Tr")]
	public static extern libqt_string QMenu_Tr(char8[] s);
	[LinkName("QMenu_AddMenu")]
	public static extern QAction* QMenu_AddMenu(Self* c_this, QMenu* menu);
	[LinkName("QMenu_AddMenuWithTitle")]
	public static extern QMenu* QMenu_AddMenuWithTitle(Self* c_this, libqt_string title);
	[LinkName("QMenu_AddMenu2")]
	public static extern QMenu* QMenu_AddMenu2(Self* c_this, QIcon* icon, libqt_string title);
	[LinkName("QMenu_AddSeparator")]
	public static extern QAction* QMenu_AddSeparator(Self* c_this);
	[LinkName("QMenu_AddSection")]
	public static extern QAction* QMenu_AddSection(Self* c_this, libqt_string text);
	[LinkName("QMenu_AddSection2")]
	public static extern QAction* QMenu_AddSection2(Self* c_this, QIcon* icon, libqt_string text);
	[LinkName("QMenu_InsertMenu")]
	public static extern QAction* QMenu_InsertMenu(Self* c_this, QAction* before, QMenu* menu);
	[LinkName("QMenu_InsertSeparator")]
	public static extern QAction* QMenu_InsertSeparator(Self* c_this, QAction* before);
	[LinkName("QMenu_InsertSection")]
	public static extern QAction* QMenu_InsertSection(Self* c_this, QAction* before, libqt_string text);
	[LinkName("QMenu_InsertSection2")]
	public static extern QAction* QMenu_InsertSection2(Self* c_this, QAction* before, QIcon* icon, libqt_string text);
	[LinkName("QMenu_IsEmpty")]
	public static extern bool QMenu_IsEmpty(Self* c_this);
	[LinkName("QMenu_Clear")]
	public static extern void QMenu_Clear(Self* c_this);
	[LinkName("QMenu_SetTearOffEnabled")]
	public static extern void QMenu_SetTearOffEnabled(Self* c_this, bool tearOffEnabled);
	[LinkName("QMenu_IsTearOffEnabled")]
	public static extern bool QMenu_IsTearOffEnabled(Self* c_this);
	[LinkName("QMenu_IsTearOffMenuVisible")]
	public static extern bool QMenu_IsTearOffMenuVisible(Self* c_this);
	[LinkName("QMenu_ShowTearOffMenu")]
	public static extern void QMenu_ShowTearOffMenu(Self* c_this);
	[LinkName("QMenu_ShowTearOffMenuWithPos")]
	public static extern void QMenu_ShowTearOffMenuWithPos(Self* c_this, QPoint* pos);
	[LinkName("QMenu_HideTearOffMenu")]
	public static extern void QMenu_HideTearOffMenu(Self* c_this);
	[LinkName("QMenu_SetDefaultAction")]
	public static extern void QMenu_SetDefaultAction(Self* c_this, QAction* defaultAction);
	[LinkName("QMenu_DefaultAction")]
	public static extern QAction* QMenu_DefaultAction(Self* c_this);
	[LinkName("QMenu_SetActiveAction")]
	public static extern void QMenu_SetActiveAction(Self* c_this, QAction* act);
	[LinkName("QMenu_ActiveAction")]
	public static extern QAction* QMenu_ActiveAction(Self* c_this);
	[LinkName("QMenu_Popup")]
	public static extern void QMenu_Popup(Self* c_this, QPoint* pos);
	[LinkName("QMenu_Exec")]
	public static extern QAction* QMenu_Exec(Self* c_this);
	[LinkName("QMenu_ExecWithPos")]
	public static extern QAction* QMenu_ExecWithPos(Self* c_this, QPoint* pos);
	[LinkName("QMenu_Exec2")]
	public static extern QAction* QMenu_Exec2(QAction*[] actions, QPoint* pos);
	[LinkName("QMenu_SizeHint")]
	public static extern QSize QMenu_SizeHint(Self* c_this);
	[LinkName("QMenu_ActionGeometry")]
	public static extern QRect QMenu_ActionGeometry(Self* c_this, QAction* param1);
	[LinkName("QMenu_ActionAt")]
	public static extern QAction* QMenu_ActionAt(Self* c_this, QPoint* param1);
	[LinkName("QMenu_MenuAction")]
	public static extern QAction* QMenu_MenuAction(Self* c_this);
	[LinkName("QMenu_MenuInAction")]
	public static extern QMenu* QMenu_MenuInAction(QAction* action);
	[LinkName("QMenu_Title")]
	public static extern libqt_string QMenu_Title(Self* c_this);
	[LinkName("QMenu_SetTitle")]
	public static extern void QMenu_SetTitle(Self* c_this, libqt_string title);
	[LinkName("QMenu_Icon")]
	public static extern QIcon QMenu_Icon(Self* c_this);
	[LinkName("QMenu_SetIcon")]
	public static extern void QMenu_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QMenu_SetNoReplayFor")]
	public static extern void QMenu_SetNoReplayFor(Self* c_this, QWidget* widget);
	[LinkName("QMenu_SeparatorsCollapsible")]
	public static extern bool QMenu_SeparatorsCollapsible(Self* c_this);
	[LinkName("QMenu_SetSeparatorsCollapsible")]
	public static extern void QMenu_SetSeparatorsCollapsible(Self* c_this, bool collapse);
	[LinkName("QMenu_ToolTipsVisible")]
	public static extern bool QMenu_ToolTipsVisible(Self* c_this);
	[LinkName("QMenu_SetToolTipsVisible")]
	public static extern void QMenu_SetToolTipsVisible(Self* c_this, bool visible);
	[LinkName("QMenu_Connect_AboutToShow")]
	public static extern void QMenu_Connect_AboutToShow(Self* c_this, c_intptr slot);
	[LinkName("QMenu_Connect_AboutToHide")]
	public static extern void QMenu_Connect_AboutToHide(Self* c_this, c_intptr slot);
	[LinkName("QMenu_Connect_Triggered")]
	public static extern void QMenu_Connect_Triggered(Self* c_this, c_intptr slot);
	[LinkName("QMenu_Connect_Hovered")]
	public static extern void QMenu_Connect_Hovered(Self* c_this, c_intptr slot);
	[LinkName("QMenu_ColumnCount")]
	public static extern int32 QMenu_ColumnCount(Self* c_this);
	[LinkName("QMenu_ChangeEvent")]
	public static extern void QMenu_ChangeEvent(Self* c_this, QEvent* param1);
	[LinkName("QMenu_KeyPressEvent")]
	public static extern void QMenu_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QMenu_MouseReleaseEvent")]
	public static extern void QMenu_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenu_MousePressEvent")]
	public static extern void QMenu_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenu_MouseMoveEvent")]
	public static extern void QMenu_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QMenu_WheelEvent")]
	public static extern void QMenu_WheelEvent(Self* c_this, QWheelEvent* param1);
	[LinkName("QMenu_EnterEvent")]
	public static extern void QMenu_EnterEvent(Self* c_this, QEnterEvent* param1);
	[LinkName("QMenu_LeaveEvent")]
	public static extern void QMenu_LeaveEvent(Self* c_this, QEvent* param1);
	[LinkName("QMenu_HideEvent")]
	public static extern void QMenu_HideEvent(Self* c_this, QHideEvent* param1);
	[LinkName("QMenu_PaintEvent")]
	public static extern void QMenu_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QMenu_ActionEvent")]
	public static extern void QMenu_ActionEvent(Self* c_this, QActionEvent* param1);
	[LinkName("QMenu_TimerEvent")]
	public static extern void QMenu_TimerEvent(Self* c_this, QTimerEvent* param1);
	[LinkName("QMenu_Event")]
	public static extern bool QMenu_Event(Self* c_this, QEvent* param1);
	[LinkName("QMenu_FocusNextPrevChild")]
	public static extern bool QMenu_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QMenu_InitStyleOption")]
	public static extern void QMenu_InitStyleOption(Self* c_this, QStyleOptionMenuItem* option, QAction* action);
	[LinkName("QMenu_Tr2")]
	public static extern libqt_string QMenu_Tr2(char8[] s, char8[] c);
	[LinkName("QMenu_Tr3")]
	public static extern libqt_string QMenu_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMenu_Popup2")]
	public static extern void QMenu_Popup2(Self* c_this, QPoint* pos, QAction* at);
	[LinkName("QMenu_Exec22")]
	public static extern QAction* QMenu_Exec22(Self* c_this, QPoint* pos, QAction* at);
	[LinkName("QMenu_Exec3")]
	public static extern QAction* QMenu_Exec3(QAction*[] actions, QPoint* pos, QAction* at);
	[LinkName("QMenu_Exec4")]
	public static extern QAction* QMenu_Exec4(QAction*[] actions, QPoint* pos, QAction* at, QWidget* parent);
}