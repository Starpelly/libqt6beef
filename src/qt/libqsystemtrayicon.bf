using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSystemTrayIcon__ActivationReason
{
	Unknown = 0,
	Context = 1,
	DoubleClick = 2,
	Trigger = 3,
	MiddleClick = 4,
}
[AllowDuplicates]
public enum QSystemTrayIcon__MessageIcon
{
	NoIcon = 0,
	Information = 1,
	Warning = 2,
	Critical = 3,
}
public struct QSystemTrayIcon : QObject
{
	[LinkName("QSystemTrayIcon_new")]
	public static extern QSystemTrayIcon* QSystemTrayIcon_new();
	[LinkName("QSystemTrayIcon_new2")]
	public static extern QSystemTrayIcon* QSystemTrayIcon_new2(QIcon* icon);
	[LinkName("QSystemTrayIcon_new3")]
	public static extern QSystemTrayIcon* QSystemTrayIcon_new3(QObject* parent);
	[LinkName("QSystemTrayIcon_new4")]
	public static extern QSystemTrayIcon* QSystemTrayIcon_new4(QIcon* icon, QObject* parent);
	[LinkName("QSystemTrayIcon_MetaObject")]
	public static extern QMetaObject* QSystemTrayIcon_MetaObject(Self* c_this);
	[LinkName("QSystemTrayIcon_Metacast")]
	public static extern void* QSystemTrayIcon_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSystemTrayIcon_Metacall")]
	public static extern int32 QSystemTrayIcon_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSystemTrayIcon_Tr")]
	public static extern libqt_string QSystemTrayIcon_Tr(char8[] s);
	[LinkName("QSystemTrayIcon_SetContextMenu")]
	public static extern void QSystemTrayIcon_SetContextMenu(Self* c_this, QMenu* menu);
	[LinkName("QSystemTrayIcon_ContextMenu")]
	public static extern QMenu* QSystemTrayIcon_ContextMenu(Self* c_this);
	[LinkName("QSystemTrayIcon_Icon")]
	public static extern QIcon QSystemTrayIcon_Icon(Self* c_this);
	[LinkName("QSystemTrayIcon_SetIcon")]
	public static extern void QSystemTrayIcon_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QSystemTrayIcon_ToolTip")]
	public static extern libqt_string QSystemTrayIcon_ToolTip(Self* c_this);
	[LinkName("QSystemTrayIcon_SetToolTip")]
	public static extern void QSystemTrayIcon_SetToolTip(Self* c_this, libqt_string tip);
	[LinkName("QSystemTrayIcon_IsSystemTrayAvailable")]
	public static extern bool QSystemTrayIcon_IsSystemTrayAvailable();
	[LinkName("QSystemTrayIcon_SupportsMessages")]
	public static extern bool QSystemTrayIcon_SupportsMessages();
	[LinkName("QSystemTrayIcon_Geometry")]
	public static extern QRect QSystemTrayIcon_Geometry(Self* c_this);
	[LinkName("QSystemTrayIcon_IsVisible")]
	public static extern bool QSystemTrayIcon_IsVisible(Self* c_this);
	[LinkName("QSystemTrayIcon_SetVisible")]
	public static extern void QSystemTrayIcon_SetVisible(Self* c_this, bool visible);
	[LinkName("QSystemTrayIcon_Show")]
	public static extern void QSystemTrayIcon_Show(Self* c_this);
	[LinkName("QSystemTrayIcon_Hide")]
	public static extern void QSystemTrayIcon_Hide(Self* c_this);
	[LinkName("QSystemTrayIcon_ShowMessage")]
	public static extern void QSystemTrayIcon_ShowMessage(Self* c_this, libqt_string title, libqt_string msg, QIcon* icon);
	[LinkName("QSystemTrayIcon_ShowMessage2")]
	public static extern void QSystemTrayIcon_ShowMessage2(Self* c_this, libqt_string title, libqt_string msg);
	[LinkName("QSystemTrayIcon_Connect_Activated")]
	public static extern void QSystemTrayIcon_Connect_Activated(Self* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Connect_MessageClicked")]
	public static extern void QSystemTrayIcon_Connect_MessageClicked(Self* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Event")]
	public static extern bool QSystemTrayIcon_Event(Self* c_this, QEvent* event);
	[LinkName("QSystemTrayIcon_Tr2")]
	public static extern libqt_string QSystemTrayIcon_Tr2(char8[] s, char8[] c);
	[LinkName("QSystemTrayIcon_Tr3")]
	public static extern libqt_string QSystemTrayIcon_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSystemTrayIcon_ShowMessage4")]
	public static extern void QSystemTrayIcon_ShowMessage4(Self* c_this, libqt_string title, libqt_string msg, QIcon* icon, int32 msecs);
	[LinkName("QSystemTrayIcon_ShowMessage3")]
	public static extern void QSystemTrayIcon_ShowMessage3(Self* c_this, libqt_string title, libqt_string msg, int64 icon);
	[LinkName("QSystemTrayIcon_ShowMessage42")]
	public static extern void QSystemTrayIcon_ShowMessage42(Self* c_this, libqt_string title, libqt_string msg, int64 icon, int32 msecs);
}