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
public interface IQAction
{
	void* NativePtr { get; }
}
public class QAction : IQAction, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAction_new();
	}
	
	public ~this()
	{
		CQt.QAction_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAction_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QAction_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAction_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAction_Tr(s);
	}
	
	public void*[] AssociatedObjects()
	{
		return CQt.QAction_AssociatedObjects(this.nativePtr);
	}
	
	public void SetActionGroup(IQActionGroup group)
	{
		CQt.QAction_SetActionGroup(this.nativePtr, (group == null) ? null : (void*)group.NativePtr);
	}
	
	public void* ActionGroup()
	{
		return CQt.QAction_ActionGroup(this.nativePtr);
	}
	
	public void SetIcon(IQIcon icon)
	{
		CQt.QAction_SetIcon(this.nativePtr, (icon == default) ? default : (void*)icon.NativePtr);
	}
	
	public void Icon()
	{
		CQt.QAction_Icon(this.nativePtr);
	}
	
	public void SetText(String text)
	{
		CQt.QAction_SetText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string Text()
	{
		return CQt.QAction_Text(this.nativePtr);
	}
	
	public void SetIconText(String text)
	{
		CQt.QAction_SetIconText(this.nativePtr, libqt_string(text));
	}
	
	public libqt_string IconText()
	{
		return CQt.QAction_IconText(this.nativePtr);
	}
	
	public void SetToolTip(String tip)
	{
		CQt.QAction_SetToolTip(this.nativePtr, libqt_string(tip));
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QAction_ToolTip(this.nativePtr);
	}
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QAction_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QAction_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String what)
	{
		CQt.QAction_SetWhatsThis(this.nativePtr, libqt_string(what));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QAction_WhatsThis(this.nativePtr);
	}
	
	public void SetPriority(int64 priority)
	{
		CQt.QAction_SetPriority(this.nativePtr, priority);
	}
	
	public int64 Priority()
	{
		return CQt.QAction_Priority(this.nativePtr);
	}
	
	public void SetSeparator(bool b)
	{
		CQt.QAction_SetSeparator(this.nativePtr, b);
	}
	
	public bool IsSeparator()
	{
		return CQt.QAction_IsSeparator(this.nativePtr);
	}
	
	public void SetShortcut(IQKeySequence shortcut)
	{
		CQt.QAction_SetShortcut(this.nativePtr, (shortcut == default) ? default : (void*)shortcut.NativePtr);
	}
	
	public void Shortcut()
	{
		CQt.QAction_Shortcut(this.nativePtr);
	}
	
	public void SetShortcuts(IQKeySequence[] shortcuts)
	{
		CQt.QAction_SetShortcuts(this.nativePtr, null);
	}
	
	public void SetShortcutsWithShortcuts(int64 shortcuts)
	{
		CQt.QAction_SetShortcutsWithShortcuts(this.nativePtr, shortcuts);
	}
	
	public void[] Shortcuts()
	{
		return CQt.QAction_Shortcuts(this.nativePtr);
	}
	
	public void SetShortcutContext(int64 context)
	{
		CQt.QAction_SetShortcutContext(this.nativePtr, context);
	}
	
	public int64 ShortcutContext()
	{
		return CQt.QAction_ShortcutContext(this.nativePtr);
	}
	
	public void SetAutoRepeat(bool autoRepeat)
	{
		CQt.QAction_SetAutoRepeat(this.nativePtr, autoRepeat);
	}
	
	public bool AutoRepeat()
	{
		return CQt.QAction_AutoRepeat(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QAction_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void Font()
	{
		CQt.QAction_Font(this.nativePtr);
	}
	
	public void SetCheckable(bool checkable)
	{
		CQt.QAction_SetCheckable(this.nativePtr, checkable);
	}
	
	public bool IsCheckable()
	{
		return CQt.QAction_IsCheckable(this.nativePtr);
	}
	
	public void Data()
	{
		CQt.QAction_Data(this.nativePtr);
	}
	
	public void SetData(IQVariant varVal)
	{
		CQt.QAction_SetData(this.nativePtr, (varVal == default) ? default : (void*)varVal.NativePtr);
	}
	
	public bool IsChecked()
	{
		return CQt.QAction_IsChecked(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QAction_IsEnabled(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QAction_IsVisible(this.nativePtr);
	}
	
	public void Activate(int64 event)
	{
		CQt.QAction_Activate(this.nativePtr, event);
	}
	
	public void SetMenuRole(int64 menuRole)
	{
		CQt.QAction_SetMenuRole(this.nativePtr, menuRole);
	}
	
	public int64 MenuRole()
	{
		return CQt.QAction_MenuRole(this.nativePtr);
	}
	
	public void SetIconVisibleInMenu(bool visible)
	{
		CQt.QAction_SetIconVisibleInMenu(this.nativePtr, visible);
	}
	
	public bool IsIconVisibleInMenu()
	{
		return CQt.QAction_IsIconVisibleInMenu(this.nativePtr);
	}
	
	public void SetShortcutVisibleInContextMenu(bool show)
	{
		CQt.QAction_SetShortcutVisibleInContextMenu(this.nativePtr, show);
	}
	
	public bool IsShortcutVisibleInContextMenu()
	{
		return CQt.QAction_IsShortcutVisibleInContextMenu(this.nativePtr);
	}
	
	public bool ShowStatusText()
	{
		return CQt.QAction_ShowStatusText(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return CQt.QAction_Event(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Trigger()
	{
		CQt.QAction_Trigger(this.nativePtr);
	}
	
	public void Hover()
	{
		CQt.QAction_Hover(this.nativePtr);
	}
	
	public void SetChecked(bool _checked)
	{
		CQt.QAction_SetChecked(this.nativePtr, _checked);
	}
	
	public void Toggle()
	{
		CQt.QAction_Toggle(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QAction_SetEnabled(this.nativePtr, enabled);
	}
	
	public void ResetEnabled()
	{
		CQt.QAction_ResetEnabled(this.nativePtr);
	}
	
	public void SetDisabled(bool b)
	{
		CQt.QAction_SetDisabled(this.nativePtr, b);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QAction_SetVisible(this.nativePtr, visible);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAction_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAction_Tr3(s, c, n);
	}
	
	public bool ShowStatusText1(IQObject object)
	{
		return CQt.QAction_ShowStatusText1(this.nativePtr, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAction_new")]
	public static extern void* QAction_new();
	[LinkName("QAction_new2")]
	public static extern void* QAction_new2(libqt_string text);
	[LinkName("QAction_new3")]
	public static extern void* QAction_new3(void* icon, libqt_string text);
	[LinkName("QAction_new4")]
	public static extern void* QAction_new4(void* parent);
	[LinkName("QAction_new5")]
	public static extern void* QAction_new5(libqt_string text, void* parent);
	[LinkName("QAction_new6")]
	public static extern void* QAction_new6(void* icon, libqt_string text, void* parent);
	[LinkName("QAction_MetaObject")]
	public static extern void* QAction_MetaObject(void* c_this);
	[LinkName("QAction_Metacast")]
	public static extern void* QAction_Metacast(void* c_this, char8* param1);
	[LinkName("QAction_Metacall")]
	public static extern int32 QAction_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAction_Tr")]
	public static extern libqt_string QAction_Tr(char8* s);
	[LinkName("QAction_AssociatedObjects")]
	public static extern void*[] QAction_AssociatedObjects(void* c_this);
	[LinkName("QAction_SetActionGroup")]
	public static extern void QAction_SetActionGroup(void* c_this, void* group);
	[LinkName("QAction_ActionGroup")]
	public static extern void* QAction_ActionGroup(void* c_this);
	[LinkName("QAction_SetIcon")]
	public static extern void QAction_SetIcon(void* c_this, void* icon);
	[LinkName("QAction_Icon")]
	public static extern void QAction_Icon(void* c_this);
	[LinkName("QAction_SetText")]
	public static extern void QAction_SetText(void* c_this, libqt_string text);
	[LinkName("QAction_Text")]
	public static extern libqt_string QAction_Text(void* c_this);
	[LinkName("QAction_SetIconText")]
	public static extern void QAction_SetIconText(void* c_this, libqt_string text);
	[LinkName("QAction_IconText")]
	public static extern libqt_string QAction_IconText(void* c_this);
	[LinkName("QAction_SetToolTip")]
	public static extern void QAction_SetToolTip(void* c_this, libqt_string tip);
	[LinkName("QAction_ToolTip")]
	public static extern libqt_string QAction_ToolTip(void* c_this);
	[LinkName("QAction_SetStatusTip")]
	public static extern void QAction_SetStatusTip(void* c_this, libqt_string statusTip);
	[LinkName("QAction_StatusTip")]
	public static extern libqt_string QAction_StatusTip(void* c_this);
	[LinkName("QAction_SetWhatsThis")]
	public static extern void QAction_SetWhatsThis(void* c_this, libqt_string what);
	[LinkName("QAction_WhatsThis")]
	public static extern libqt_string QAction_WhatsThis(void* c_this);
	[LinkName("QAction_SetPriority")]
	public static extern void QAction_SetPriority(void* c_this, int64 priority);
	[LinkName("QAction_Priority")]
	public static extern int64 QAction_Priority(void* c_this);
	[LinkName("QAction_SetSeparator")]
	public static extern void QAction_SetSeparator(void* c_this, bool b);
	[LinkName("QAction_IsSeparator")]
	public static extern bool QAction_IsSeparator(void* c_this);
	[LinkName("QAction_SetShortcut")]
	public static extern void QAction_SetShortcut(void* c_this, void* shortcut);
	[LinkName("QAction_Shortcut")]
	public static extern void QAction_Shortcut(void* c_this);
	[LinkName("QAction_SetShortcuts")]
	public static extern void QAction_SetShortcuts(void* c_this, void[] shortcuts);
	[LinkName("QAction_SetShortcutsWithShortcuts")]
	public static extern void QAction_SetShortcutsWithShortcuts(void* c_this, int64 shortcuts);
	[LinkName("QAction_Shortcuts")]
	public static extern void[] QAction_Shortcuts(void* c_this);
	[LinkName("QAction_SetShortcutContext")]
	public static extern void QAction_SetShortcutContext(void* c_this, int64 context);
	[LinkName("QAction_ShortcutContext")]
	public static extern int64 QAction_ShortcutContext(void* c_this);
	[LinkName("QAction_SetAutoRepeat")]
	public static extern void QAction_SetAutoRepeat(void* c_this, bool autoRepeat);
	[LinkName("QAction_AutoRepeat")]
	public static extern bool QAction_AutoRepeat(void* c_this);
	[LinkName("QAction_SetFont")]
	public static extern void QAction_SetFont(void* c_this, void* font);
	[LinkName("QAction_Font")]
	public static extern void QAction_Font(void* c_this);
	[LinkName("QAction_SetCheckable")]
	public static extern void QAction_SetCheckable(void* c_this, bool checkable);
	[LinkName("QAction_IsCheckable")]
	public static extern bool QAction_IsCheckable(void* c_this);
	[LinkName("QAction_Data")]
	public static extern void QAction_Data(void* c_this);
	[LinkName("QAction_SetData")]
	public static extern void QAction_SetData(void* c_this, void* varVal);
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
	public static extern bool QAction_Event(void* c_this, void* param1);
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
	[LinkName("QAction_Connect_Changed")]
	public static extern void QAction_Connect_Changed(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_EnabledChanged")]
	public static extern void QAction_Connect_EnabledChanged(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_CheckableChanged")]
	public static extern void QAction_Connect_CheckableChanged(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_VisibleChanged")]
	public static extern void QAction_Connect_VisibleChanged(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_Triggered")]
	public static extern void QAction_Connect_Triggered(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_Hovered")]
	public static extern void QAction_Connect_Hovered(void* c_this, c_intptr slot);
	[LinkName("QAction_Connect_Toggled")]
	public static extern void QAction_Connect_Toggled(void* c_this, c_intptr slot);
	[LinkName("QAction_Tr2")]
	public static extern libqt_string QAction_Tr2(char8* s, char8* c);
	[LinkName("QAction_Tr3")]
	public static extern libqt_string QAction_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QAction_ShowStatusText1")]
	public static extern bool QAction_ShowStatusText1(void* c_this, void* object);
	[LinkName("QAction_Connect_Triggered1")]
	public static extern void QAction_Connect_Triggered1(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QAction_Delete")]
	public static extern void QAction_Delete(void* self);
}