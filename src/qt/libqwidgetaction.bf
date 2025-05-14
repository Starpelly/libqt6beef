using System;
using System.Interop;
namespace Qt;

public interface IQWidgetAction
{
	void* NativePtr { get; }
}
public struct QWidgetActionPtr : IQWidgetAction, IDisposable, IQAction
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQObject parent)
	{
		return .(CQt.QWidgetAction_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QWidgetAction_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QWidgetAction_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QWidgetAction_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QWidgetAction_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QWidgetAction_Tr(s);
	}
	
	public void SetDefaultWidget(IQWidget w)
	{
		CQt.QWidgetAction_SetDefaultWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void* DefaultWidget()
	{
		return CQt.QWidgetAction_DefaultWidget(this.nativePtr);
	}
	
	public void* RequestWidget(IQWidget parent)
	{
		return CQt.QWidgetAction_RequestWidget(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void ReleaseWidget(IQWidget widget)
	{
		CQt.QWidgetAction_ReleaseWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool Event(IQEvent param1)
	{
		return CQt.QWidgetAction_Event(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool EventFilter(IQObject param1, IQEvent param2)
	{
		return CQt.QWidgetAction_EventFilter(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void* CreateWidget(IQWidget parent)
	{
		return CQt.QWidgetAction_CreateWidget(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void DeleteWidget(IQWidget widget)
	{
		CQt.QWidgetAction_DeleteWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void*[] CreatedWidgets()
	{
		return CQt.QWidgetAction_CreatedWidgets(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QWidgetAction_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QWidgetAction_Tr3(s, c, n);
	}
	
	public void*[] AssociatedObjects()
	{
		return CQt.QAction_AssociatedObjects(this.nativePtr);
	}
	
	public void SetActionGroup(IQActionGroup group)
	{
		CQt.QAction_SetActionGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public void* ActionGroup()
	{
		return CQt.QAction_ActionGroup(this.nativePtr);
	}
	
	public void SetIcon(IQIcon icon)
	{
		CQt.QAction_SetIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
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
		CQt.QAction_SetPriority(this.nativePtr, (int64)priority);
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
		CQt.QAction_SetShortcut(this.nativePtr, (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
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
		CQt.QAction_SetShortcutsWithShortcuts(this.nativePtr, (int64)shortcuts);
	}
	
	public void[] Shortcuts()
	{
		return CQt.QAction_Shortcuts(this.nativePtr);
	}
	
	public void SetShortcutContext(int64 context)
	{
		CQt.QAction_SetShortcutContext(this.nativePtr, (int64)context);
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
		CQt.QAction_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
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
		CQt.QAction_SetData(this.nativePtr, (varVal == default || varVal.NativePtr == default) ? default : varVal.NativePtr);
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
		CQt.QAction_Activate(this.nativePtr, (int64)event);
	}
	
	public void SetMenuRole(int64 menuRole)
	{
		CQt.QAction_SetMenuRole(this.nativePtr, (int64)menuRole);
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
	
	public bool ShowStatusText1(IQObject object)
	{
		return CQt.QAction_ShowStatusText1(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QWidgetAction
{
	public QWidgetActionPtr handle;
	
	public static implicit operator QWidgetActionPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQObject parent)
	{
		this.handle = QWidgetActionPtr.New(parent);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QWidgetActionPtr.Tr(s);
	}
	
	public void SetDefaultWidget(IQWidget w)
	{
		this.handle.SetDefaultWidget(w);
	}
	
	public void* DefaultWidget()
	{
		return this.handle.DefaultWidget();
	}
	
	public void* RequestWidget(IQWidget parent)
	{
		return this.handle.RequestWidget(parent);
	}
	
	public void ReleaseWidget(IQWidget widget)
	{
		this.handle.ReleaseWidget(widget);
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return this.handle.Event(param1);
	}
	
	public virtual bool EventFilter(IQObject param1, IQEvent param2)
	{
		return this.handle.EventFilter(param1, param2);
	}
	
	public virtual void* CreateWidget(IQWidget parent)
	{
		return this.handle.CreateWidget(parent);
	}
	
	public virtual void DeleteWidget(IQWidget widget)
	{
		this.handle.DeleteWidget(widget);
	}
	
	public void*[] CreatedWidgets()
	{
		return this.handle.CreatedWidgets();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QWidgetActionPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QWidgetActionPtr.Tr3(s, c, n);
	}
	
	public void*[] AssociatedObjects()
	{
		return this.handle.AssociatedObjects();
	}
	
	public void SetActionGroup(IQActionGroup group)
	{
		this.handle.SetActionGroup(group);
	}
	
	public void* ActionGroup()
	{
		return this.handle.ActionGroup();
	}
	
	public void SetIcon(IQIcon icon)
	{
		this.handle.SetIcon(icon);
	}
	
	public void Icon()
	{
		this.handle.Icon();
	}
	
	public void SetText(String text)
	{
		this.handle.SetText(text);
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public void SetIconText(String text)
	{
		this.handle.SetIconText(text);
	}
	
	public libqt_string IconText()
	{
		return this.handle.IconText();
	}
	
	public void SetToolTip(String tip)
	{
		this.handle.SetToolTip(tip);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetStatusTip(String statusTip)
	{
		this.handle.SetStatusTip(statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return this.handle.StatusTip();
	}
	
	public void SetWhatsThis(String what)
	{
		this.handle.SetWhatsThis(what);
	}
	
	public libqt_string WhatsThis()
	{
		return this.handle.WhatsThis();
	}
	
	public void SetPriority(int64 priority)
	{
		this.handle.SetPriority(priority);
	}
	
	public int64 Priority()
	{
		return this.handle.Priority();
	}
	
	public void SetSeparator(bool b)
	{
		this.handle.SetSeparator(b);
	}
	
	public bool IsSeparator()
	{
		return this.handle.IsSeparator();
	}
	
	public void SetShortcut(IQKeySequence shortcut)
	{
		this.handle.SetShortcut(shortcut);
	}
	
	public void Shortcut()
	{
		this.handle.Shortcut();
	}
	
	public void SetShortcuts(IQKeySequence[] shortcuts)
	{
		this.handle.SetShortcuts(null);
	}
	
	public void SetShortcutsWithShortcuts(int64 shortcuts)
	{
		this.handle.SetShortcutsWithShortcuts(shortcuts);
	}
	
	public void[] Shortcuts()
	{
		return this.handle.Shortcuts();
	}
	
	public void SetShortcutContext(int64 context)
	{
		this.handle.SetShortcutContext(context);
	}
	
	public int64 ShortcutContext()
	{
		return this.handle.ShortcutContext();
	}
	
	public void SetAutoRepeat(bool autoRepeat)
	{
		this.handle.SetAutoRepeat(autoRepeat);
	}
	
	public bool AutoRepeat()
	{
		return this.handle.AutoRepeat();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void SetCheckable(bool checkable)
	{
		this.handle.SetCheckable(checkable);
	}
	
	public bool IsCheckable()
	{
		return this.handle.IsCheckable();
	}
	
	public void Data()
	{
		this.handle.Data();
	}
	
	public void SetData(IQVariant varVal)
	{
		this.handle.SetData(varVal);
	}
	
	public bool IsChecked()
	{
		return this.handle.IsChecked();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public void Activate(int64 event)
	{
		this.handle.Activate(event);
	}
	
	public void SetMenuRole(int64 menuRole)
	{
		this.handle.SetMenuRole(menuRole);
	}
	
	public int64 MenuRole()
	{
		return this.handle.MenuRole();
	}
	
	public void SetIconVisibleInMenu(bool visible)
	{
		this.handle.SetIconVisibleInMenu(visible);
	}
	
	public bool IsIconVisibleInMenu()
	{
		return this.handle.IsIconVisibleInMenu();
	}
	
	public void SetShortcutVisibleInContextMenu(bool show)
	{
		this.handle.SetShortcutVisibleInContextMenu(show);
	}
	
	public bool IsShortcutVisibleInContextMenu()
	{
		return this.handle.IsShortcutVisibleInContextMenu();
	}
	
	public bool ShowStatusText()
	{
		return this.handle.ShowStatusText();
	}
	
	public void Trigger()
	{
		this.handle.Trigger();
	}
	
	public void Hover()
	{
		this.handle.Hover();
	}
	
	public void SetChecked(bool _checked)
	{
		this.handle.SetChecked(_checked);
	}
	
	public void Toggle()
	{
		this.handle.Toggle();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public void ResetEnabled()
	{
		this.handle.ResetEnabled();
	}
	
	public void SetDisabled(bool b)
	{
		this.handle.SetDisabled(b);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public bool ShowStatusText1(IQObject object)
	{
		return this.handle.ShowStatusText1(object);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QWidgetActionPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QWidgetActionPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QWidgetActionPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QWidgetActionPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QWidgetAction_new")]
	public static extern void* QWidgetAction_new(void* parent);
	[LinkName("QWidgetAction_MetaObject")]
	public static extern void* QWidgetAction_MetaObject(void* c_this);
	[LinkName("QWidgetAction_Metacast")]
	public static extern void* QWidgetAction_Metacast(void* c_this, char8* param1);
	[LinkName("QWidgetAction_Metacall")]
	public static extern int32 QWidgetAction_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QWidgetAction_Tr")]
	public static extern libqt_string QWidgetAction_Tr(char8* s);
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
	public static extern libqt_string QWidgetAction_Tr2(char8* s, char8* c);
	[LinkName("QWidgetAction_Tr3")]
	public static extern libqt_string QWidgetAction_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QWidgetAction_Delete")]
	public static extern void QWidgetAction_Delete(void* self);
}