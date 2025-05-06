using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAction__MenuRole
{
	NoRole = 0,
	TextHeuristicRole = 1,
	ApplicationSpecificRole = 2,
	AboutQtRole = 3,
	AboutRole = 4,
	PreferencesRole = 5,
	QuitRole = 6,
}
[AllowDuplicates]
public enum QAction__Priority
{
	LowPriority = 0,
	NormalPriority = 128,
	HighPriority = 256,
}
[AllowDuplicates]
public enum QAction__ActionEvent
{
	Trigger = 0,
	Hover = 1,
}
public struct QAction
{
	[LinkName("QAction_new")]
	public static extern void* QAction_new();
	[LinkName("QAction_new2")]
	public static extern void* QAction_new2(char8[] text);
	[LinkName("QAction_new3")]
	public static extern void* QAction_new3(QIcon icon, char8[] text);
	[LinkName("QAction_new4")]
	public static extern void* QAction_new4(QObject parent);
	[LinkName("QAction_new5")]
	public static extern void* QAction_new5(char8[] text, QObject parent);
	[LinkName("QAction_new6")]
	public static extern void* QAction_new6(QIcon icon, char8[] text, QObject parent);
	[LinkName("QAction_MetaObject")]
	public static extern QMetaObject QAction_MetaObject(void* c_this);
	[LinkName("QAction_Metacast")]
	public static extern void QAction_Metacast(void* c_this, char8[] param1);
	[LinkName("QAction_Metacall")]
	public static extern int32 QAction_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAction_Tr")]
	public static extern char8[] QAction_Tr(char8[] s);
	[LinkName("QAction_AssociatedObjects")]
	public static extern QObject[] QAction_AssociatedObjects(void* c_this);
	[LinkName("QAction_SetActionGroup")]
	public static extern void QAction_SetActionGroup(void* c_this, QActionGroup group);
	[LinkName("QAction_ActionGroup")]
	public static extern QActionGroup QAction_ActionGroup(void* c_this);
	[LinkName("QAction_SetIcon")]
	public static extern void QAction_SetIcon(void* c_this, QIcon icon);
	[LinkName("QAction_Icon")]
	public static extern QIcon QAction_Icon(void* c_this);
	[LinkName("QAction_SetText")]
	public static extern void QAction_SetText(void* c_this, char8[] text);
	[LinkName("QAction_Text")]
	public static extern char8[] QAction_Text(void* c_this);
	[LinkName("QAction_SetIconText")]
	public static extern void QAction_SetIconText(void* c_this, char8[] text);
	[LinkName("QAction_IconText")]
	public static extern char8[] QAction_IconText(void* c_this);
	[LinkName("QAction_SetToolTip")]
	public static extern void QAction_SetToolTip(void* c_this, char8[] tip);
	[LinkName("QAction_ToolTip")]
	public static extern char8[] QAction_ToolTip(void* c_this);
	[LinkName("QAction_SetStatusTip")]
	public static extern void QAction_SetStatusTip(void* c_this, char8[] statusTip);
	[LinkName("QAction_StatusTip")]
	public static extern char8[] QAction_StatusTip(void* c_this);
	[LinkName("QAction_SetWhatsThis")]
	public static extern void QAction_SetWhatsThis(void* c_this, char8[] what);
	[LinkName("QAction_WhatsThis")]
	public static extern char8[] QAction_WhatsThis(void* c_this);
	[LinkName("QAction_SetPriority")]
	public static extern void QAction_SetPriority(void* c_this, int64 priority);
	[LinkName("QAction_Priority")]
	public static extern int64 QAction_Priority(void* c_this);
	[LinkName("QAction_SetSeparator")]
	public static extern void QAction_SetSeparator(void* c_this, bool b);
	[LinkName("QAction_IsSeparator")]
	public static extern bool QAction_IsSeparator(void* c_this);
	[LinkName("QAction_SetShortcut")]
	public static extern void QAction_SetShortcut(void* c_this, QKeySequence shortcut);
	[LinkName("QAction_Shortcut")]
	public static extern QKeySequence QAction_Shortcut(void* c_this);
	[LinkName("QAction_SetShortcuts")]
	public static extern void QAction_SetShortcuts(void* c_this, QKeySequence[] shortcuts);
	[LinkName("QAction_SetShortcutsWithShortcuts")]
	public static extern void QAction_SetShortcutsWithShortcuts(void* c_this, int64 shortcuts);
	[LinkName("QAction_Shortcuts")]
	public static extern QKeySequence[] QAction_Shortcuts(void* c_this);
	[LinkName("QAction_SetShortcutContext")]
	public static extern void QAction_SetShortcutContext(void* c_this, int64 context);
	[LinkName("QAction_ShortcutContext")]
	public static extern int64 QAction_ShortcutContext(void* c_this);
	[LinkName("QAction_SetAutoRepeat")]
	public static extern void QAction_SetAutoRepeat(void* c_this, bool autoRepeat);
	[LinkName("QAction_AutoRepeat")]
	public static extern bool QAction_AutoRepeat(void* c_this);
	[LinkName("QAction_SetFont")]
	public static extern void QAction_SetFont(void* c_this, QFont font);
	[LinkName("QAction_Font")]
	public static extern QFont QAction_Font(void* c_this);
	[LinkName("QAction_SetCheckable")]
	public static extern void QAction_SetCheckable(void* c_this, bool checkable);
	[LinkName("QAction_IsCheckable")]
	public static extern bool QAction_IsCheckable(void* c_this);
	[LinkName("QAction_Data")]
	public static extern QVariant QAction_Data(void* c_this);
	[LinkName("QAction_SetData")]
	public static extern void QAction_SetData(void* c_this, QVariant varVal);
	[LinkName("QAction_IsChecked")]
	public static extern bool QAction_IsChecked(void* c_this);
	[LinkName("QAction_IsEnabled")]
	public static extern bool QAction_IsEnabled(void* c_this);
	[LinkName("QAction_IsVisible")]
	public static extern bool QAction_IsVisible(void* c_this);
	[LinkName("QAction_Activate")]
	public static extern void QAction_Activate(void* c_this, int64 event);
	[LinkName("QAction_SetMenuRole")]
	public static extern void QAction_SetMenuRole(void* c_this, int64 menuRole);
	[LinkName("QAction_MenuRole")]
	public static extern int64 QAction_MenuRole(void* c_this);
	[LinkName("QAction_SetIconVisibleInMenu")]
	public static extern void QAction_SetIconVisibleInMenu(void* c_this, bool visible);
	[LinkName("QAction_IsIconVisibleInMenu")]
	public static extern bool QAction_IsIconVisibleInMenu(void* c_this);
	[LinkName("QAction_SetShortcutVisibleInContextMenu")]
	public static extern void QAction_SetShortcutVisibleInContextMenu(void* c_this, bool show);
	[LinkName("QAction_IsShortcutVisibleInContextMenu")]
	public static extern bool QAction_IsShortcutVisibleInContextMenu(void* c_this);
	[LinkName("QAction_ShowStatusText")]
	public static extern bool QAction_ShowStatusText(void* c_this);
	[LinkName("QAction_Event")]
	public static extern bool QAction_Event(void* c_this, QEvent param1);
	[LinkName("QAction_Trigger")]
	public static extern void QAction_Trigger(void* c_this);
	[LinkName("QAction_Hover")]
	public static extern void QAction_Hover(void* c_this);
	[LinkName("QAction_SetChecked")]
	public static extern void QAction_SetChecked(void* c_this, bool _checked);
	[LinkName("QAction_Toggle")]
	public static extern void QAction_Toggle(void* c_this);
	[LinkName("QAction_SetEnabled")]
	public static extern void QAction_SetEnabled(void* c_this, bool enabled);
	[LinkName("QAction_ResetEnabled")]
	public static extern void QAction_ResetEnabled(void* c_this);
	[LinkName("QAction_SetDisabled")]
	public static extern void QAction_SetDisabled(void* c_this, bool b);
	[LinkName("QAction_SetVisible")]
	public static extern void QAction_SetVisible(void* c_this, bool visible);
	[LinkName("QAction_Changed")]
	public static extern void QAction_Changed(void* c_this);
	[LinkName("QAction_EnabledChanged")]
	public static extern void QAction_EnabledChanged(void* c_this, bool enabled);
	[LinkName("QAction_CheckableChanged")]
	public static extern void QAction_CheckableChanged(void* c_this, bool checkable);
	[LinkName("QAction_VisibleChanged")]
	public static extern void QAction_VisibleChanged(void* c_this);
	[LinkName("QAction_Triggered")]
	public static extern void QAction_Triggered(void* c_this);
	[LinkName("QAction_Hovered")]
	public static extern void QAction_Hovered(void* c_this);
	[LinkName("QAction_Toggled")]
	public static extern void QAction_Toggled(void* c_this, bool param1);
	[LinkName("QAction_Tr2")]
	public static extern char8[] QAction_Tr2(char8[] s, char8[] c);
	[LinkName("QAction_Tr3")]
	public static extern char8[] QAction_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAction_ShowStatusText1")]
	public static extern bool QAction_ShowStatusText1(void* c_this, QObject object);
	[LinkName("QAction_Triggered1")]
	public static extern void QAction_Triggered1(void* c_this, bool _checked);
}