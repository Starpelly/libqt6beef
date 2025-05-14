using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QActionGroup__ExclusionPolicy
{
	None = 0,
	Exclusive = 1,
	ExclusiveOptional = 2,
}
public interface IQActionGroup
{
	void* NativePtr { get; }
}
public struct QActionGroupPtr : IQActionGroup, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQObject parent)
	{
		return .(CQt.QActionGroup_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QActionGroup_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QActionGroup_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QActionGroup_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QActionGroup_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QActionGroup_Tr(s);
	}
	
	public void* AddAction(IQAction a)
	{
		return CQt.QActionGroup_AddAction(this.nativePtr, (a == default || a.NativePtr == default) ? default : a.NativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QActionGroup_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QActionGroup_AddAction2(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text));
	}
	
	public void RemoveAction(IQAction a)
	{
		CQt.QActionGroup_RemoveAction(this.nativePtr, (a == default || a.NativePtr == default) ? default : a.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QActionGroup_Actions(this.nativePtr);
	}
	
	public void* CheckedAction()
	{
		return CQt.QActionGroup_CheckedAction(this.nativePtr);
	}
	
	public bool IsExclusive()
	{
		return CQt.QActionGroup_IsExclusive(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QActionGroup_IsEnabled(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QActionGroup_IsVisible(this.nativePtr);
	}
	
	public int64 ExclusionPolicy()
	{
		return CQt.QActionGroup_ExclusionPolicy(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QActionGroup_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool b)
	{
		CQt.QActionGroup_SetDisabled(this.nativePtr, b);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QActionGroup_SetVisible(this.nativePtr, visible);
	}
	
	public void SetExclusive(bool exclusive)
	{
		CQt.QActionGroup_SetExclusive(this.nativePtr, exclusive);
	}
	
	public void SetExclusionPolicy(int64 policy)
	{
		CQt.QActionGroup_SetExclusionPolicy(this.nativePtr, (int64)policy);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QActionGroup_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QActionGroup_Tr3(s, c, n);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QActionGroup
{
	public QActionGroupPtr handle;
	
	public static implicit operator QActionGroupPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQObject parent)
	{
		this.handle = QActionGroupPtr.New(parent);
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
		return QActionGroupPtr.Tr(s);
	}
	
	public void* AddAction(IQAction a)
	{
		return this.handle.AddAction(a);
	}
	
	public void* AddActionWithText(String text)
	{
		return this.handle.AddActionWithText(text);
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return this.handle.AddAction2(icon, text);
	}
	
	public void RemoveAction(IQAction a)
	{
		this.handle.RemoveAction(a);
	}
	
	public void*[] Actions()
	{
		return this.handle.Actions();
	}
	
	public void* CheckedAction()
	{
		return this.handle.CheckedAction();
	}
	
	public bool IsExclusive()
	{
		return this.handle.IsExclusive();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public int64 ExclusionPolicy()
	{
		return this.handle.ExclusionPolicy();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public void SetDisabled(bool b)
	{
		this.handle.SetDisabled(b);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void SetExclusive(bool exclusive)
	{
		this.handle.SetExclusive(exclusive);
	}
	
	public void SetExclusionPolicy(int64 policy)
	{
		this.handle.SetExclusionPolicy(policy);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QActionGroupPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QActionGroupPtr.Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QActionGroupPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QActionGroupPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QActionGroupPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QActionGroupPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QActionGroup_new")]
	public static extern void* QActionGroup_new(void* parent);
	[LinkName("QActionGroup_MetaObject")]
	public static extern void* QActionGroup_MetaObject(void* c_this);
	[LinkName("QActionGroup_Metacast")]
	public static extern void* QActionGroup_Metacast(void* c_this, char8* param1);
	[LinkName("QActionGroup_Metacall")]
	public static extern int32 QActionGroup_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QActionGroup_Tr")]
	public static extern libqt_string QActionGroup_Tr(char8* s);
	[LinkName("QActionGroup_AddAction")]
	public static extern void* QActionGroup_AddAction(void* c_this, void* a);
	[LinkName("QActionGroup_AddActionWithText")]
	public static extern void* QActionGroup_AddActionWithText(void* c_this, libqt_string text);
	[LinkName("QActionGroup_AddAction2")]
	public static extern void* QActionGroup_AddAction2(void* c_this, void* icon, libqt_string text);
	[LinkName("QActionGroup_RemoveAction")]
	public static extern void QActionGroup_RemoveAction(void* c_this, void* a);
	[LinkName("QActionGroup_Actions")]
	public static extern void*[] QActionGroup_Actions(void* c_this);
	[LinkName("QActionGroup_CheckedAction")]
	public static extern void* QActionGroup_CheckedAction(void* c_this);
	[LinkName("QActionGroup_IsExclusive")]
	public static extern bool QActionGroup_IsExclusive(void* c_this);
	[LinkName("QActionGroup_IsEnabled")]
	public static extern bool QActionGroup_IsEnabled(void* c_this);
	[LinkName("QActionGroup_IsVisible")]
	public static extern bool QActionGroup_IsVisible(void* c_this);
	[LinkName("QActionGroup_ExclusionPolicy")]
	public static extern int64 QActionGroup_ExclusionPolicy(void* c_this);
	[LinkName("QActionGroup_SetEnabled")]
	public static extern void QActionGroup_SetEnabled(void* c_this, bool enabled);
	[LinkName("QActionGroup_SetDisabled")]
	public static extern void QActionGroup_SetDisabled(void* c_this, bool b);
	[LinkName("QActionGroup_SetVisible")]
	public static extern void QActionGroup_SetVisible(void* c_this, bool visible);
	[LinkName("QActionGroup_SetExclusive")]
	public static extern void QActionGroup_SetExclusive(void* c_this, bool exclusive);
	[LinkName("QActionGroup_SetExclusionPolicy")]
	public static extern void QActionGroup_SetExclusionPolicy(void* c_this, int64 policy);
	[LinkName("QActionGroup_Connect_Triggered")]
	public static extern void QActionGroup_Connect_Triggered(void* c_this, c_intptr slot);
	[LinkName("QActionGroup_Connect_Hovered")]
	public static extern void QActionGroup_Connect_Hovered(void* c_this, c_intptr slot);
	[LinkName("QActionGroup_Tr2")]
	public static extern libqt_string QActionGroup_Tr2(char8* s, char8* c);
	[LinkName("QActionGroup_Tr3")]
	public static extern libqt_string QActionGroup_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QActionGroup_Delete")]
	public static extern void QActionGroup_Delete(void* self);
}