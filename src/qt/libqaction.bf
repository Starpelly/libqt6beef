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
public struct QAction : QObject
{
	[LinkName("QAction_new")]
	public static extern QAction* QAction_new();
	[LinkName("QAction_new2")]
	public static extern QAction* QAction_new2(libqt_string text);
	[LinkName("QAction_new3")]
	public static extern QAction* QAction_new3(QIcon* icon, libqt_string text);
	[LinkName("QAction_new4")]
	public static extern QAction* QAction_new4(QObject* parent);
	[LinkName("QAction_new5")]
	public static extern QAction* QAction_new5(libqt_string text, QObject* parent);
	[LinkName("QAction_new6")]
	public static extern QAction* QAction_new6(QIcon* icon, libqt_string text, QObject* parent);
	[LinkName("QAction_MetaObject")]
	public static extern QMetaObject* QAction_MetaObject(Self* c_this);
	[LinkName("QAction_Metacast")]
	public static extern void* QAction_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAction_Metacall")]
	public static extern int32 QAction_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAction_Tr")]
	public static extern libqt_string QAction_Tr(char8[] s);
	[LinkName("QAction_AssociatedObjects")]
	public static extern QObject*[] QAction_AssociatedObjects(Self* c_this);
	[LinkName("QAction_SetActionGroup")]
	public static extern void QAction_SetActionGroup(Self* c_this, QActionGroup* group);
	[LinkName("QAction_ActionGroup")]
	public static extern QActionGroup* QAction_ActionGroup(Self* c_this);
	[LinkName("QAction_SetIcon")]
	public static extern void QAction_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QAction_Icon")]
	public static extern QIcon QAction_Icon(Self* c_this);
	[LinkName("QAction_SetText")]
	public static extern void QAction_SetText(Self* c_this, libqt_string text);
	[LinkName("QAction_Text")]
	public static extern libqt_string QAction_Text(Self* c_this);
	[LinkName("QAction_SetIconText")]
	public static extern void QAction_SetIconText(Self* c_this, libqt_string text);
	[LinkName("QAction_IconText")]
	public static extern libqt_string QAction_IconText(Self* c_this);
	[LinkName("QAction_SetToolTip")]
	public static extern void QAction_SetToolTip(Self* c_this, libqt_string tip);
	[LinkName("QAction_ToolTip")]
	public static extern libqt_string QAction_ToolTip(Self* c_this);
	[LinkName("QAction_SetStatusTip")]
	public static extern void QAction_SetStatusTip(Self* c_this, libqt_string statusTip);
	[LinkName("QAction_StatusTip")]
	public static extern libqt_string QAction_StatusTip(Self* c_this);
	[LinkName("QAction_SetWhatsThis")]
	public static extern void QAction_SetWhatsThis(Self* c_this, libqt_string what);
	[LinkName("QAction_WhatsThis")]
	public static extern libqt_string QAction_WhatsThis(Self* c_this);
	[LinkName("QAction_SetPriority")]
	public static extern void QAction_SetPriority(Self* c_this, int64 priority);
	[LinkName("QAction_Priority")]
	public static extern int64 QAction_Priority(Self* c_this);
	[LinkName("QAction_SetSeparator")]
	public static extern void QAction_SetSeparator(Self* c_this, bool b);
	[LinkName("QAction_IsSeparator")]
	public static extern bool QAction_IsSeparator(Self* c_this);
	[LinkName("QAction_SetShortcut")]
	public static extern void QAction_SetShortcut(Self* c_this, QKeySequence* shortcut);
	[LinkName("QAction_Shortcut")]
	public static extern QKeySequence QAction_Shortcut(Self* c_this);
	[LinkName("QAction_SetShortcuts")]
	public static extern void QAction_SetShortcuts(Self* c_this, QKeySequence[] shortcuts);
	[LinkName("QAction_SetShortcutsWithShortcuts")]
	public static extern void QAction_SetShortcutsWithShortcuts(Self* c_this, int64 shortcuts);
	[LinkName("QAction_Shortcuts")]
	public static extern QKeySequence[] QAction_Shortcuts(Self* c_this);
	[LinkName("QAction_SetShortcutContext")]
	public static extern void QAction_SetShortcutContext(Self* c_this, int64 context);
	[LinkName("QAction_ShortcutContext")]
	public static extern int64 QAction_ShortcutContext(Self* c_this);
	[LinkName("QAction_SetAutoRepeat")]
	public static extern void QAction_SetAutoRepeat(Self* c_this, bool autoRepeat);
	[LinkName("QAction_AutoRepeat")]
	public static extern bool QAction_AutoRepeat(Self* c_this);
	[LinkName("QAction_SetFont")]
	public static extern void QAction_SetFont(Self* c_this, QFont* font);
	[LinkName("QAction_Font")]
	public static extern QFont QAction_Font(Self* c_this);
	[LinkName("QAction_SetCheckable")]
	public static extern void QAction_SetCheckable(Self* c_this, bool checkable);
	[LinkName("QAction_IsCheckable")]
	public static extern bool QAction_IsCheckable(Self* c_this);
	[LinkName("QAction_Data")]
	public static extern QVariant QAction_Data(Self* c_this);
	[LinkName("QAction_SetData")]
	public static extern void QAction_SetData(Self* c_this, QVariant* varVal);
	[LinkName("QAction_IsChecked")]
	public static extern bool QAction_IsChecked(Self* c_this);
	[LinkName("QAction_IsEnabled")]
	public static extern bool QAction_IsEnabled(Self* c_this);
	[LinkName("QAction_IsVisible")]
	public static extern bool QAction_IsVisible(Self* c_this);
	[LinkName("QAction_Activate")]
	public static extern void QAction_Activate(Self* c_this, int64 event);
	[LinkName("QAction_SetMenuRole")]
	public static extern void QAction_SetMenuRole(Self* c_this, int64 menuRole);
	[LinkName("QAction_MenuRole")]
	public static extern int64 QAction_MenuRole(Self* c_this);
	[LinkName("QAction_SetIconVisibleInMenu")]
	public static extern void QAction_SetIconVisibleInMenu(Self* c_this, bool visible);
	[LinkName("QAction_IsIconVisibleInMenu")]
	public static extern bool QAction_IsIconVisibleInMenu(Self* c_this);
	[LinkName("QAction_SetShortcutVisibleInContextMenu")]
	public static extern void QAction_SetShortcutVisibleInContextMenu(Self* c_this, bool show);
	[LinkName("QAction_IsShortcutVisibleInContextMenu")]
	public static extern bool QAction_IsShortcutVisibleInContextMenu(Self* c_this);
	[LinkName("QAction_ShowStatusText")]
	public static extern bool QAction_ShowStatusText(Self* c_this);
	[LinkName("QAction_Event")]
	public static extern bool QAction_Event(Self* c_this, QEvent* param1);
	[LinkName("QAction_Trigger")]
	public static extern void QAction_Trigger(Self* c_this);
	[LinkName("QAction_Hover")]
	public static extern void QAction_Hover(Self* c_this);
	[LinkName("QAction_SetChecked")]
	public static extern void QAction_SetChecked(Self* c_this, bool _checked);
	[LinkName("QAction_Toggle")]
	public static extern void QAction_Toggle(Self* c_this);
	[LinkName("QAction_SetEnabled")]
	public static extern void QAction_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QAction_ResetEnabled")]
	public static extern void QAction_ResetEnabled(Self* c_this);
	[LinkName("QAction_SetDisabled")]
	public static extern void QAction_SetDisabled(Self* c_this, bool b);
	[LinkName("QAction_SetVisible")]
	public static extern void QAction_SetVisible(Self* c_this, bool visible);
	[LinkName("QAction_Changed")]
	public static extern void QAction_Changed(Self* c_this);
	[LinkName("QAction_EnabledChanged")]
	public static extern void QAction_EnabledChanged(Self* c_this, bool enabled);
	[LinkName("QAction_CheckableChanged")]
	public static extern void QAction_CheckableChanged(Self* c_this, bool checkable);
	[LinkName("QAction_VisibleChanged")]
	public static extern void QAction_VisibleChanged(Self* c_this);
	[LinkName("QAction_Triggered")]
	public static extern void QAction_Triggered(Self* c_this);
	[LinkName("QAction_Hovered")]
	public static extern void QAction_Hovered(Self* c_this);
	[LinkName("QAction_Toggled")]
	public static extern void QAction_Toggled(Self* c_this, bool param1);
	[LinkName("QAction_Tr2")]
	public static extern libqt_string QAction_Tr2(char8[] s, char8[] c);
	[LinkName("QAction_Tr3")]
	public static extern libqt_string QAction_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAction_ShowStatusText1")]
	public static extern bool QAction_ShowStatusText1(Self* c_this, QObject* object);
	[LinkName("QAction_Triggered1")]
	public static extern void QAction_Triggered1(Self* c_this, bool _checked);
}