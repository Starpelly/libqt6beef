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
public struct QSystemTrayIcon
{
	[LinkName("QSystemTrayIcon_new")]
	public static extern void* QSystemTrayIcon_new();
	[LinkName("QSystemTrayIcon_new2")]
	public static extern void* QSystemTrayIcon_new2(QIcon icon);
	[LinkName("QSystemTrayIcon_new3")]
	public static extern void* QSystemTrayIcon_new3(QObject parent);
	[LinkName("QSystemTrayIcon_new4")]
	public static extern void* QSystemTrayIcon_new4(QIcon icon, QObject parent);
	[LinkName("QSystemTrayIcon_MetaObject")]
	public static extern QMetaObject QSystemTrayIcon_MetaObject(void* c_this);
	[LinkName("QSystemTrayIcon_Metacast")]
	public static extern void QSystemTrayIcon_Metacast(void* c_this, char8[] param1);
	[LinkName("QSystemTrayIcon_Metacall")]
	public static extern int32 QSystemTrayIcon_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSystemTrayIcon_Tr")]
	public static extern char8[] QSystemTrayIcon_Tr(char8[] s);
	[LinkName("QSystemTrayIcon_SetContextMenu")]
	public static extern void QSystemTrayIcon_SetContextMenu(void* c_this, QMenu menu);
	[LinkName("QSystemTrayIcon_ContextMenu")]
	public static extern QMenu QSystemTrayIcon_ContextMenu(void* c_this);
	[LinkName("QSystemTrayIcon_Icon")]
	public static extern QIcon QSystemTrayIcon_Icon(void* c_this);
	[LinkName("QSystemTrayIcon_SetIcon")]
	public static extern void QSystemTrayIcon_SetIcon(void* c_this, QIcon icon);
	[LinkName("QSystemTrayIcon_ToolTip")]
	public static extern char8[] QSystemTrayIcon_ToolTip(void* c_this);
	[LinkName("QSystemTrayIcon_SetToolTip")]
	public static extern void QSystemTrayIcon_SetToolTip(void* c_this, char8[] tip);
	[LinkName("QSystemTrayIcon_IsSystemTrayAvailable")]
	public static extern bool QSystemTrayIcon_IsSystemTrayAvailable();
	[LinkName("QSystemTrayIcon_SupportsMessages")]
	public static extern bool QSystemTrayIcon_SupportsMessages();
	[LinkName("QSystemTrayIcon_Geometry")]
	public static extern QRect QSystemTrayIcon_Geometry(void* c_this);
	[LinkName("QSystemTrayIcon_IsVisible")]
	public static extern bool QSystemTrayIcon_IsVisible(void* c_this);
	[LinkName("QSystemTrayIcon_SetVisible")]
	public static extern void QSystemTrayIcon_SetVisible(void* c_this, bool visible);
	[LinkName("QSystemTrayIcon_Show")]
	public static extern void QSystemTrayIcon_Show(void* c_this);
	[LinkName("QSystemTrayIcon_Hide")]
	public static extern void QSystemTrayIcon_Hide(void* c_this);
	[LinkName("QSystemTrayIcon_ShowMessage")]
	public static extern void QSystemTrayIcon_ShowMessage(void* c_this, char8[] title, char8[] msg, QIcon icon);
	[LinkName("QSystemTrayIcon_ShowMessage2")]
	public static extern void QSystemTrayIcon_ShowMessage2(void* c_this, char8[] title, char8[] msg);
	[LinkName("QSystemTrayIcon_Activated")]
	public static extern void QSystemTrayIcon_Activated(void* c_this, int64 reason);
	[LinkName("QSystemTrayIcon_MessageClicked")]
	public static extern void QSystemTrayIcon_MessageClicked(void* c_this);
	[LinkName("QSystemTrayIcon_Event")]
	public static extern bool QSystemTrayIcon_Event(void* c_this, QEvent event);
	[LinkName("QSystemTrayIcon_Tr2")]
	public static extern char8[] QSystemTrayIcon_Tr2(char8[] s, char8[] c);
	[LinkName("QSystemTrayIcon_Tr3")]
	public static extern char8[] QSystemTrayIcon_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSystemTrayIcon_ShowMessage4")]
	public static extern void QSystemTrayIcon_ShowMessage4(void* c_this, char8[] title, char8[] msg, QIcon icon, int32 msecs);
	[LinkName("QSystemTrayIcon_ShowMessage3")]
	public static extern void QSystemTrayIcon_ShowMessage3(void* c_this, char8[] title, char8[] msg, int64 icon);
	[LinkName("QSystemTrayIcon_ShowMessage42")]
	public static extern void QSystemTrayIcon_ShowMessage42(void* c_this, char8[] title, char8[] msg, int64 icon, int32 msecs);
}