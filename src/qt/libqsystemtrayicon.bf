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
public interface IQSystemTrayIcon
{
	void* NativePtr { get; }
}
public struct QSystemTrayIconPtr : IQSystemTrayIcon, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSystemTrayIcon_new());
	}
	
	public void Dispose()
	{
		CQt.QSystemTrayIcon_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSystemTrayIcon_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSystemTrayIcon_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSystemTrayIcon_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSystemTrayIcon_Tr(s);
	}
	
	public void SetContextMenu(IQMenu menu)
	{
		CQt.QSystemTrayIcon_SetContextMenu(this.nativePtr, (menu == default || menu.NativePtr == default) ? default : menu.NativePtr);
	}
	
	public void* ContextMenu()
	{
		return CQt.QSystemTrayIcon_ContextMenu(this.nativePtr);
	}
	
	public void Icon()
	{
		CQt.QSystemTrayIcon_Icon(this.nativePtr);
	}
	
	public void SetIcon(IQIcon icon)
	{
		CQt.QSystemTrayIcon_SetIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QSystemTrayIcon_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String tip)
	{
		CQt.QSystemTrayIcon_SetToolTip(this.nativePtr, libqt_string(tip));
	}
	
	public static bool IsSystemTrayAvailable()
	{
		return CQt.QSystemTrayIcon_IsSystemTrayAvailable();
	}
	
	public static bool SupportsMessages()
	{
		return CQt.QSystemTrayIcon_SupportsMessages();
	}
	
	public void Geometry()
	{
		CQt.QSystemTrayIcon_Geometry(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QSystemTrayIcon_IsVisible(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QSystemTrayIcon_SetVisible(this.nativePtr, visible);
	}
	
	public void Show()
	{
		CQt.QSystemTrayIcon_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QSystemTrayIcon_Hide(this.nativePtr);
	}
	
	public void ShowMessage(String title, String msg, IQIcon icon)
	{
		CQt.QSystemTrayIcon_ShowMessage(this.nativePtr, libqt_string(title), libqt_string(msg), (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
	}
	
	public void ShowMessage2(String title, String msg)
	{
		CQt.QSystemTrayIcon_ShowMessage2(this.nativePtr, libqt_string(title), libqt_string(msg));
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QSystemTrayIcon_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSystemTrayIcon_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSystemTrayIcon_Tr3(s, c, n);
	}
	
	public void ShowMessage4(String title, String msg, IQIcon icon, int32 msecs)
	{
		CQt.QSystemTrayIcon_ShowMessage4(this.nativePtr, libqt_string(title), libqt_string(msg), (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, msecs);
	}
	
	public void ShowMessage3(String title, String msg, int64 icon)
	{
		CQt.QSystemTrayIcon_ShowMessage3(this.nativePtr, libqt_string(title), libqt_string(msg), (int64)icon);
	}
	
	public void ShowMessage42(String title, String msg, int64 icon, int32 msecs)
	{
		CQt.QSystemTrayIcon_ShowMessage42(this.nativePtr, libqt_string(title), libqt_string(msg), (int64)icon, msecs);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QSystemTrayIcon
{
	public QSystemTrayIconPtr handle;
	
	public static implicit operator QSystemTrayIconPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSystemTrayIconPtr.New();
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
		return QSystemTrayIconPtr.Tr(s);
	}
	
	public void SetContextMenu(IQMenu menu)
	{
		this.handle.SetContextMenu(menu);
	}
	
	public void* ContextMenu()
	{
		return this.handle.ContextMenu();
	}
	
	public void Icon()
	{
		this.handle.Icon();
	}
	
	public void SetIcon(IQIcon icon)
	{
		this.handle.SetIcon(icon);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String tip)
	{
		this.handle.SetToolTip(tip);
	}
	
	public static bool IsSystemTrayAvailable()
	{
		return QSystemTrayIconPtr.IsSystemTrayAvailable();
	}
	
	public static bool SupportsMessages()
	{
		return QSystemTrayIconPtr.SupportsMessages();
	}
	
	public void Geometry()
	{
		this.handle.Geometry();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void ShowMessage(String title, String msg, IQIcon icon)
	{
		this.handle.ShowMessage(title, msg, icon);
	}
	
	public void ShowMessage2(String title, String msg)
	{
		this.handle.ShowMessage2(title, msg);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSystemTrayIconPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSystemTrayIconPtr.Tr3(s, c, n);
	}
	
	public void ShowMessage4(String title, String msg, IQIcon icon, int32 msecs)
	{
		this.handle.ShowMessage4(title, msg, icon, msecs);
	}
	
	public void ShowMessage3(String title, String msg, int64 icon)
	{
		this.handle.ShowMessage3(title, msg, icon);
	}
	
	public void ShowMessage42(String title, String msg, int64 icon, int32 msecs)
	{
		this.handle.ShowMessage42(title, msg, icon, msecs);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
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
		QSystemTrayIconPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSystemTrayIconPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSystemTrayIconPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSystemTrayIconPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSystemTrayIcon_new")]
	public static extern void* QSystemTrayIcon_new();
	[LinkName("QSystemTrayIcon_new2")]
	public static extern void* QSystemTrayIcon_new2(void* icon);
	[LinkName("QSystemTrayIcon_new3")]
	public static extern void* QSystemTrayIcon_new3(void* parent);
	[LinkName("QSystemTrayIcon_new4")]
	public static extern void* QSystemTrayIcon_new4(void* icon, void* parent);
	[LinkName("QSystemTrayIcon_MetaObject")]
	public static extern void* QSystemTrayIcon_MetaObject(void* c_this);
	[LinkName("QSystemTrayIcon_Metacast")]
	public static extern void* QSystemTrayIcon_Metacast(void* c_this, char8* param1);
	[LinkName("QSystemTrayIcon_Metacall")]
	public static extern int32 QSystemTrayIcon_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSystemTrayIcon_Tr")]
	public static extern libqt_string QSystemTrayIcon_Tr(char8* s);
	[LinkName("QSystemTrayIcon_SetContextMenu")]
	public static extern void QSystemTrayIcon_SetContextMenu(void* c_this, void* menu);
	[LinkName("QSystemTrayIcon_ContextMenu")]
	public static extern void* QSystemTrayIcon_ContextMenu(void* c_this);
	[LinkName("QSystemTrayIcon_Icon")]
	public static extern void QSystemTrayIcon_Icon(void* c_this);
	[LinkName("QSystemTrayIcon_SetIcon")]
	public static extern void QSystemTrayIcon_SetIcon(void* c_this, void* icon);
	[LinkName("QSystemTrayIcon_ToolTip")]
	public static extern libqt_string QSystemTrayIcon_ToolTip(void* c_this);
	[LinkName("QSystemTrayIcon_SetToolTip")]
	public static extern void QSystemTrayIcon_SetToolTip(void* c_this, libqt_string tip);
	[LinkName("QSystemTrayIcon_IsSystemTrayAvailable")]
	public static extern bool QSystemTrayIcon_IsSystemTrayAvailable();
	[LinkName("QSystemTrayIcon_SupportsMessages")]
	public static extern bool QSystemTrayIcon_SupportsMessages();
	[LinkName("QSystemTrayIcon_Geometry")]
	public static extern void QSystemTrayIcon_Geometry(void* c_this);
	[LinkName("QSystemTrayIcon_IsVisible")]
	public static extern bool QSystemTrayIcon_IsVisible(void* c_this);
	[LinkName("QSystemTrayIcon_SetVisible")]
	public static extern void QSystemTrayIcon_SetVisible(void* c_this, bool visible);
	[LinkName("QSystemTrayIcon_Show")]
	public static extern void QSystemTrayIcon_Show(void* c_this);
	[LinkName("QSystemTrayIcon_Hide")]
	public static extern void QSystemTrayIcon_Hide(void* c_this);
	[LinkName("QSystemTrayIcon_ShowMessage")]
	public static extern void QSystemTrayIcon_ShowMessage(void* c_this, libqt_string title, libqt_string msg, void* icon);
	[LinkName("QSystemTrayIcon_ShowMessage2")]
	public static extern void QSystemTrayIcon_ShowMessage2(void* c_this, libqt_string title, libqt_string msg);
	[LinkName("QSystemTrayIcon_Connect_Activated")]
	public static extern void QSystemTrayIcon_Connect_Activated(void* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Connect_MessageClicked")]
	public static extern void QSystemTrayIcon_Connect_MessageClicked(void* c_this, c_intptr slot);
	[LinkName("QSystemTrayIcon_Event")]
	public static extern bool QSystemTrayIcon_Event(void* c_this, void* event);
	[LinkName("QSystemTrayIcon_Tr2")]
	public static extern libqt_string QSystemTrayIcon_Tr2(char8* s, char8* c);
	[LinkName("QSystemTrayIcon_Tr3")]
	public static extern libqt_string QSystemTrayIcon_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QSystemTrayIcon_ShowMessage4")]
	public static extern void QSystemTrayIcon_ShowMessage4(void* c_this, libqt_string title, libqt_string msg, void* icon, int32 msecs);
	[LinkName("QSystemTrayIcon_ShowMessage3")]
	public static extern void QSystemTrayIcon_ShowMessage3(void* c_this, libqt_string title, libqt_string msg, int64 icon);
	[LinkName("QSystemTrayIcon_ShowMessage42")]
	public static extern void QSystemTrayIcon_ShowMessage42(void* c_this, libqt_string title, libqt_string msg, int64 icon, int32 msecs);
	/// Delete this object from C++ memory
	[LinkName("QSystemTrayIcon_Delete")]
	public static extern void QSystemTrayIcon_Delete(void* self);
}