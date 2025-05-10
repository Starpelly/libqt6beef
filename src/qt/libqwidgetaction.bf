using System;
using System.Interop;
namespace Qt;

public class QWidgetAction
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QWidgetAction_new(parent);
	}
	
	public ~this()
	{
		CQt.QWidgetAction_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QWidgetAction_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QWidgetAction_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QWidgetAction_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QWidgetAction_Tr(s);
	}
	
	public void SetDefaultWidget(void* w)
	{
		CQt.QWidgetAction_SetDefaultWidget(this.nativePtr, w);
	}
	
	public void* DefaultWidget()
	{
		return CQt.QWidgetAction_DefaultWidget(this.nativePtr);
	}
	
	public void* RequestWidget(void* parent)
	{
		return CQt.QWidgetAction_RequestWidget(this.nativePtr, parent);
	}
	
	public void ReleaseWidget(void* widget)
	{
		CQt.QWidgetAction_ReleaseWidget(this.nativePtr, widget);
	}
	
	public virtual bool Event(void* param1)
	{
		return CQt.QWidgetAction_Event(this.nativePtr, param1);
	}
	
	public virtual bool EventFilter(void* param1, void* param2)
	{
		return CQt.QWidgetAction_EventFilter(this.nativePtr, param1, param2);
	}
	
	public virtual void* CreateWidget(void* parent)
	{
		return CQt.QWidgetAction_CreateWidget(this.nativePtr, parent);
	}
	
	public virtual void DeleteWidget(void* widget)
	{
		CQt.QWidgetAction_DeleteWidget(this.nativePtr, widget);
	}
	
	public void*[] CreatedWidgets()
	{
		return CQt.QWidgetAction_CreatedWidgets(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QWidgetAction_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QWidgetAction_Tr3(s, c, n);
	}
	
	public void*[] AssociatedObjects()
	{
		return CQt.QAction_AssociatedObjects(this.nativePtr);
	}
	
	public void SetActionGroup(void* group)
	{
		CQt.QAction_SetActionGroup(this.nativePtr, group);
	}
	
	public void* ActionGroup()
	{
		return CQt.QAction_ActionGroup(this.nativePtr);
	}
	
	public void SetIcon(void* icon)
	{
		CQt.QAction_SetIcon(this.nativePtr, icon);
	}
	
	public void Icon()
	{
		CQt.QAction_Icon(this.nativePtr);
	}
	
	public void SetText(libqt_string text)
	{
		CQt.QAction_SetText(this.nativePtr, text);
	}
	
	public libqt_string Text()
	{
		return CQt.QAction_Text(this.nativePtr);
	}
	
	public void SetIconText(libqt_string text)
	{
		CQt.QAction_SetIconText(this.nativePtr, text);
	}
	
	public libqt_string IconText()
	{
		return CQt.QAction_IconText(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string tip)
	{
		CQt.QAction_SetToolTip(this.nativePtr, tip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QAction_ToolTip(this.nativePtr);
	}
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QAction_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QAction_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string what)
	{
		CQt.QAction_SetWhatsThis(this.nativePtr, what);
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
	
	public void SetShortcut(void* shortcut)
	{
		CQt.QAction_SetShortcut(this.nativePtr, shortcut);
	}
	
	public void Shortcut()
	{
		CQt.QAction_Shortcut(this.nativePtr);
	}
	
	public void SetShortcuts(void[] shortcuts)
	{
		CQt.QAction_SetShortcuts(this.nativePtr, shortcuts);
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
	
	public void SetFont(void* font)
	{
		CQt.QAction_SetFont(this.nativePtr, font);
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
	
	public void SetData(void* varVal)
	{
		CQt.QAction_SetData(this.nativePtr, varVal);
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
	
	public bool ShowStatusText1(void* object)
	{
		return CQt.QAction_ShowStatusText1(this.nativePtr, object);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QWidgetAction_new")]
	public static extern void* QWidgetAction_new(void* parent);
	[LinkName("QWidgetAction_MetaObject")]
	public static extern void* QWidgetAction_MetaObject(void* c_this);
	[LinkName("QWidgetAction_Metacast")]
	public static extern void* QWidgetAction_Metacast(void* c_this, char8[] param1);
	[LinkName("QWidgetAction_Metacall")]
	public static extern int32 QWidgetAction_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QWidgetAction_Tr")]
	public static extern libqt_string QWidgetAction_Tr(char8[] s);
	[LinkName("QWidgetAction_SetDefaultWidget")]
	public static extern void QWidgetAction_SetDefaultWidget(void* c_this, void* w);
	[LinkName("QWidgetAction_DefaultWidget")]
	public static extern void* QWidgetAction_DefaultWidget(void* c_this);
	[LinkName("QWidgetAction_RequestWidget")]
	public static extern void* QWidgetAction_RequestWidget(void* c_this, void* parent);
	[LinkName("QWidgetAction_ReleaseWidget")]
	public static extern void QWidgetAction_ReleaseWidget(void* c_this, void* widget);
	[LinkName("QWidgetAction_Event")]
	public static extern bool QWidgetAction_Event(void* c_this, void* param1);
	[LinkName("QWidgetAction_EventFilter")]
	public static extern bool QWidgetAction_EventFilter(void* c_this, void* param1, void* param2);
	[LinkName("QWidgetAction_CreateWidget")]
	public static extern void* QWidgetAction_CreateWidget(void* c_this, void* parent);
	[LinkName("QWidgetAction_DeleteWidget")]
	public static extern void QWidgetAction_DeleteWidget(void* c_this, void* widget);
	[LinkName("QWidgetAction_CreatedWidgets")]
	public static extern void*[] QWidgetAction_CreatedWidgets(void* c_this);
	[LinkName("QWidgetAction_Tr2")]
	public static extern libqt_string QWidgetAction_Tr2(char8[] s, char8[] c);
	[LinkName("QWidgetAction_Tr3")]
	public static extern libqt_string QWidgetAction_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QWidgetAction_Delete")]
	public static extern void QWidgetAction_Delete(void* self);
}